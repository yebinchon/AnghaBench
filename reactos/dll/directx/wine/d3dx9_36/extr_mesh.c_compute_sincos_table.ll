; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_compute_sincos_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_compute_sincos_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sincos_table = type { i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sincos_table*, float, float, i32)* @compute_sincos_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_sincos_table(%struct.sincos_table* %0, float %1, float %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sincos_table*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store %struct.sincos_table* %0, %struct.sincos_table** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* @HeapAlloc(i32 %12, i32 0, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.sincos_table*, %struct.sincos_table** %6, align 8
  %20 = getelementptr inbounds %struct.sincos_table, %struct.sincos_table* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.sincos_table*, %struct.sincos_table** %6, align 8
  %22 = getelementptr inbounds %struct.sincos_table, %struct.sincos_table* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i8* @HeapAlloc(i32 %28, i32 0, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.sincos_table*, %struct.sincos_table** %6, align 8
  %36 = getelementptr inbounds %struct.sincos_table, %struct.sincos_table* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.sincos_table*, %struct.sincos_table** %6, align 8
  %38 = getelementptr inbounds %struct.sincos_table, %struct.sincos_table* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %27
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load %struct.sincos_table*, %struct.sincos_table** %6, align 8
  %44 = getelementptr inbounds %struct.sincos_table, %struct.sincos_table* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @HeapFree(i32 %42, i32 0, i32* %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %5, align 4
  br label %79

48:                                               ; preds = %27
  %49 = load float, float* %7, align 4
  store float %49, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %74, %48
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load float, float* %10, align 4
  %56 = call i32 @sinf(float %55)
  %57 = load %struct.sincos_table*, %struct.sincos_table** %6, align 8
  %58 = getelementptr inbounds %struct.sincos_table, %struct.sincos_table* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load float, float* %10, align 4
  %64 = call i32 @cosf(float %63)
  %65 = load %struct.sincos_table*, %struct.sincos_table** %6, align 8
  %66 = getelementptr inbounds %struct.sincos_table, %struct.sincos_table* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load float, float* %8, align 4
  %72 = load float, float* %10, align 4
  %73 = fadd float %72, %71
  store float %73, float* %10, align 4
  br label %74

74:                                               ; preds = %54
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %41, %25
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @sinf(float) #1

declare dso_local i32 @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
