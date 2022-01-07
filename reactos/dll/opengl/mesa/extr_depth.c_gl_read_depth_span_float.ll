; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_depth.c_gl_read_depth_span_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_depth.c_gl_read_depth_span_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@DEPTH_SCALE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_read_depth_span_float(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca float, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %14 = load float, float* @DEPTH_SCALE, align 4
  %15 = fdiv float 1.000000e+00, %14
  store float %15, float* %12, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64* @Z_ADDRESS(%struct.TYPE_6__* %23, i32 %24, i32 %25)
  store i64* %26, i64** %11, align 8
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %42, %22
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to float
  %37 = load float, float* %12, align 4
  %38 = fmul float %36, %37
  %39 = load float*, float** %10, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds float, float* %39, i64 %40
  store float %38, float* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %13, align 8
  br label %27

45:                                               ; preds = %27
  br label %59

46:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load float*, float** %10, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds float, float* %52, i64 %53
  store float 0.000000e+00, float* %54, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %47

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %45
  ret void
}

declare dso_local i64* @Z_ADDRESS(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
