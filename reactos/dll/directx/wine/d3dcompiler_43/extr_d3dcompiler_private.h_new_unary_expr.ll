; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_d3dcompiler_private.h_new_unary_expr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_d3dcompiler_private.h_new_unary_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_node = type { i32 }
%struct.source_location = type { i32 }
%struct.TYPE_2__ = type { %struct.hlsl_ir_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlsl_ir_node* (i32, %struct.hlsl_ir_node*, i32)* @new_unary_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlsl_ir_node* @new_unary_expr(i32 %0, %struct.hlsl_ir_node* %1, i32 %2) #0 {
  %4 = alloca %struct.source_location, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hlsl_ir_node*, align 8
  %7 = alloca [3 x %struct.hlsl_ir_node*], align 16
  %8 = getelementptr inbounds %struct.source_location, %struct.source_location* %4, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  store i32 %0, i32* %5, align 4
  store %struct.hlsl_ir_node* %1, %struct.hlsl_ir_node** %6, align 8
  %9 = getelementptr inbounds [3 x %struct.hlsl_ir_node*], [3 x %struct.hlsl_ir_node*]* %7, i64 0, i64 0
  %10 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  store %struct.hlsl_ir_node* %10, %struct.hlsl_ir_node** %9, align 8
  %11 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %9, i64 1
  %12 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %9, i64 3
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi %struct.hlsl_ir_node** [ %11, %3 ], [ %15, %13 ]
  store %struct.hlsl_ir_node* null, %struct.hlsl_ir_node** %14, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %14, i64 1
  %16 = icmp eq %struct.hlsl_ir_node** %15, %12
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [3 x %struct.hlsl_ir_node*], [3 x %struct.hlsl_ir_node*]* %7, i64 0, i64 0
  %20 = call %struct.TYPE_2__* @new_expr(i32 %18, %struct.hlsl_ir_node** %19, %struct.source_location* %4)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  ret %struct.hlsl_ir_node* %21
}

declare dso_local %struct.TYPE_2__* @new_expr(i32, %struct.hlsl_ir_node**, %struct.source_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
