; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_convert_fixed_to_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_convert_fixed_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, float }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { float, float }
%struct.TYPE_8__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_9__*, i32, i32)* @convert_fixed_to_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @convert_fixed_to_float(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = bitcast %struct.TYPE_9__* %9 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %7, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = bitcast %struct.TYPE_9__* %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = fdiv float %25, 6.553600e+04
  %27 = fadd float %21, %26
  %28 = load i32, i32* %6, align 4
  %29 = uitofp i32 %28 to float
  %30 = fdiv float %27, %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store float %30, float* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fdiv float %40, 6.553600e+04
  %42 = fadd float %36, %41
  %43 = load i32, i32* %6, align 4
  %44 = uitofp i32 %43 to float
  %45 = fdiv float %42, %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store float %45, float* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 1
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %4, align 8
  br label %11

50:                                               ; preds = %11
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
