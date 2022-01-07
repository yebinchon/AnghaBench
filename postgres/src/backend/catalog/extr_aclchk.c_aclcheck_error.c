
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectType ;
typedef int AclResult ;





 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char const*,char const*) ;
 char* gettext_noop (char*) ;

void
aclcheck_error(AclResult aclerr, ObjectType objtype,
      const char *objectname)
{
 switch (aclerr)
 {
  case 178:

   break;
  case 179:
   {
    const char *msg = "???";

    switch (objtype)
    {
     case 176:
      msg = gettext_noop("permission denied for aggregate %s");
      break;
     case 171:
      msg = gettext_noop("permission denied for collation %s");
      break;
     case 170:
      msg = gettext_noop("permission denied for column %s");
      break;
     case 169:
      msg = gettext_noop("permission denied for conversion %s");
      break;
     case 168:
      msg = gettext_noop("permission denied for database %s");
      break;
     case 165:
      msg = gettext_noop("permission denied for domain %s");
      break;
     case 163:
      msg = gettext_noop("permission denied for event trigger %s");
      break;
     case 162:
      msg = gettext_noop("permission denied for extension %s");
      break;
     case 161:
      msg = gettext_noop("permission denied for foreign-data wrapper %s");
      break;
     case 160:
      msg = gettext_noop("permission denied for foreign server %s");
      break;
     case 159:
      msg = gettext_noop("permission denied for foreign table %s");
      break;
     case 158:
      msg = gettext_noop("permission denied for function %s");
      break;
     case 157:
      msg = gettext_noop("permission denied for index %s");
      break;
     case 156:
      msg = gettext_noop("permission denied for language %s");
      break;
     case 155:
      msg = gettext_noop("permission denied for large object %s");
      break;
     case 154:
      msg = gettext_noop("permission denied for materialized view %s");
      break;
     case 153:
      msg = gettext_noop("permission denied for operator class %s");
      break;
     case 152:
      msg = gettext_noop("permission denied for operator %s");
      break;
     case 151:
      msg = gettext_noop("permission denied for operator family %s");
      break;
     case 150:
      msg = gettext_noop("permission denied for policy %s");
      break;
     case 149:
      msg = gettext_noop("permission denied for procedure %s");
      break;
     case 148:
      msg = gettext_noop("permission denied for publication %s");
      break;
     case 145:
      msg = gettext_noop("permission denied for routine %s");
      break;
     case 143:
      msg = gettext_noop("permission denied for schema %s");
      break;
     case 142:
      msg = gettext_noop("permission denied for sequence %s");
      break;
     case 141:
      msg = gettext_noop("permission denied for statistics object %s");
      break;
     case 140:
      msg = gettext_noop("permission denied for subscription %s");
      break;
     case 138:
      msg = gettext_noop("permission denied for table %s");
      break;
     case 137:
      msg = gettext_noop("permission denied for tablespace %s");
      break;
     case 134:
      msg = gettext_noop("permission denied for text search configuration %s");
      break;
     case 133:
      msg = gettext_noop("permission denied for text search dictionary %s");
      break;
     case 130:
      msg = gettext_noop("permission denied for type %s");
      break;
     case 128:
      msg = gettext_noop("permission denied for view %s");
      break;

     case 177:
     case 175:
     case 174:
     case 173:
     case 172:
     case 166:
     case 167:
     case 164:
     case 147:
     case 146:
     case 144:
     case 139:
     case 136:
     case 135:
     case 132:
     case 131:
     case 129:
      elog(ERROR, "unsupported object type %d", objtype);
    }

    ereport(ERROR,
      (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
       errmsg(msg, objectname)));
    break;
   }
  case 180:
   {
    const char *msg = "???";

    switch (objtype)
    {
     case 176:
      msg = gettext_noop("must be owner of aggregate %s");
      break;
     case 171:
      msg = gettext_noop("must be owner of collation %s");
      break;
     case 169:
      msg = gettext_noop("must be owner of conversion %s");
      break;
     case 168:
      msg = gettext_noop("must be owner of database %s");
      break;
     case 165:
      msg = gettext_noop("must be owner of domain %s");
      break;
     case 163:
      msg = gettext_noop("must be owner of event trigger %s");
      break;
     case 162:
      msg = gettext_noop("must be owner of extension %s");
      break;
     case 161:
      msg = gettext_noop("must be owner of foreign-data wrapper %s");
      break;
     case 160:
      msg = gettext_noop("must be owner of foreign server %s");
      break;
     case 159:
      msg = gettext_noop("must be owner of foreign table %s");
      break;
     case 158:
      msg = gettext_noop("must be owner of function %s");
      break;
     case 157:
      msg = gettext_noop("must be owner of index %s");
      break;
     case 156:
      msg = gettext_noop("must be owner of language %s");
      break;
     case 155:
      msg = gettext_noop("must be owner of large object %s");
      break;
     case 154:
      msg = gettext_noop("must be owner of materialized view %s");
      break;
     case 153:
      msg = gettext_noop("must be owner of operator class %s");
      break;
     case 152:
      msg = gettext_noop("must be owner of operator %s");
      break;
     case 151:
      msg = gettext_noop("must be owner of operator family %s");
      break;
     case 149:
      msg = gettext_noop("must be owner of procedure %s");
      break;
     case 148:
      msg = gettext_noop("must be owner of publication %s");
      break;
     case 145:
      msg = gettext_noop("must be owner of routine %s");
      break;
     case 142:
      msg = gettext_noop("must be owner of sequence %s");
      break;
     case 140:
      msg = gettext_noop("must be owner of subscription %s");
      break;
     case 138:
      msg = gettext_noop("must be owner of table %s");
      break;
     case 130:
      msg = gettext_noop("must be owner of type %s");
      break;
     case 128:
      msg = gettext_noop("must be owner of view %s");
      break;
     case 143:
      msg = gettext_noop("must be owner of schema %s");
      break;
     case 141:
      msg = gettext_noop("must be owner of statistics object %s");
      break;
     case 137:
      msg = gettext_noop("must be owner of tablespace %s");
      break;
     case 134:
      msg = gettext_noop("must be owner of text search configuration %s");
      break;
     case 133:
      msg = gettext_noop("must be owner of text search dictionary %s");
      break;







     case 170:
     case 150:
     case 144:
     case 139:
     case 135:
      msg = gettext_noop("must be owner of relation %s");
      break;

     case 177:
     case 175:
     case 174:
     case 173:
     case 172:
     case 166:
     case 167:
     case 164:
     case 147:
     case 146:
     case 136:
     case 132:
     case 131:
     case 129:
      elog(ERROR, "unsupported object type %d", objtype);
    }

    ereport(ERROR,
      (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
       errmsg(msg, objectname)));
    break;
   }
  default:
   elog(ERROR, "unrecognized AclResult: %d", (int) aclerr);
   break;
 }
}
