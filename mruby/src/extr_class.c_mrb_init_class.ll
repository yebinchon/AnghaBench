; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_init_class.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_init_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.RObject*, %struct.RClass*, %struct.RClass*, %struct.RClass*, %struct.RClass* }
%struct.RObject = type { i32 }
%struct.RClass = type { %struct.RClass* }

@.str = private unnamed_addr constant [12 x i8] c"BasicObject\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Module\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Class\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Proc\00", align 1
@MRB_TT_PROC = common dso_local global i32 0, align 4
@MRB_TT_CLASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@mrb_bob_init = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@mrb_bob_not = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@mrb_obj_equal_m = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@mrb_obj_not_equal_m = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"__id__\00", align 1
@mrb_obj_id_m = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"__send__\00", align 1
@mrb_f_send = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"equal?\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"instance_eval\00", align 1
@mrb_obj_instance_eval = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@mrb_class_new_class = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@mrb_instance_alloc = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"superclass\00", align 1
@mrb_class_superclass = common dso_local global i32 0, align 4
@mrb_class_initialize = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"inherited\00", align 1
@MRB_TT_MODULE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"extend_object\00", align 1
@mrb_mod_extend_object = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"extended\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"prepended\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"prepend_features\00", align 1
@mrb_mod_prepend_features = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"include?\00", align 1
@mrb_mod_include_p = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"append_features\00", align 1
@mrb_mod_append_features = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"class_eval\00", align 1
@mrb_mod_module_eval = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"included\00", align 1
@mrb_mod_initialize = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"module_eval\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"module_function\00", align 1
@mrb_mod_module_function = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@mrb_mod_dummy_visibility = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"attr_reader\00", align 1
@mrb_mod_attr_reader = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"attr_writer\00", align 1
@mrb_mod_attr_writer = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@mrb_mod_to_s = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"alias_method\00", align 1
@mrb_mod_alias = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"ancestors\00", align 1
@mrb_mod_ancestors = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [13 x i8] c"undef_method\00", align 1
@mrb_mod_undef = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [15 x i8] c"const_defined?\00", align 1
@mrb_mod_const_defined = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [10 x i8] c"const_get\00", align 1
@mrb_mod_const_get = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"const_set\00", align 1
@mrb_mod_const_set = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [13 x i8] c"remove_const\00", align 1
@mrb_mod_remove_const = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [14 x i8] c"const_missing\00", align 1
@mrb_mod_const_missing = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [16 x i8] c"method_defined?\00", align 1
@mrb_mod_method_defined = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [14 x i8] c"define_method\00", align 1
@mod_define_method = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [4 x i8] c"===\00", align 1
@mrb_mod_eqq = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@mrb_mod_dup = common dso_local global i32 0, align 4
@MRB_TT_OBJECT = common dso_local global i32 0, align 4
@inspect_main = common dso_local global i32 0, align 4
@top_define_method = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_class(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = call %struct.RClass* @boot_defclass(%struct.TYPE_15__* %7, %struct.RClass* null)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.RClass*, %struct.RClass** %3, align 8
  %11 = call %struct.RClass* @boot_defclass(%struct.TYPE_15__* %9, %struct.RClass* %10)
  store %struct.RClass* %11, %struct.RClass** %4, align 8
  %12 = load %struct.RClass*, %struct.RClass** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store %struct.RClass* %12, %struct.RClass** %14, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = load %struct.RClass*, %struct.RClass** %4, align 8
  %17 = call %struct.RClass* @boot_defclass(%struct.TYPE_15__* %15, %struct.RClass* %16)
  store %struct.RClass* %17, %struct.RClass** %5, align 8
  %18 = load %struct.RClass*, %struct.RClass** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  store %struct.RClass* %18, %struct.RClass** %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = load %struct.RClass*, %struct.RClass** %5, align 8
  %23 = call %struct.RClass* @boot_defclass(%struct.TYPE_15__* %21, %struct.RClass* %22)
  store %struct.RClass* %23, %struct.RClass** %6, align 8
  %24 = load %struct.RClass*, %struct.RClass** %6, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  store %struct.RClass* %24, %struct.RClass** %26, align 8
  %27 = load %struct.RClass*, %struct.RClass** %6, align 8
  %28 = load %struct.RClass*, %struct.RClass** %6, align 8
  %29 = getelementptr inbounds %struct.RClass, %struct.RClass* %28, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %29, align 8
  %30 = load %struct.RClass*, %struct.RClass** %5, align 8
  %31 = getelementptr inbounds %struct.RClass, %struct.RClass* %30, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %31, align 8
  %32 = load %struct.RClass*, %struct.RClass** %4, align 8
  %33 = getelementptr inbounds %struct.RClass, %struct.RClass* %32, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %33, align 8
  %34 = load %struct.RClass*, %struct.RClass** %3, align 8
  %35 = getelementptr inbounds %struct.RClass, %struct.RClass* %34, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = load %struct.RClass*, %struct.RClass** %3, align 8
  %38 = call i32 @make_metaclass(%struct.TYPE_15__* %36, %struct.RClass* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %4, align 8
  %41 = call i32 @make_metaclass(%struct.TYPE_15__* %39, %struct.RClass* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = load %struct.RClass*, %struct.RClass** %5, align 8
  %44 = call i32 @make_metaclass(%struct.TYPE_15__* %42, %struct.RClass* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = load %struct.RClass*, %struct.RClass** %6, align 8
  %47 = call i32 @make_metaclass(%struct.TYPE_15__* %45, %struct.RClass* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = load %struct.RClass*, %struct.RClass** %3, align 8
  %50 = load %struct.RClass*, %struct.RClass** %3, align 8
  %51 = call i32 @mrb_obj_value(%struct.RClass* %50)
  %52 = call i32 @mrb_define_const(%struct.TYPE_15__* %48, %struct.RClass* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = load %struct.RClass*, %struct.RClass** %4, align 8
  %55 = load %struct.RClass*, %struct.RClass** %4, align 8
  %56 = call i32 @mrb_obj_value(%struct.RClass* %55)
  %57 = call i32 @mrb_define_const(%struct.TYPE_15__* %53, %struct.RClass* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = load %struct.RClass*, %struct.RClass** %4, align 8
  %60 = load %struct.RClass*, %struct.RClass** %5, align 8
  %61 = call i32 @mrb_obj_value(%struct.RClass* %60)
  %62 = call i32 @mrb_define_const(%struct.TYPE_15__* %58, %struct.RClass* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = load %struct.RClass*, %struct.RClass** %4, align 8
  %65 = load %struct.RClass*, %struct.RClass** %6, align 8
  %66 = call i32 @mrb_obj_value(%struct.RClass* %65)
  %67 = call i32 @mrb_define_const(%struct.TYPE_15__* %63, %struct.RClass* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = load %struct.RClass*, %struct.RClass** %3, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = call i32 @mrb_intern_lit(%struct.TYPE_15__* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @mrb_class_name_class(%struct.TYPE_15__* %68, i32* null, %struct.RClass* %69, i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = load %struct.RClass*, %struct.RClass** %4, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = call i32 @mrb_intern_lit(%struct.TYPE_15__* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @mrb_class_name_class(%struct.TYPE_15__* %73, i32* null, %struct.RClass* %74, i32 %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = load %struct.RClass*, %struct.RClass** %5, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = call i32 @mrb_intern_lit(%struct.TYPE_15__* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 @mrb_class_name_class(%struct.TYPE_15__* %78, i32* null, %struct.RClass* %79, i32 %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = load %struct.RClass*, %struct.RClass** %6, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = call i32 @mrb_intern_lit(%struct.TYPE_15__* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @mrb_class_name_class(%struct.TYPE_15__* %83, i32* null, %struct.RClass* %84, i32 %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load %struct.RClass*, %struct.RClass** %90, align 8
  %92 = call %struct.RClass* @mrb_define_class(%struct.TYPE_15__* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.RClass* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  store %struct.RClass* %92, %struct.RClass** %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load %struct.RClass*, %struct.RClass** %96, align 8
  %98 = load i32, i32* @MRB_TT_PROC, align 4
  %99 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %97, i32 %98)
  %100 = load %struct.RClass*, %struct.RClass** %6, align 8
  %101 = load i32, i32* @MRB_TT_CLASS, align 4
  %102 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %100, i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = load %struct.RClass*, %struct.RClass** %3, align 8
  %105 = load i32, i32* @mrb_bob_init, align 4
  %106 = call i32 (...) @MRB_ARGS_NONE()
  %107 = call i32 @mrb_define_method(%struct.TYPE_15__* %103, %struct.RClass* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %109 = load %struct.RClass*, %struct.RClass** %3, align 8
  %110 = load i32, i32* @mrb_bob_not, align 4
  %111 = call i32 (...) @MRB_ARGS_NONE()
  %112 = call i32 @mrb_define_method(%struct.TYPE_15__* %108, %struct.RClass* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = load %struct.RClass*, %struct.RClass** %3, align 8
  %115 = load i32, i32* @mrb_obj_equal_m, align 4
  %116 = call i32 @MRB_ARGS_REQ(i32 1)
  %117 = call i32 @mrb_define_method(%struct.TYPE_15__* %113, %struct.RClass* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = load %struct.RClass*, %struct.RClass** %3, align 8
  %120 = load i32, i32* @mrb_obj_not_equal_m, align 4
  %121 = call i32 @MRB_ARGS_REQ(i32 1)
  %122 = call i32 @mrb_define_method(%struct.TYPE_15__* %118, %struct.RClass* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = load %struct.RClass*, %struct.RClass** %3, align 8
  %125 = load i32, i32* @mrb_obj_id_m, align 4
  %126 = call i32 (...) @MRB_ARGS_NONE()
  %127 = call i32 @mrb_define_method(%struct.TYPE_15__* %123, %struct.RClass* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %129 = load %struct.RClass*, %struct.RClass** %3, align 8
  %130 = load i32, i32* @mrb_f_send, align 4
  %131 = call i32 @MRB_ARGS_REQ(i32 1)
  %132 = call i32 (...) @MRB_ARGS_REST()
  %133 = or i32 %131, %132
  %134 = call i32 (...) @MRB_ARGS_BLOCK()
  %135 = or i32 %133, %134
  %136 = call i32 @mrb_define_method(%struct.TYPE_15__* %128, %struct.RClass* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %130, i32 %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %138 = load %struct.RClass*, %struct.RClass** %3, align 8
  %139 = load i32, i32* @mrb_obj_equal_m, align 4
  %140 = call i32 @MRB_ARGS_REQ(i32 1)
  %141 = call i32 @mrb_define_method(%struct.TYPE_15__* %137, %struct.RClass* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %143 = load %struct.RClass*, %struct.RClass** %3, align 8
  %144 = load i32, i32* @mrb_obj_instance_eval, align 4
  %145 = call i32 @MRB_ARGS_OPT(i32 1)
  %146 = call i32 (...) @MRB_ARGS_BLOCK()
  %147 = or i32 %145, %146
  %148 = call i32 @mrb_define_method(%struct.TYPE_15__* %142, %struct.RClass* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %144, i32 %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %150 = load %struct.RClass*, %struct.RClass** %6, align 8
  %151 = load i32, i32* @mrb_class_new_class, align 4
  %152 = call i32 @MRB_ARGS_OPT(i32 1)
  %153 = call i32 (...) @MRB_ARGS_BLOCK()
  %154 = or i32 %152, %153
  %155 = call i32 @mrb_define_class_method(%struct.TYPE_15__* %149, %struct.RClass* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %157 = load %struct.RClass*, %struct.RClass** %6, align 8
  %158 = load i32, i32* @mrb_instance_alloc, align 4
  %159 = call i32 (...) @MRB_ARGS_NONE()
  %160 = call i32 @mrb_define_method(%struct.TYPE_15__* %156, %struct.RClass* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %158, i32 %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %162 = load %struct.RClass*, %struct.RClass** %6, align 8
  %163 = load i32, i32* @mrb_class_superclass, align 4
  %164 = call i32 (...) @MRB_ARGS_NONE()
  %165 = call i32 @mrb_define_method(%struct.TYPE_15__* %161, %struct.RClass* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %167 = load %struct.RClass*, %struct.RClass** %6, align 8
  %168 = load i32, i32* @mrb_class_initialize, align 4
  %169 = call i32 @MRB_ARGS_OPT(i32 1)
  %170 = call i32 @mrb_define_method(%struct.TYPE_15__* %166, %struct.RClass* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %172 = load %struct.RClass*, %struct.RClass** %6, align 8
  %173 = load i32, i32* @mrb_bob_init, align 4
  %174 = call i32 @MRB_ARGS_REQ(i32 1)
  %175 = call i32 @mrb_define_method(%struct.TYPE_15__* %171, %struct.RClass* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %177 = load %struct.RClass*, %struct.RClass** %6, align 8
  %178 = call i32 @init_class_new(%struct.TYPE_15__* %176, %struct.RClass* %177)
  %179 = load %struct.RClass*, %struct.RClass** %5, align 8
  %180 = load i32, i32* @MRB_TT_MODULE, align 4
  %181 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %179, i32 %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %183 = load %struct.RClass*, %struct.RClass** %5, align 8
  %184 = load i32, i32* @mrb_mod_extend_object, align 4
  %185 = call i32 @MRB_ARGS_REQ(i32 1)
  %186 = call i32 @mrb_define_method(%struct.TYPE_15__* %182, %struct.RClass* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %188 = load %struct.RClass*, %struct.RClass** %5, align 8
  %189 = load i32, i32* @mrb_bob_init, align 4
  %190 = call i32 @MRB_ARGS_REQ(i32 1)
  %191 = call i32 @mrb_define_method(%struct.TYPE_15__* %187, %struct.RClass* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %193 = load %struct.RClass*, %struct.RClass** %5, align 8
  %194 = load i32, i32* @mrb_bob_init, align 4
  %195 = call i32 @MRB_ARGS_REQ(i32 1)
  %196 = call i32 @mrb_define_method(%struct.TYPE_15__* %192, %struct.RClass* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %198 = load %struct.RClass*, %struct.RClass** %5, align 8
  %199 = load i32, i32* @mrb_mod_prepend_features, align 4
  %200 = call i32 @MRB_ARGS_REQ(i32 1)
  %201 = call i32 @mrb_define_method(%struct.TYPE_15__* %197, %struct.RClass* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %203 = load %struct.RClass*, %struct.RClass** %5, align 8
  %204 = load i32, i32* @mrb_mod_include_p, align 4
  %205 = call i32 @MRB_ARGS_REQ(i32 1)
  %206 = call i32 @mrb_define_method(%struct.TYPE_15__* %202, %struct.RClass* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %204, i32 %205)
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %208 = load %struct.RClass*, %struct.RClass** %5, align 8
  %209 = load i32, i32* @mrb_mod_append_features, align 4
  %210 = call i32 @MRB_ARGS_REQ(i32 1)
  %211 = call i32 @mrb_define_method(%struct.TYPE_15__* %207, %struct.RClass* %208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %209, i32 %210)
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %213 = load %struct.RClass*, %struct.RClass** %5, align 8
  %214 = load i32, i32* @mrb_mod_module_eval, align 4
  %215 = call i32 (...) @MRB_ARGS_ANY()
  %216 = call i32 @mrb_define_method(%struct.TYPE_15__* %212, %struct.RClass* %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %214, i32 %215)
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %218 = load %struct.RClass*, %struct.RClass** %5, align 8
  %219 = load i32, i32* @mrb_bob_init, align 4
  %220 = call i32 @MRB_ARGS_REQ(i32 1)
  %221 = call i32 @mrb_define_method(%struct.TYPE_15__* %217, %struct.RClass* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %219, i32 %220)
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %223 = load %struct.RClass*, %struct.RClass** %5, align 8
  %224 = load i32, i32* @mrb_mod_initialize, align 4
  %225 = call i32 (...) @MRB_ARGS_NONE()
  %226 = call i32 @mrb_define_method(%struct.TYPE_15__* %222, %struct.RClass* %223, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %224, i32 %225)
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %228 = load %struct.RClass*, %struct.RClass** %5, align 8
  %229 = load i32, i32* @mrb_mod_module_eval, align 4
  %230 = call i32 (...) @MRB_ARGS_ANY()
  %231 = call i32 @mrb_define_method(%struct.TYPE_15__* %227, %struct.RClass* %228, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %233 = load %struct.RClass*, %struct.RClass** %5, align 8
  %234 = load i32, i32* @mrb_mod_module_function, align 4
  %235 = call i32 (...) @MRB_ARGS_ANY()
  %236 = call i32 @mrb_define_method(%struct.TYPE_15__* %232, %struct.RClass* %233, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 %234, i32 %235)
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %238 = load %struct.RClass*, %struct.RClass** %5, align 8
  %239 = load i32, i32* @mrb_mod_dummy_visibility, align 4
  %240 = call i32 (...) @MRB_ARGS_ANY()
  %241 = call i32 @mrb_define_method(%struct.TYPE_15__* %237, %struct.RClass* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32 %239, i32 %240)
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %243 = load %struct.RClass*, %struct.RClass** %5, align 8
  %244 = load i32, i32* @mrb_mod_dummy_visibility, align 4
  %245 = call i32 (...) @MRB_ARGS_ANY()
  %246 = call i32 @mrb_define_method(%struct.TYPE_15__* %242, %struct.RClass* %243, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 %244, i32 %245)
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %248 = load %struct.RClass*, %struct.RClass** %5, align 8
  %249 = load i32, i32* @mrb_mod_dummy_visibility, align 4
  %250 = call i32 (...) @MRB_ARGS_ANY()
  %251 = call i32 @mrb_define_method(%struct.TYPE_15__* %247, %struct.RClass* %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %253 = load %struct.RClass*, %struct.RClass** %5, align 8
  %254 = load i32, i32* @mrb_mod_attr_reader, align 4
  %255 = call i32 (...) @MRB_ARGS_ANY()
  %256 = call i32 @mrb_define_method(%struct.TYPE_15__* %252, %struct.RClass* %253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 %254, i32 %255)
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %258 = load %struct.RClass*, %struct.RClass** %5, align 8
  %259 = load i32, i32* @mrb_mod_attr_writer, align 4
  %260 = call i32 (...) @MRB_ARGS_ANY()
  %261 = call i32 @mrb_define_method(%struct.TYPE_15__* %257, %struct.RClass* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 %259, i32 %260)
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %263 = load %struct.RClass*, %struct.RClass** %5, align 8
  %264 = load i32, i32* @mrb_mod_to_s, align 4
  %265 = call i32 (...) @MRB_ARGS_NONE()
  %266 = call i32 @mrb_define_method(%struct.TYPE_15__* %262, %struct.RClass* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %268 = load %struct.RClass*, %struct.RClass** %5, align 8
  %269 = load i32, i32* @mrb_mod_to_s, align 4
  %270 = call i32 (...) @MRB_ARGS_NONE()
  %271 = call i32 @mrb_define_method(%struct.TYPE_15__* %267, %struct.RClass* %268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 %269, i32 %270)
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %273 = load %struct.RClass*, %struct.RClass** %5, align 8
  %274 = load i32, i32* @mrb_mod_alias, align 4
  %275 = call i32 (...) @MRB_ARGS_ANY()
  %276 = call i32 @mrb_define_method(%struct.TYPE_15__* %272, %struct.RClass* %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32 %274, i32 %275)
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %278 = load %struct.RClass*, %struct.RClass** %5, align 8
  %279 = load i32, i32* @mrb_mod_ancestors, align 4
  %280 = call i32 (...) @MRB_ARGS_NONE()
  %281 = call i32 @mrb_define_method(%struct.TYPE_15__* %277, %struct.RClass* %278, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i32 %279, i32 %280)
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %283 = load %struct.RClass*, %struct.RClass** %5, align 8
  %284 = load i32, i32* @mrb_mod_undef, align 4
  %285 = call i32 (...) @MRB_ARGS_ANY()
  %286 = call i32 @mrb_define_method(%struct.TYPE_15__* %282, %struct.RClass* %283, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i32 %284, i32 %285)
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %288 = load %struct.RClass*, %struct.RClass** %5, align 8
  %289 = load i32, i32* @mrb_mod_const_defined, align 4
  %290 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %291 = call i32 @mrb_define_method(%struct.TYPE_15__* %287, %struct.RClass* %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i32 %289, i32 %290)
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %293 = load %struct.RClass*, %struct.RClass** %5, align 8
  %294 = load i32, i32* @mrb_mod_const_get, align 4
  %295 = call i32 @MRB_ARGS_REQ(i32 1)
  %296 = call i32 @mrb_define_method(%struct.TYPE_15__* %292, %struct.RClass* %293, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32 %294, i32 %295)
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %298 = load %struct.RClass*, %struct.RClass** %5, align 8
  %299 = load i32, i32* @mrb_mod_const_set, align 4
  %300 = call i32 @MRB_ARGS_REQ(i32 2)
  %301 = call i32 @mrb_define_method(%struct.TYPE_15__* %297, %struct.RClass* %298, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i32 %299, i32 %300)
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %303 = load %struct.RClass*, %struct.RClass** %5, align 8
  %304 = load i32, i32* @mrb_mod_remove_const, align 4
  %305 = call i32 @MRB_ARGS_REQ(i32 1)
  %306 = call i32 @mrb_define_method(%struct.TYPE_15__* %302, %struct.RClass* %303, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i32 %304, i32 %305)
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %308 = load %struct.RClass*, %struct.RClass** %5, align 8
  %309 = load i32, i32* @mrb_mod_const_missing, align 4
  %310 = call i32 @MRB_ARGS_REQ(i32 1)
  %311 = call i32 @mrb_define_method(%struct.TYPE_15__* %307, %struct.RClass* %308, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 %309, i32 %310)
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %313 = load %struct.RClass*, %struct.RClass** %5, align 8
  %314 = load i32, i32* @mrb_mod_method_defined, align 4
  %315 = call i32 @MRB_ARGS_REQ(i32 1)
  %316 = call i32 @mrb_define_method(%struct.TYPE_15__* %312, %struct.RClass* %313, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i32 %314, i32 %315)
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %318 = load %struct.RClass*, %struct.RClass** %5, align 8
  %319 = load i32, i32* @mod_define_method, align 4
  %320 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %321 = call i32 @mrb_define_method(%struct.TYPE_15__* %317, %struct.RClass* %318, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 %319, i32 %320)
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %323 = load %struct.RClass*, %struct.RClass** %5, align 8
  %324 = load i32, i32* @mrb_mod_eqq, align 4
  %325 = call i32 @MRB_ARGS_REQ(i32 1)
  %326 = call i32 @mrb_define_method(%struct.TYPE_15__* %322, %struct.RClass* %323, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %324, i32 %325)
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %328 = load %struct.RClass*, %struct.RClass** %5, align 8
  %329 = load i32, i32* @mrb_mod_dup, align 4
  %330 = call i32 (...) @MRB_ARGS_NONE()
  %331 = call i32 @mrb_define_method(%struct.TYPE_15__* %327, %struct.RClass* %328, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %329, i32 %330)
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %333 = load %struct.RClass*, %struct.RClass** %6, align 8
  %334 = call i32 @mrb_undef_method(%struct.TYPE_15__* %332, %struct.RClass* %333, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %336 = load %struct.RClass*, %struct.RClass** %6, align 8
  %337 = call i32 @mrb_undef_method(%struct.TYPE_15__* %335, %struct.RClass* %336, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %339 = load i32, i32* @MRB_TT_OBJECT, align 4
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 1
  %342 = load %struct.RClass*, %struct.RClass** %341, align 8
  %343 = call i64 @mrb_obj_alloc(%struct.TYPE_15__* %338, i32 %339, %struct.RClass* %342)
  %344 = inttoptr i64 %343 to %struct.RObject*
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  store %struct.RObject* %344, %struct.RObject** %346, align 8
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 0
  %350 = load %struct.RObject*, %struct.RObject** %349, align 8
  %351 = load i32, i32* @inspect_main, align 4
  %352 = call i32 (...) @MRB_ARGS_NONE()
  %353 = call i32 @mrb_define_singleton_method(%struct.TYPE_15__* %347, %struct.RObject* %350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 %351, i32 %352)
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 0
  %357 = load %struct.RObject*, %struct.RObject** %356, align 8
  %358 = load i32, i32* @inspect_main, align 4
  %359 = call i32 (...) @MRB_ARGS_NONE()
  %360 = call i32 @mrb_define_singleton_method(%struct.TYPE_15__* %354, %struct.RObject* %357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %358, i32 %359)
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 0
  %364 = load %struct.RObject*, %struct.RObject** %363, align 8
  %365 = load i32, i32* @top_define_method, align 4
  %366 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %367 = call i32 @mrb_define_singleton_method(%struct.TYPE_15__* %361, %struct.RObject* %364, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 %365, i32 %366)
  ret void
}

declare dso_local %struct.RClass* @boot_defclass(%struct.TYPE_15__*, %struct.RClass*) #1

declare dso_local i32 @make_metaclass(%struct.TYPE_15__*, %struct.RClass*) #1

declare dso_local i32 @mrb_define_const(%struct.TYPE_15__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_class_name_class(%struct.TYPE_15__*, i32*, %struct.RClass*, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_15__*, i8*, %struct.RClass*) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_15__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_REST(...) #1

declare dso_local i32 @MRB_ARGS_BLOCK(...) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_15__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @init_class_new(%struct.TYPE_15__*, %struct.RClass*) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local i32 @mrb_undef_method(%struct.TYPE_15__*, %struct.RClass*, i8*) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_15__*, i32, %struct.RClass*) #1

declare dso_local i32 @mrb_define_singleton_method(%struct.TYPE_15__*, %struct.RObject*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
