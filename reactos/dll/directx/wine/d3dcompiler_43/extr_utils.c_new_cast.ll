; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_cast.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_expr = type { i32 }
%struct.hlsl_ir_node = type { %struct.hlsl_type* }
%struct.hlsl_type = type { i32 }
%struct.source_location = type { i32 }

@HLSL_IR_UNOP_CAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_ir_expr* @new_cast(%struct.hlsl_ir_node* %0, %struct.hlsl_type* %1, %struct.source_location* %2) #0 {
  %4 = alloca %struct.hlsl_ir_node*, align 8
  %5 = alloca %struct.hlsl_type*, align 8
  %6 = alloca %struct.source_location*, align 8
  %7 = alloca %struct.hlsl_ir_node*, align 8
  store %struct.hlsl_ir_node* %0, %struct.hlsl_ir_node** %4, align 8
  store %struct.hlsl_type* %1, %struct.hlsl_type** %5, align 8
  store %struct.source_location* %2, %struct.source_location** %6, align 8
  %8 = load i32, i32* @HLSL_IR_UNOP_CAST, align 4
  %9 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %4, align 8
  %10 = load %struct.source_location*, %struct.source_location** %6, align 8
  %11 = getelementptr inbounds %struct.source_location, %struct.source_location* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hlsl_ir_node* @new_unary_expr(i32 %8, %struct.hlsl_ir_node* %9, i32 %12)
  store %struct.hlsl_ir_node* %13, %struct.hlsl_ir_node** %7, align 8
  %14 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %7, align 8
  %15 = icmp ne %struct.hlsl_ir_node* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %18 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %7, align 8
  %19 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %18, i32 0, i32 0
  store %struct.hlsl_type* %17, %struct.hlsl_type** %19, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %7, align 8
  %22 = call %struct.hlsl_ir_expr* @expr_from_node(%struct.hlsl_ir_node* %21)
  ret %struct.hlsl_ir_expr* %22
}

declare dso_local %struct.hlsl_ir_node* @new_unary_expr(i32, %struct.hlsl_ir_node*, i32) #1

declare dso_local %struct.hlsl_ir_expr* @expr_from_node(%struct.hlsl_ir_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
