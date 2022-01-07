; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_kernel.c_mrb_init_kernel.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_kernel.c_mrb_init_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.RClass*, i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"block_given?\00", align 1
@mrb_f_block_given_p_m = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"iterator?\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@mrb_f_raise = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"===\00", align 1
@mrb_equal_m = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@mrb_obj_class_m = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@mrb_obj_clone = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@mrb_obj_dup = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"eql?\00", align 1
@mrb_obj_equal_m = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@mrb_obj_extend_m = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@mrb_obj_freeze = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"frozen?\00", align 1
@mrb_obj_frozen = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@mrb_obj_hash = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@mrb_obj_init_copy = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@mrb_obj_inspect = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"instance_of?\00", align 1
@obj_is_instance_of = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"is_a?\00", align 1
@mrb_obj_is_kind_of_m = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"kind_of?\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"method_missing\00", align 1
@mrb_obj_missing = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"nil?\00", align 1
@mrb_false = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"object_id\00", align 1
@mrb_obj_id_m = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"remove_instance_variable\00", align 1
@mrb_obj_remove_instance_variable = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"respond_to?\00", align 1
@obj_respond_to = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@mrb_any_to_s = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"__case_eqq\00", align 1
@mrb_obj_ceqq = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"__to_int\00", align 1
@mrb_to_int = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"__to_str\00", align 1
@mrb_to_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_kernel(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call %struct.RClass* @mrb_define_module(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %5, %struct.RClass** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store %struct.RClass* %5, %struct.RClass** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.RClass*, %struct.RClass** %3, align 8
  %10 = load i32, i32* @mrb_f_block_given_p_m, align 4
  %11 = call i32 (...) @MRB_ARGS_NONE()
  %12 = call i32 @mrb_define_class_method(%struct.TYPE_7__* %8, %struct.RClass* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = load %struct.RClass*, %struct.RClass** %3, align 8
  %15 = load i32, i32* @mrb_f_block_given_p_m, align 4
  %16 = call i32 (...) @MRB_ARGS_NONE()
  %17 = call i32 @mrb_define_class_method(%struct.TYPE_7__* %13, %struct.RClass* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = load %struct.RClass*, %struct.RClass** %3, align 8
  %20 = load i32, i32* @mrb_f_raise, align 4
  %21 = call i32 @MRB_ARGS_OPT(i32 2)
  %22 = call i32 @mrb_define_class_method(%struct.TYPE_7__* %18, %struct.RClass* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load %struct.RClass*, %struct.RClass** %3, align 8
  %25 = load i32, i32* @mrb_equal_m, align 4
  %26 = call i32 @MRB_ARGS_REQ(i32 1)
  %27 = call i32 @mrb_define_method(%struct.TYPE_7__* %23, %struct.RClass* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = load %struct.RClass*, %struct.RClass** %3, align 8
  %30 = load i32, i32* @mrb_f_block_given_p_m, align 4
  %31 = call i32 (...) @MRB_ARGS_NONE()
  %32 = call i32 @mrb_define_method(%struct.TYPE_7__* %28, %struct.RClass* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load %struct.RClass*, %struct.RClass** %3, align 8
  %35 = load i32, i32* @mrb_obj_class_m, align 4
  %36 = call i32 (...) @MRB_ARGS_NONE()
  %37 = call i32 @mrb_define_method(%struct.TYPE_7__* %33, %struct.RClass* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = load %struct.RClass*, %struct.RClass** %3, align 8
  %40 = load i32, i32* @mrb_obj_clone, align 4
  %41 = call i32 (...) @MRB_ARGS_NONE()
  %42 = call i32 @mrb_define_method(%struct.TYPE_7__* %38, %struct.RClass* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = load %struct.RClass*, %struct.RClass** %3, align 8
  %45 = load i32, i32* @mrb_obj_dup, align 4
  %46 = call i32 (...) @MRB_ARGS_NONE()
  %47 = call i32 @mrb_define_method(%struct.TYPE_7__* %43, %struct.RClass* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = load %struct.RClass*, %struct.RClass** %3, align 8
  %50 = load i32, i32* @mrb_obj_equal_m, align 4
  %51 = call i32 @MRB_ARGS_REQ(i32 1)
  %52 = call i32 @mrb_define_method(%struct.TYPE_7__* %48, %struct.RClass* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = load %struct.RClass*, %struct.RClass** %3, align 8
  %55 = load i32, i32* @mrb_obj_extend_m, align 4
  %56 = call i32 (...) @MRB_ARGS_ANY()
  %57 = call i32 @mrb_define_method(%struct.TYPE_7__* %53, %struct.RClass* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = load %struct.RClass*, %struct.RClass** %3, align 8
  %60 = load i32, i32* @mrb_obj_freeze, align 4
  %61 = call i32 (...) @MRB_ARGS_NONE()
  %62 = call i32 @mrb_define_method(%struct.TYPE_7__* %58, %struct.RClass* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = load %struct.RClass*, %struct.RClass** %3, align 8
  %65 = load i32, i32* @mrb_obj_frozen, align 4
  %66 = call i32 (...) @MRB_ARGS_NONE()
  %67 = call i32 @mrb_define_method(%struct.TYPE_7__* %63, %struct.RClass* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = load %struct.RClass*, %struct.RClass** %3, align 8
  %70 = load i32, i32* @mrb_obj_hash, align 4
  %71 = call i32 (...) @MRB_ARGS_NONE()
  %72 = call i32 @mrb_define_method(%struct.TYPE_7__* %68, %struct.RClass* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = load %struct.RClass*, %struct.RClass** %3, align 8
  %75 = load i32, i32* @mrb_obj_init_copy, align 4
  %76 = call i32 @MRB_ARGS_REQ(i32 1)
  %77 = call i32 @mrb_define_method(%struct.TYPE_7__* %73, %struct.RClass* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = load %struct.RClass*, %struct.RClass** %3, align 8
  %80 = load i32, i32* @mrb_obj_inspect, align 4
  %81 = call i32 (...) @MRB_ARGS_NONE()
  %82 = call i32 @mrb_define_method(%struct.TYPE_7__* %78, %struct.RClass* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = load %struct.RClass*, %struct.RClass** %3, align 8
  %85 = load i32, i32* @obj_is_instance_of, align 4
  %86 = call i32 @MRB_ARGS_REQ(i32 1)
  %87 = call i32 @mrb_define_method(%struct.TYPE_7__* %83, %struct.RClass* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = load %struct.RClass*, %struct.RClass** %3, align 8
  %90 = load i32, i32* @mrb_obj_is_kind_of_m, align 4
  %91 = call i32 @MRB_ARGS_REQ(i32 1)
  %92 = call i32 @mrb_define_method(%struct.TYPE_7__* %88, %struct.RClass* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = load %struct.RClass*, %struct.RClass** %3, align 8
  %95 = load i32, i32* @mrb_f_block_given_p_m, align 4
  %96 = call i32 (...) @MRB_ARGS_NONE()
  %97 = call i32 @mrb_define_method(%struct.TYPE_7__* %93, %struct.RClass* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = load %struct.RClass*, %struct.RClass** %3, align 8
  %100 = load i32, i32* @mrb_obj_is_kind_of_m, align 4
  %101 = call i32 @MRB_ARGS_REQ(i32 1)
  %102 = call i32 @mrb_define_method(%struct.TYPE_7__* %98, %struct.RClass* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = load %struct.RClass*, %struct.RClass** %3, align 8
  %105 = load i32, i32* @mrb_obj_missing, align 4
  %106 = call i32 (...) @MRB_ARGS_ANY()
  %107 = call i32 @mrb_define_method(%struct.TYPE_7__* %103, %struct.RClass* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = load %struct.RClass*, %struct.RClass** %3, align 8
  %110 = load i32, i32* @mrb_false, align 4
  %111 = call i32 (...) @MRB_ARGS_NONE()
  %112 = call i32 @mrb_define_method(%struct.TYPE_7__* %108, %struct.RClass* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = load %struct.RClass*, %struct.RClass** %3, align 8
  %115 = load i32, i32* @mrb_obj_id_m, align 4
  %116 = call i32 (...) @MRB_ARGS_NONE()
  %117 = call i32 @mrb_define_method(%struct.TYPE_7__* %113, %struct.RClass* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = load %struct.RClass*, %struct.RClass** %3, align 8
  %120 = load i32, i32* @mrb_f_raise, align 4
  %121 = call i32 (...) @MRB_ARGS_ANY()
  %122 = call i32 @mrb_define_method(%struct.TYPE_7__* %118, %struct.RClass* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = load %struct.RClass*, %struct.RClass** %3, align 8
  %125 = load i32, i32* @mrb_obj_remove_instance_variable, align 4
  %126 = call i32 @MRB_ARGS_REQ(i32 1)
  %127 = call i32 @mrb_define_method(%struct.TYPE_7__* %123, %struct.RClass* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = load %struct.RClass*, %struct.RClass** %3, align 8
  %130 = load i32, i32* @obj_respond_to, align 4
  %131 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %132 = call i32 @mrb_define_method(%struct.TYPE_7__* %128, %struct.RClass* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = load %struct.RClass*, %struct.RClass** %3, align 8
  %135 = load i32, i32* @mrb_any_to_s, align 4
  %136 = call i32 (...) @MRB_ARGS_NONE()
  %137 = call i32 @mrb_define_method(%struct.TYPE_7__* %133, %struct.RClass* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %139 = load %struct.RClass*, %struct.RClass** %3, align 8
  %140 = load i32, i32* @mrb_obj_ceqq, align 4
  %141 = call i32 @MRB_ARGS_REQ(i32 1)
  %142 = call i32 @mrb_define_method(%struct.TYPE_7__* %138, %struct.RClass* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = load %struct.RClass*, %struct.RClass** %3, align 8
  %145 = load i32, i32* @mrb_to_int, align 4
  %146 = call i32 (...) @MRB_ARGS_NONE()
  %147 = call i32 @mrb_define_method(%struct.TYPE_7__* %143, %struct.RClass* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %149 = load %struct.RClass*, %struct.RClass** %3, align 8
  %150 = load i32, i32* @mrb_to_str, align 4
  %151 = call i32 (...) @MRB_ARGS_NONE()
  %152 = call i32 @mrb_define_method(%struct.TYPE_7__* %148, %struct.RClass* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load %struct.RClass*, %struct.RClass** %158, align 8
  %160 = call i32 @mrb_include_module(%struct.TYPE_7__* %153, i32 %156, %struct.RClass* %159)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_module(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_7__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_7__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local i32 @mrb_include_module(%struct.TYPE_7__*, i32, %struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
