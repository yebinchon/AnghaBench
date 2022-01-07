
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int BYTE ;


 int ACE4_DIRECTORY_INHERIT_ACE ;
 int ACE4_FILE_INHERIT_ACE ;
 int ACE4_INHERITED_ACE ;
 int ACE4_INHERIT_ONLY_ACE ;
 int ACE4_NO_PROPAGATE_INHERIT_ACE ;
 int ACLLVL ;
 int CONTAINER_INHERIT_ACE ;
 int INHERITED_ACE ;
 int INHERIT_ONLY_ACE ;
 int NO_PROPAGATE_INHERIT_ACE ;
 int OBJECT_INHERIT_ACE ;
 int dprintf (int ,char*,int,int ) ;

__attribute__((used)) static void map_aceflags(BYTE win_aceflags, uint32_t *nfs4_aceflags)
{
    if (win_aceflags & OBJECT_INHERIT_ACE)
        *nfs4_aceflags |= ACE4_FILE_INHERIT_ACE;
    if (win_aceflags & CONTAINER_INHERIT_ACE)
        *nfs4_aceflags |= ACE4_DIRECTORY_INHERIT_ACE;
    if (win_aceflags & NO_PROPAGATE_INHERIT_ACE)
        *nfs4_aceflags |= ACE4_NO_PROPAGATE_INHERIT_ACE;
    if (win_aceflags & INHERIT_ONLY_ACE)
        *nfs4_aceflags |= ACE4_INHERIT_ONLY_ACE;
    if (win_aceflags & INHERITED_ACE)
        *nfs4_aceflags |= ACE4_INHERITED_ACE;
    dprintf(ACLLVL, "ACE FLAGS: %x nfs4 aceflags %x\n",
            win_aceflags, *nfs4_aceflags);
}
