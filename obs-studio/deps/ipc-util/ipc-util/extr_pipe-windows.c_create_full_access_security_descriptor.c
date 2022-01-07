
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeSecurityDescriptor (void*,int ) ;
 int SECURITY_DESCRIPTOR_MIN_LENGTH ;
 int SECURITY_DESCRIPTOR_REVISION ;
 int SetSecurityDescriptorDacl (void*,int,int *,int) ;
 int free (void*) ;
 void* malloc (int ) ;

__attribute__((used)) static inline void *create_full_access_security_descriptor()
{
 void *sd = malloc(SECURITY_DESCRIPTOR_MIN_LENGTH);
 if (!sd) {
  return ((void*)0);
 }

 if (!InitializeSecurityDescriptor(sd, SECURITY_DESCRIPTOR_REVISION)) {
  goto error;
 }

 if (!SetSecurityDescriptorDacl(sd, 1, ((void*)0), 0)) {
  goto error;
 }

 return sd;

error:
 free(sd);
 return ((void*)0);
}
