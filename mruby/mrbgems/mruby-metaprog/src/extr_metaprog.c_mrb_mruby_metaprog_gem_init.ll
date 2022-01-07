; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_mruby_metaprog_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_mruby_metaprog_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.RClass*, %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"global_variables\00", align 1
@mrb_f_global_variables = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"local_variables\00", align 1
@mrb_local_variables = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"singleton_class\00", align 1
@mrb_singleton_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"instance_variable_defined?\00", align 1
@mrb_obj_ivar_defined = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"instance_variable_get\00", align 1
@mrb_obj_ivar_get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"instance_variable_set\00", align 1
@mrb_obj_ivar_set = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"instance_variables\00", align 1
@mrb_obj_instance_variables = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@mrb_obj_methods_m = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"private_methods\00", align 1
@mrb_obj_private_methods = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"protected_methods\00", align 1
@mrb_obj_protected_methods = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"public_methods\00", align 1
@mrb_obj_public_methods = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"singleton_methods\00", align 1
@mrb_obj_singleton_methods_m = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"define_singleton_method\00", align 1
@mod_define_singleton_method = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@mrb_f_send = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"class_variables\00", align 1
@mrb_mod_class_variables = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"remove_class_variable\00", align 1
@mrb_mod_remove_cvar = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"class_variable_defined?\00", align 1
@mrb_mod_cvar_defined = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"class_variable_get\00", align 1
@mrb_mod_cvar_get = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"class_variable_set\00", align 1
@mrb_mod_cvar_set = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"included_modules\00", align 1
@mrb_mod_included_modules = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"instance_methods\00", align 1
@mrb_mod_instance_methods = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"remove_method\00", align 1
@mrb_mod_remove_method = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"method_removed\00", align 1
@mrb_f_nil = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@mrb_mod_constants = common dso_local global i32 0, align 4
@mrb_mod_s_constants = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"nesting\00", align 1
@mrb_mod_s_nesting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_metaprog_gem_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load %struct.RClass*, %struct.RClass** %6, align 8
  store %struct.RClass* %7, %struct.RClass** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.RClass*, %struct.RClass** %9, align 8
  store %struct.RClass* %10, %struct.RClass** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.RClass*, %struct.RClass** %3, align 8
  %13 = load i32, i32* @mrb_f_global_variables, align 4
  %14 = call i32 (...) @MRB_ARGS_NONE()
  %15 = call i32 @mrb_define_method(%struct.TYPE_5__* %11, %struct.RClass* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = load %struct.RClass*, %struct.RClass** %3, align 8
  %18 = load i32, i32* @mrb_local_variables, align 4
  %19 = call i32 (...) @MRB_ARGS_NONE()
  %20 = call i32 @mrb_define_method(%struct.TYPE_5__* %16, %struct.RClass* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load %struct.RClass*, %struct.RClass** %3, align 8
  %23 = load i32, i32* @mrb_singleton_class, align 4
  %24 = call i32 (...) @MRB_ARGS_NONE()
  %25 = call i32 @mrb_define_method(%struct.TYPE_5__* %21, %struct.RClass* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = load %struct.RClass*, %struct.RClass** %3, align 8
  %28 = load i32, i32* @mrb_obj_ivar_defined, align 4
  %29 = call i32 @MRB_ARGS_REQ(i32 1)
  %30 = call i32 @mrb_define_method(%struct.TYPE_5__* %26, %struct.RClass* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = load %struct.RClass*, %struct.RClass** %3, align 8
  %33 = load i32, i32* @mrb_obj_ivar_get, align 4
  %34 = call i32 @MRB_ARGS_REQ(i32 1)
  %35 = call i32 @mrb_define_method(%struct.TYPE_5__* %31, %struct.RClass* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = load %struct.RClass*, %struct.RClass** %3, align 8
  %38 = load i32, i32* @mrb_obj_ivar_set, align 4
  %39 = call i32 @MRB_ARGS_REQ(i32 2)
  %40 = call i32 @mrb_define_method(%struct.TYPE_5__* %36, %struct.RClass* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = load %struct.RClass*, %struct.RClass** %3, align 8
  %43 = load i32, i32* @mrb_obj_instance_variables, align 4
  %44 = call i32 (...) @MRB_ARGS_NONE()
  %45 = call i32 @mrb_define_method(%struct.TYPE_5__* %41, %struct.RClass* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = load %struct.RClass*, %struct.RClass** %3, align 8
  %48 = load i32, i32* @mrb_obj_methods_m, align 4
  %49 = call i32 @MRB_ARGS_OPT(i32 1)
  %50 = call i32 @mrb_define_method(%struct.TYPE_5__* %46, %struct.RClass* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = load %struct.RClass*, %struct.RClass** %3, align 8
  %53 = load i32, i32* @mrb_obj_private_methods, align 4
  %54 = call i32 @MRB_ARGS_OPT(i32 1)
  %55 = call i32 @mrb_define_method(%struct.TYPE_5__* %51, %struct.RClass* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = load %struct.RClass*, %struct.RClass** %3, align 8
  %58 = load i32, i32* @mrb_obj_protected_methods, align 4
  %59 = call i32 @MRB_ARGS_OPT(i32 1)
  %60 = call i32 @mrb_define_method(%struct.TYPE_5__* %56, %struct.RClass* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = load %struct.RClass*, %struct.RClass** %3, align 8
  %63 = load i32, i32* @mrb_obj_public_methods, align 4
  %64 = call i32 @MRB_ARGS_OPT(i32 1)
  %65 = call i32 @mrb_define_method(%struct.TYPE_5__* %61, %struct.RClass* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = load %struct.RClass*, %struct.RClass** %3, align 8
  %68 = load i32, i32* @mrb_obj_singleton_methods_m, align 4
  %69 = call i32 @MRB_ARGS_OPT(i32 1)
  %70 = call i32 @mrb_define_method(%struct.TYPE_5__* %66, %struct.RClass* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = load %struct.RClass*, %struct.RClass** %3, align 8
  %73 = load i32, i32* @mod_define_singleton_method, align 4
  %74 = call i32 @MRB_ARGS_REQ(i32 1)
  %75 = call i32 (...) @MRB_ARGS_BLOCK()
  %76 = or i32 %74, %75
  %77 = call i32 @mrb_define_method(%struct.TYPE_5__* %71, %struct.RClass* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = load %struct.RClass*, %struct.RClass** %3, align 8
  %80 = load i32, i32* @mrb_f_send, align 4
  %81 = call i32 @MRB_ARGS_REQ(i32 1)
  %82 = call i32 (...) @MRB_ARGS_REST()
  %83 = or i32 %81, %82
  %84 = call i32 (...) @MRB_ARGS_BLOCK()
  %85 = or i32 %83, %84
  %86 = call i32 @mrb_define_method(%struct.TYPE_5__* %78, %struct.RClass* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %80, i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = load %struct.RClass*, %struct.RClass** %4, align 8
  %89 = load i32, i32* @mrb_mod_class_variables, align 4
  %90 = call i32 @MRB_ARGS_OPT(i32 1)
  %91 = call i32 @mrb_define_method(%struct.TYPE_5__* %87, %struct.RClass* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = load %struct.RClass*, %struct.RClass** %4, align 8
  %94 = load i32, i32* @mrb_mod_remove_cvar, align 4
  %95 = call i32 @MRB_ARGS_REQ(i32 1)
  %96 = call i32 @mrb_define_method(%struct.TYPE_5__* %92, %struct.RClass* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = load %struct.RClass*, %struct.RClass** %4, align 8
  %99 = load i32, i32* @mrb_mod_cvar_defined, align 4
  %100 = call i32 @MRB_ARGS_REQ(i32 1)
  %101 = call i32 @mrb_define_method(%struct.TYPE_5__* %97, %struct.RClass* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = load %struct.RClass*, %struct.RClass** %4, align 8
  %104 = load i32, i32* @mrb_mod_cvar_get, align 4
  %105 = call i32 @MRB_ARGS_REQ(i32 1)
  %106 = call i32 @mrb_define_method(%struct.TYPE_5__* %102, %struct.RClass* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = load %struct.RClass*, %struct.RClass** %4, align 8
  %109 = load i32, i32* @mrb_mod_cvar_set, align 4
  %110 = call i32 @MRB_ARGS_REQ(i32 2)
  %111 = call i32 @mrb_define_method(%struct.TYPE_5__* %107, %struct.RClass* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = load %struct.RClass*, %struct.RClass** %4, align 8
  %114 = load i32, i32* @mrb_mod_included_modules, align 4
  %115 = call i32 (...) @MRB_ARGS_NONE()
  %116 = call i32 @mrb_define_method(%struct.TYPE_5__* %112, %struct.RClass* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = load %struct.RClass*, %struct.RClass** %4, align 8
  %119 = load i32, i32* @mrb_mod_instance_methods, align 4
  %120 = call i32 (...) @MRB_ARGS_ANY()
  %121 = call i32 @mrb_define_method(%struct.TYPE_5__* %117, %struct.RClass* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %123 = load %struct.RClass*, %struct.RClass** %4, align 8
  %124 = load i32, i32* @mrb_mod_remove_method, align 4
  %125 = call i32 (...) @MRB_ARGS_ANY()
  %126 = call i32 @mrb_define_method(%struct.TYPE_5__* %122, %struct.RClass* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = load %struct.RClass*, %struct.RClass** %4, align 8
  %129 = load i32, i32* @mrb_f_nil, align 4
  %130 = call i32 @MRB_ARGS_REQ(i32 1)
  %131 = call i32 @mrb_define_method(%struct.TYPE_5__* %127, %struct.RClass* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = load %struct.RClass*, %struct.RClass** %4, align 8
  %134 = load i32, i32* @mrb_mod_constants, align 4
  %135 = call i32 @MRB_ARGS_OPT(i32 1)
  %136 = call i32 @mrb_define_method(%struct.TYPE_5__* %132, %struct.RClass* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = load %struct.RClass*, %struct.RClass** %4, align 8
  %139 = load i32, i32* @mrb_mod_s_constants, align 4
  %140 = call i32 (...) @MRB_ARGS_ANY()
  %141 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %137, %struct.RClass* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %143 = load %struct.RClass*, %struct.RClass** %4, align 8
  %144 = load i32, i32* @mrb_mod_s_nesting, align 4
  %145 = call i32 (...) @MRB_ARGS_NONE()
  %146 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %142, %struct.RClass* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %144, i32 %145)
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_BLOCK(...) #1

declare dso_local i32 @MRB_ARGS_REST(...) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
