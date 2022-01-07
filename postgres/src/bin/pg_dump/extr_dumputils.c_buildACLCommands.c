
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ len; char const* data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int Assert (int) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char const*,...) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 char* fmtId (char const*) ;
 int free (char**) ;
 int parseAclItem (char*,char const*,char const*,char const*,int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int parsePGArray (char const*,char***,int*) ;
 int printfPQExpBuffer (TYPE_1__*,char*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

bool
buildACLCommands(const char *name, const char *subname, const char *nspname,
     const char *type, const char *acls, const char *racls,
     const char *owner, const char *prefix, int remoteVersion,
     PQExpBuffer sql)
{
 bool ok = 1;
 char **aclitems = ((void*)0);
 char **raclitems = ((void*)0);
 int naclitems = 0;
 int nraclitems = 0;
 int i;
 PQExpBuffer grantee,
    grantor,
    privs,
    privswgo;
 PQExpBuffer firstsql,
    secondsql;
 bool found_owner_privs = 0;

 if (strlen(acls) == 0 && strlen(racls) == 0)
  return 1;


 if (owner && *owner == '\0')
  owner = ((void*)0);

 if (strlen(acls) != 0)
 {
  if (!parsePGArray(acls, &aclitems, &naclitems))
  {
   if (aclitems)
    free(aclitems);
   return 0;
  }
 }

 if (strlen(racls) != 0)
 {
  if (!parsePGArray(racls, &raclitems, &nraclitems))
  {
   if (aclitems)
    free(aclitems);
   if (raclitems)
    free(raclitems);
   return 0;
  }
 }

 grantee = createPQExpBuffer();
 grantor = createPQExpBuffer();
 privs = createPQExpBuffer();
 privswgo = createPQExpBuffer();
 firstsql = createPQExpBuffer();
 secondsql = createPQExpBuffer();
 if (remoteVersion < 90600)
 {
  Assert(nraclitems == 0);

  appendPQExpBuffer(firstsql, "%sREVOKE ALL", prefix);
  if (subname)
   appendPQExpBuffer(firstsql, "(%s)", subname);
  appendPQExpBuffer(firstsql, " ON %s ", type);
  if (nspname && *nspname)
   appendPQExpBuffer(firstsql, "%s.", fmtId(nspname));
  appendPQExpBuffer(firstsql, "%s FROM PUBLIC;\n", name);
 }
 else
 {

  for (i = 0; i < nraclitems; i++)
  {
   if (!parseAclItem(raclitems[i], type, name, subname, remoteVersion,
         grantee, grantor, privs, privswgo))
   {
    ok = 0;
    break;
   }

   if (privs->len > 0 || privswgo->len > 0)
   {
    if (privs->len > 0)
    {
     appendPQExpBuffer(firstsql, "%sREVOKE %s ON %s ",
           prefix, privs->data, type);
     if (nspname && *nspname)
      appendPQExpBuffer(firstsql, "%s.", fmtId(nspname));
     appendPQExpBuffer(firstsql, "%s FROM ", name);
     if (grantee->len == 0)
      appendPQExpBufferStr(firstsql, "PUBLIC;\n");
     else if (strncmp(grantee->data, "group ",
          strlen("group ")) == 0)
      appendPQExpBuffer(firstsql, "GROUP %s;\n",
            fmtId(grantee->data + strlen("group ")));
     else
      appendPQExpBuffer(firstsql, "%s;\n",
            fmtId(grantee->data));
    }
    if (privswgo->len > 0)
    {
     appendPQExpBuffer(firstsql,
           "%sREVOKE GRANT OPTION FOR %s ON %s ",
           prefix, privswgo->data, type);
     if (nspname && *nspname)
      appendPQExpBuffer(firstsql, "%s.", fmtId(nspname));
     appendPQExpBuffer(firstsql, "%s FROM ", name);
     if (grantee->len == 0)
      appendPQExpBufferStr(firstsql, "PUBLIC");
     else if (strncmp(grantee->data, "group ",
          strlen("group ")) == 0)
      appendPQExpBuffer(firstsql, "GROUP %s",
            fmtId(grantee->data + strlen("group ")));
     else
      appendPQExpBufferStr(firstsql, fmtId(grantee->data));
    }
   }
  }
 }
 if (remoteVersion < 80200 && strcmp(type, "DATABASE") == 0)
 {

  appendPQExpBuffer(firstsql, "%sGRANT CONNECT ON %s %s TO PUBLIC;\n",
        prefix, type, name);
 }


 for (i = 0; i < naclitems; i++)
 {
  if (!parseAclItem(aclitems[i], type, name, subname, remoteVersion,
        grantee, grantor, privs, privswgo))
  {
   ok = 0;
   break;
  }

  if (grantor->len == 0 && owner)
   printfPQExpBuffer(grantor, "%s", owner);

  if (privs->len > 0 || privswgo->len > 0)
  {







   if (remoteVersion < 90600 && owner
    && strcmp(grantee->data, owner) == 0
    && strcmp(grantor->data, owner) == 0)
   {
    found_owner_privs = 1;





    if (strcmp(privswgo->data, "ALL") != 0)
    {
     appendPQExpBuffer(firstsql, "%sREVOKE ALL", prefix);
     if (subname)
      appendPQExpBuffer(firstsql, "(%s)", subname);
     appendPQExpBuffer(firstsql, " ON %s ", type);
     if (nspname && *nspname)
      appendPQExpBuffer(firstsql, "%s.", fmtId(nspname));
     appendPQExpBuffer(firstsql, "%s FROM %s;\n",
           name, fmtId(grantee->data));
     if (privs->len > 0)
     {
      appendPQExpBuffer(firstsql,
            "%sGRANT %s ON %s ",
            prefix, privs->data, type);
      if (nspname && *nspname)
       appendPQExpBuffer(firstsql, "%s.", fmtId(nspname));
      appendPQExpBuffer(firstsql,
            "%s TO %s;\n",
            name, fmtId(grantee->data));
     }
     if (privswgo->len > 0)
     {
      appendPQExpBuffer(firstsql,
            "%sGRANT %s ON %s ",
            prefix, privswgo->data, type);
      if (nspname && *nspname)
       appendPQExpBuffer(firstsql, "%s.", fmtId(nspname));
      appendPQExpBuffer(firstsql,
            "%s TO %s WITH GRANT OPTION;\n",
            name, fmtId(grantee->data));
     }
    }
   }
   else
   {
    if (grantor->len > 0
     && (!owner || strcmp(owner, grantor->data) != 0))
     appendPQExpBuffer(secondsql, "SET SESSION AUTHORIZATION %s;\n",
           fmtId(grantor->data));

    if (privs->len > 0)
    {
     appendPQExpBuffer(secondsql, "%sGRANT %s ON %s ",
           prefix, privs->data, type);
     if (nspname && *nspname)
      appendPQExpBuffer(secondsql, "%s.", fmtId(nspname));
     appendPQExpBuffer(secondsql, "%s TO ", name);
     if (grantee->len == 0)
      appendPQExpBufferStr(secondsql, "PUBLIC;\n");
     else if (strncmp(grantee->data, "group ",
          strlen("group ")) == 0)
      appendPQExpBuffer(secondsql, "GROUP %s;\n",
            fmtId(grantee->data + strlen("group ")));
     else
      appendPQExpBuffer(secondsql, "%s;\n", fmtId(grantee->data));
    }
    if (privswgo->len > 0)
    {
     appendPQExpBuffer(secondsql, "%sGRANT %s ON %s ",
           prefix, privswgo->data, type);
     if (nspname && *nspname)
      appendPQExpBuffer(secondsql, "%s.", fmtId(nspname));
     appendPQExpBuffer(secondsql, "%s TO ", name);
     if (grantee->len == 0)
      appendPQExpBufferStr(secondsql, "PUBLIC");
     else if (strncmp(grantee->data, "group ",
          strlen("group ")) == 0)
      appendPQExpBuffer(secondsql, "GROUP %s",
            fmtId(grantee->data + strlen("group ")));
     else
      appendPQExpBufferStr(secondsql, fmtId(grantee->data));
     appendPQExpBufferStr(secondsql, " WITH GRANT OPTION;\n");
    }

    if (grantor->len > 0
     && (!owner || strcmp(owner, grantor->data) != 0))
     appendPQExpBufferStr(secondsql, "RESET SESSION AUTHORIZATION;\n");
   }
  }
 }







 if (remoteVersion < 90600 && !found_owner_privs && owner)
 {
  appendPQExpBuffer(firstsql, "%sREVOKE ALL", prefix);
  if (subname)
   appendPQExpBuffer(firstsql, "(%s)", subname);
  appendPQExpBuffer(firstsql, " ON %s ", type);
  if (nspname && *nspname)
   appendPQExpBuffer(firstsql, "%s.", fmtId(nspname));
  appendPQExpBuffer(firstsql, "%s FROM %s;\n",
        name, fmtId(owner));
 }

 destroyPQExpBuffer(grantee);
 destroyPQExpBuffer(grantor);
 destroyPQExpBuffer(privs);
 destroyPQExpBuffer(privswgo);

 appendPQExpBuffer(sql, "%s%s", firstsql->data, secondsql->data);
 destroyPQExpBuffer(firstsql);
 destroyPQExpBuffer(secondsql);

 if (aclitems)
  free(aclitems);

 if (raclitems)
  free(raclitems);

 return ok;
}
