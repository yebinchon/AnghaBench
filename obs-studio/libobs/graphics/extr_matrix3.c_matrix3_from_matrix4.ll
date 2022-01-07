; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_from_matrix4.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_from_matrix4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { float, i32 }
%struct.TYPE_14__ = type { float, i32 }
%struct.TYPE_13__ = type { float, i32 }
%struct.TYPE_16__ = type { float, i32 }
%struct.matrix4 = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix3_from_matrix4(%struct.matrix3* %0, %struct.matrix4* %1) #0 {
  %3 = alloca %struct.matrix3*, align 8
  %4 = alloca %struct.matrix4*, align 8
  store %struct.matrix3* %0, %struct.matrix3** %3, align 8
  store %struct.matrix4* %1, %struct.matrix4** %4, align 8
  %5 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %6 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %10 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %13 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %17 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %20 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %24 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %27 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %31 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %34 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store float 0.000000e+00, float* %35, align 4
  %36 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %37 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store float 0.000000e+00, float* %38, align 4
  %39 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %40 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store float 0.000000e+00, float* %41, align 4
  %42 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %43 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store float 0.000000e+00, float* %44, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
