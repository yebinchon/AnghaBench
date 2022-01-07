; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_new_swizzle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_new_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_swizzle = type { i32, %struct.hlsl_ir_node*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.source_location, i32 }
%struct.source_location = type { i32 }
%struct.hlsl_ir_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HLSL_IR_SWIZZLE = common dso_local global i32 0, align 4
@HLSL_CLASS_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlsl_ir_swizzle* (i32, i32, %struct.hlsl_ir_node*, %struct.source_location*)* @new_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlsl_ir_swizzle* @new_swizzle(i32 %0, i32 %1, %struct.hlsl_ir_node* %2, %struct.source_location* %3) #0 {
  %5 = alloca %struct.hlsl_ir_swizzle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hlsl_ir_node*, align 8
  %9 = alloca %struct.source_location*, align 8
  %10 = alloca %struct.hlsl_ir_swizzle*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.hlsl_ir_node* %2, %struct.hlsl_ir_node** %8, align 8
  store %struct.source_location* %3, %struct.source_location** %9, align 8
  %11 = call %struct.hlsl_ir_swizzle* @d3dcompiler_alloc(i32 32)
  store %struct.hlsl_ir_swizzle* %11, %struct.hlsl_ir_swizzle** %10, align 8
  %12 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %10, align 8
  %13 = icmp ne %struct.hlsl_ir_swizzle* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %5, align 8
  br label %44

15:                                               ; preds = %4
  %16 = load i32, i32* @HLSL_IR_SWIZZLE, align 4
  %17 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %10, align 8
  %18 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %10, align 8
  %21 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.source_location*, %struct.source_location** %9, align 8
  %24 = bitcast %struct.source_location* %22 to i8*
  %25 = bitcast %struct.source_location* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load i32, i32* @HLSL_CLASS_VECTOR, align 4
  %27 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %8, align 8
  %28 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @new_hlsl_type(i32* null, i32 %26, i32 %31, i32 %32, i32 1)
  %34 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %10, align 8
  %35 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %8, align 8
  %38 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %10, align 8
  %39 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %38, i32 0, i32 1
  store %struct.hlsl_ir_node* %37, %struct.hlsl_ir_node** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %10, align 8
  %42 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %10, align 8
  store %struct.hlsl_ir_swizzle* %43, %struct.hlsl_ir_swizzle** %5, align 8
  br label %44

44:                                               ; preds = %15, %14
  %45 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %5, align 8
  ret %struct.hlsl_ir_swizzle* %45
}

declare dso_local %struct.hlsl_ir_swizzle* @d3dcompiler_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @new_hlsl_type(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
