; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_func_decl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_func_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_function_decl = type { %struct.list*, %struct.hlsl_type* }
%struct.hlsl_type = type { i32 }
%struct.list = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_ir_function_decl* @new_func_decl(%struct.hlsl_type* %0, %struct.list* %1) #0 {
  %3 = alloca %struct.hlsl_ir_function_decl*, align 8
  %4 = alloca %struct.hlsl_type*, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.hlsl_ir_function_decl*, align 8
  store %struct.hlsl_type* %0, %struct.hlsl_type** %4, align 8
  store %struct.list* %1, %struct.list** %5, align 8
  %7 = call %struct.hlsl_ir_function_decl* @d3dcompiler_alloc(i32 16)
  store %struct.hlsl_ir_function_decl* %7, %struct.hlsl_ir_function_decl** %6, align 8
  %8 = load %struct.hlsl_ir_function_decl*, %struct.hlsl_ir_function_decl** %6, align 8
  %9 = icmp ne %struct.hlsl_ir_function_decl* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_ir_function_decl* null, %struct.hlsl_ir_function_decl** %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %14 = load %struct.hlsl_ir_function_decl*, %struct.hlsl_ir_function_decl** %6, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_function_decl, %struct.hlsl_ir_function_decl* %14, i32 0, i32 1
  store %struct.hlsl_type* %13, %struct.hlsl_type** %15, align 8
  %16 = load %struct.list*, %struct.list** %5, align 8
  %17 = load %struct.hlsl_ir_function_decl*, %struct.hlsl_ir_function_decl** %6, align 8
  %18 = getelementptr inbounds %struct.hlsl_ir_function_decl, %struct.hlsl_ir_function_decl* %17, i32 0, i32 0
  store %struct.list* %16, %struct.list** %18, align 8
  %19 = load %struct.hlsl_ir_function_decl*, %struct.hlsl_ir_function_decl** %6, align 8
  store %struct.hlsl_ir_function_decl* %19, %struct.hlsl_ir_function_decl** %3, align 8
  br label %20

20:                                               ; preds = %12, %10
  %21 = load %struct.hlsl_ir_function_decl*, %struct.hlsl_ir_function_decl** %3, align 8
  ret %struct.hlsl_ir_function_decl* %21
}

declare dso_local %struct.hlsl_ir_function_decl* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
