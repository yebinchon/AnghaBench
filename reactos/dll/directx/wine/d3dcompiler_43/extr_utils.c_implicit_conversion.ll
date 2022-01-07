; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_implicit_conversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_implicit_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_node = type { i32 }
%struct.hlsl_type = type { i32 }
%struct.source_location = type { i32 }
%struct.TYPE_2__ = type { %struct.hlsl_ir_node }

@.str = private unnamed_addr constant [41 x i8] c"Implicit conversion of expression to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlsl_ir_node* (%struct.hlsl_ir_node*, %struct.hlsl_type*, %struct.source_location*)* @implicit_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlsl_ir_node* @implicit_conversion(%struct.hlsl_ir_node* %0, %struct.hlsl_type* %1, %struct.source_location* %2) #0 {
  %4 = alloca %struct.hlsl_ir_node*, align 8
  %5 = alloca %struct.hlsl_ir_node*, align 8
  %6 = alloca %struct.hlsl_type*, align 8
  %7 = alloca %struct.source_location*, align 8
  store %struct.hlsl_ir_node* %0, %struct.hlsl_ir_node** %5, align 8
  store %struct.hlsl_type* %1, %struct.hlsl_type** %6, align 8
  store %struct.source_location* %2, %struct.source_location** %7, align 8
  %8 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %9 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %12 = call i64 @compare_hlsl_types(i32 %10, %struct.hlsl_type* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  store %struct.hlsl_ir_node* %15, %struct.hlsl_ir_node** %4, align 8
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %18 = call i32 @debug_hlsl_type(%struct.hlsl_type* %17)
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %21 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %22 = load %struct.source_location*, %struct.source_location** %7, align 8
  %23 = call %struct.TYPE_2__* @new_cast(%struct.hlsl_ir_node* %20, %struct.hlsl_type* %21, %struct.source_location* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.hlsl_ir_node* %24, %struct.hlsl_ir_node** %4, align 8
  br label %25

25:                                               ; preds = %16, %14
  %26 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %4, align 8
  ret %struct.hlsl_ir_node* %26
}

declare dso_local i64 @compare_hlsl_types(i32, %struct.hlsl_type*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_hlsl_type(%struct.hlsl_type*) #1

declare dso_local %struct.TYPE_2__* @new_cast(%struct.hlsl_ir_node*, %struct.hlsl_type*, %struct.source_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
