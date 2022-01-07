; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_mruby_method_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_mrb_mruby_method_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.RClass*, %struct.RClass*, i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"UnboundMethod\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@unbound_method_bind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"super_method\00", align 1
@method_super_method = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@method_eql = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"eql?\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@method_to_s = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"arity\00", align 1
@method_arity = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"source_location\00", align 1
@method_source_location = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@method_parameters = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"bind_call\00", align 1
@method_bcall = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@method_owner = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@method_name = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@method_call = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@method_unbind = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"receiver\00", align 1
@method_receiver = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@mrb_kernel_method = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"instance_method\00", align 1
@mrb_module_instance_method = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_method_gem_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.RClass* @mrb_define_class(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.RClass* %9, %struct.RClass** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.RClass* @mrb_define_class(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store %struct.RClass* %14, %struct.RClass** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = load %struct.RClass*, %struct.RClass** %3, align 8
  %17 = call i32 @mrb_undef_class_method(%struct.TYPE_6__* %15, %struct.RClass* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load %struct.RClass*, %struct.RClass** %3, align 8
  %20 = load i32, i32* @unbound_method_bind, align 4
  %21 = call i32 @MRB_ARGS_REQ(i32 1)
  %22 = call i32 @mrb_define_method(%struct.TYPE_6__* %18, %struct.RClass* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = load %struct.RClass*, %struct.RClass** %3, align 8
  %25 = load i32, i32* @method_super_method, align 4
  %26 = call i32 (...) @MRB_ARGS_NONE()
  %27 = call i32 @mrb_define_method(%struct.TYPE_6__* %23, %struct.RClass* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = load %struct.RClass*, %struct.RClass** %3, align 8
  %30 = load i32, i32* @method_eql, align 4
  %31 = call i32 @MRB_ARGS_REQ(i32 1)
  %32 = call i32 @mrb_define_method(%struct.TYPE_6__* %28, %struct.RClass* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = load %struct.RClass*, %struct.RClass** %3, align 8
  %35 = load i32, i32* @method_eql, align 4
  %36 = call i32 @MRB_ARGS_REQ(i32 1)
  %37 = call i32 @mrb_define_method(%struct.TYPE_6__* %33, %struct.RClass* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = load %struct.RClass*, %struct.RClass** %3, align 8
  %40 = load i32, i32* @method_to_s, align 4
  %41 = call i32 (...) @MRB_ARGS_NONE()
  %42 = call i32 @mrb_define_method(%struct.TYPE_6__* %38, %struct.RClass* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = load %struct.RClass*, %struct.RClass** %3, align 8
  %45 = load i32, i32* @method_to_s, align 4
  %46 = call i32 (...) @MRB_ARGS_NONE()
  %47 = call i32 @mrb_define_method(%struct.TYPE_6__* %43, %struct.RClass* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = load %struct.RClass*, %struct.RClass** %3, align 8
  %50 = load i32, i32* @method_arity, align 4
  %51 = call i32 (...) @MRB_ARGS_NONE()
  %52 = call i32 @mrb_define_method(%struct.TYPE_6__* %48, %struct.RClass* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = load %struct.RClass*, %struct.RClass** %3, align 8
  %55 = load i32, i32* @method_source_location, align 4
  %56 = call i32 (...) @MRB_ARGS_NONE()
  %57 = call i32 @mrb_define_method(%struct.TYPE_6__* %53, %struct.RClass* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = load %struct.RClass*, %struct.RClass** %3, align 8
  %60 = load i32, i32* @method_parameters, align 4
  %61 = call i32 (...) @MRB_ARGS_NONE()
  %62 = call i32 @mrb_define_method(%struct.TYPE_6__* %58, %struct.RClass* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = load %struct.RClass*, %struct.RClass** %3, align 8
  %65 = load i32, i32* @method_bcall, align 4
  %66 = call i32 @MRB_ARGS_REQ(i32 1)
  %67 = call i32 (...) @MRB_ARGS_ANY()
  %68 = or i32 %66, %67
  %69 = call i32 @mrb_define_method(%struct.TYPE_6__* %63, %struct.RClass* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = load %struct.RClass*, %struct.RClass** %3, align 8
  %72 = load i32, i32* @method_owner, align 4
  %73 = call i32 (...) @MRB_ARGS_NONE()
  %74 = call i32 @mrb_define_method(%struct.TYPE_6__* %70, %struct.RClass* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = load %struct.RClass*, %struct.RClass** %3, align 8
  %77 = load i32, i32* @method_name, align 4
  %78 = call i32 (...) @MRB_ARGS_NONE()
  %79 = call i32 @mrb_define_method(%struct.TYPE_6__* %75, %struct.RClass* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = load %struct.RClass*, %struct.RClass** %4, align 8
  %82 = call i32 @mrb_undef_class_method(%struct.TYPE_6__* %80, %struct.RClass* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = load %struct.RClass*, %struct.RClass** %4, align 8
  %85 = load i32, i32* @method_eql, align 4
  %86 = call i32 @MRB_ARGS_REQ(i32 1)
  %87 = call i32 @mrb_define_method(%struct.TYPE_6__* %83, %struct.RClass* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %89 = load %struct.RClass*, %struct.RClass** %4, align 8
  %90 = load i32, i32* @method_eql, align 4
  %91 = call i32 @MRB_ARGS_REQ(i32 1)
  %92 = call i32 @mrb_define_method(%struct.TYPE_6__* %88, %struct.RClass* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = load %struct.RClass*, %struct.RClass** %4, align 8
  %95 = load i32, i32* @method_to_s, align 4
  %96 = call i32 (...) @MRB_ARGS_NONE()
  %97 = call i32 @mrb_define_method(%struct.TYPE_6__* %93, %struct.RClass* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = load %struct.RClass*, %struct.RClass** %4, align 8
  %100 = load i32, i32* @method_to_s, align 4
  %101 = call i32 (...) @MRB_ARGS_NONE()
  %102 = call i32 @mrb_define_method(%struct.TYPE_6__* %98, %struct.RClass* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = load %struct.RClass*, %struct.RClass** %4, align 8
  %105 = load i32, i32* @method_call, align 4
  %106 = call i32 (...) @MRB_ARGS_ANY()
  %107 = call i32 @mrb_define_method(%struct.TYPE_6__* %103, %struct.RClass* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = load %struct.RClass*, %struct.RClass** %4, align 8
  %110 = load i32, i32* @method_call, align 4
  %111 = call i32 (...) @MRB_ARGS_ANY()
  %112 = call i32 @mrb_define_method(%struct.TYPE_6__* %108, %struct.RClass* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = load %struct.RClass*, %struct.RClass** %4, align 8
  %115 = load i32, i32* @method_unbind, align 4
  %116 = call i32 (...) @MRB_ARGS_NONE()
  %117 = call i32 @mrb_define_method(%struct.TYPE_6__* %113, %struct.RClass* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %119 = load %struct.RClass*, %struct.RClass** %4, align 8
  %120 = load i32, i32* @method_super_method, align 4
  %121 = call i32 (...) @MRB_ARGS_NONE()
  %122 = call i32 @mrb_define_method(%struct.TYPE_6__* %118, %struct.RClass* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %124 = load %struct.RClass*, %struct.RClass** %4, align 8
  %125 = load i32, i32* @method_arity, align 4
  %126 = call i32 (...) @MRB_ARGS_NONE()
  %127 = call i32 @mrb_define_method(%struct.TYPE_6__* %123, %struct.RClass* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = load %struct.RClass*, %struct.RClass** %4, align 8
  %130 = load i32, i32* @method_source_location, align 4
  %131 = call i32 (...) @MRB_ARGS_NONE()
  %132 = call i32 @mrb_define_method(%struct.TYPE_6__* %128, %struct.RClass* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %134 = load %struct.RClass*, %struct.RClass** %4, align 8
  %135 = load i32, i32* @method_parameters, align 4
  %136 = call i32 (...) @MRB_ARGS_NONE()
  %137 = call i32 @mrb_define_method(%struct.TYPE_6__* %133, %struct.RClass* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %139 = load %struct.RClass*, %struct.RClass** %4, align 8
  %140 = load i32, i32* @method_owner, align 4
  %141 = call i32 (...) @MRB_ARGS_NONE()
  %142 = call i32 @mrb_define_method(%struct.TYPE_6__* %138, %struct.RClass* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %144 = load %struct.RClass*, %struct.RClass** %4, align 8
  %145 = load i32, i32* @method_receiver, align 4
  %146 = call i32 (...) @MRB_ARGS_NONE()
  %147 = call i32 @mrb_define_method(%struct.TYPE_6__* %143, %struct.RClass* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %149 = load %struct.RClass*, %struct.RClass** %4, align 8
  %150 = load i32, i32* @method_name, align 4
  %151 = call i32 (...) @MRB_ARGS_NONE()
  %152 = call i32 @mrb_define_method(%struct.TYPE_6__* %148, %struct.RClass* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load %struct.RClass*, %struct.RClass** %155, align 8
  %157 = load i32, i32* @mrb_kernel_method, align 4
  %158 = call i32 @MRB_ARGS_REQ(i32 1)
  %159 = call i32 @mrb_define_method(%struct.TYPE_6__* %153, %struct.RClass* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.RClass*, %struct.RClass** %162, align 8
  %164 = load i32, i32* @mrb_module_instance_method, align 4
  %165 = call i32 @MRB_ARGS_REQ(i32 1)
  %166 = call i32 @mrb_define_method(%struct.TYPE_6__* %160, %struct.RClass* %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %164, i32 %165)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @mrb_undef_class_method(%struct.TYPE_6__*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_6__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
