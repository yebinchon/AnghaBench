
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE ;
typedef int XMLRPC_SERVER ;
typedef int XMLRPC_REQUEST ;


 int XMLRPC_AddValuesToVector (int ,int ,int ,int *) ;
 int XMLRPC_CreateVector (char*,int ) ;
 int XMLRPC_VectorAppendInt (int ,char*,int) ;
 int XMLRPC_VectorAppendString (int ,char*,char*,int ) ;
 int xmlrpc_vector_struct ;

XMLRPC_VALUE xsm_system_get_capabilities_cb(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xReturn = XMLRPC_CreateVector(0, xmlrpc_vector_struct);
   XMLRPC_VALUE xFaults = XMLRPC_CreateVector("faults_interop", xmlrpc_vector_struct);
   XMLRPC_VALUE xIntro = XMLRPC_CreateVector("introspection", xmlrpc_vector_struct);


   XMLRPC_VectorAppendString(xFaults, "specURL", "http://xmlrpc-epi.sourceforge.net/specs/rfc.fault_codes.php", 0);
   XMLRPC_VectorAppendInt(xFaults, "specVersion", 20010516);


   XMLRPC_VectorAppendString(xIntro, "specURL", "http://xmlrpc-epi.sourceforge.net/specs/rfc.introspection.php", 0);
   XMLRPC_VectorAppendInt(xIntro, "specVersion", 20010516);

   XMLRPC_AddValuesToVector(xReturn,
                            xFaults,
                            xIntro,
                            ((void*)0));

   return xReturn;

}
