
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* optname; void* offset; void* opttype; } ;


 int AccessExclusiveLock ;
 int DUMMY_AM_ENUM_ONE ;
 int DummyIndexOptions ;
 void* RELOPT_TYPE_BOOL ;
 void* RELOPT_TYPE_ENUM ;
 void* RELOPT_TYPE_INT ;
 void* RELOPT_TYPE_REAL ;
 void* RELOPT_TYPE_STRING ;
 int add_bool_reloption (int ,char*,char*,int,int ) ;
 int add_enum_reloption (int ,char*,char*,int ,int ,char*,int ) ;
 int add_int_reloption (int ,char*,char*,int,int,int,int ) ;
 int add_real_reloption (int ,char*,char*,double,int,int,int ) ;
 int add_reloption_kind () ;
 int add_string_reloption (int ,char*,char*,char*,int *,int ) ;
 int di_relopt_kind ;
 TYPE_1__* di_relopt_tab ;
 int dummyAmEnumValues ;
 void* offsetof (int ,int ) ;
 int option_bool ;
 int option_enum ;
 int option_int ;
 int option_real ;
 int option_string_null_offset ;
 int option_string_val_offset ;
 int validate_string_option ;

__attribute__((used)) static void
create_reloptions_table(void)
{
 di_relopt_kind = add_reloption_kind();

 add_int_reloption(di_relopt_kind, "option_int",
       "Integer option for dummy_index_am",
       10, -10, 100, AccessExclusiveLock);
 di_relopt_tab[0].optname = "option_int";
 di_relopt_tab[0].opttype = RELOPT_TYPE_INT;
 di_relopt_tab[0].offset = offsetof(DummyIndexOptions, option_int);

 add_real_reloption(di_relopt_kind, "option_real",
        "Real option for dummy_index_am",
        3.1415, -10, 100, AccessExclusiveLock);
 di_relopt_tab[1].optname = "option_real";
 di_relopt_tab[1].opttype = RELOPT_TYPE_REAL;
 di_relopt_tab[1].offset = offsetof(DummyIndexOptions, option_real);

 add_bool_reloption(di_relopt_kind, "option_bool",
        "Boolean option for dummy_index_am",
        1, AccessExclusiveLock);
 di_relopt_tab[2].optname = "option_bool";
 di_relopt_tab[2].opttype = RELOPT_TYPE_BOOL;
 di_relopt_tab[2].offset = offsetof(DummyIndexOptions, option_bool);

 add_enum_reloption(di_relopt_kind, "option_enum",
        "Enum option for dummy_index_am",
        dummyAmEnumValues,
        DUMMY_AM_ENUM_ONE,
        "Valid values are \"one\" and \"two\".",
        AccessExclusiveLock);
 di_relopt_tab[3].optname = "option_enum";
 di_relopt_tab[3].opttype = RELOPT_TYPE_ENUM;
 di_relopt_tab[3].offset = offsetof(DummyIndexOptions, option_enum);

 add_string_reloption(di_relopt_kind, "option_string_val",
       "String option for dummy_index_am with non-NULL default",
       "DefaultValue", &validate_string_option,
       AccessExclusiveLock);
 di_relopt_tab[4].optname = "option_string_val";
 di_relopt_tab[4].opttype = RELOPT_TYPE_STRING;
 di_relopt_tab[4].offset = offsetof(DummyIndexOptions,
            option_string_val_offset);





 add_string_reloption(di_relopt_kind, "option_string_null",
       ((void*)0),
       ((void*)0), &validate_string_option,
       AccessExclusiveLock);
 di_relopt_tab[5].optname = "option_string_null";
 di_relopt_tab[5].opttype = RELOPT_TYPE_STRING;
 di_relopt_tab[5].offset = offsetof(DummyIndexOptions,
            option_string_null_offset);
}
