; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_mul.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32 }
%struct.vec4 = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix4_mul(%struct.matrix4* %0, %struct.matrix4* %1, %struct.matrix4* %2) #0 {
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca %struct.matrix4*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca %struct.vec4*, align 8
  %8 = alloca float*, align 8
  %9 = alloca [4 x %struct.vec4], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vec4, align 8
  store %struct.matrix4* %0, %struct.matrix4** %4, align 8
  store %struct.matrix4* %1, %struct.matrix4** %5, align 8
  store %struct.matrix4* %2, %struct.matrix4** %6, align 8
  %13 = load %struct.matrix4*, %struct.matrix4** %5, align 8
  %14 = bitcast %struct.matrix4* %13 to %struct.vec4*
  store %struct.vec4* %14, %struct.vec4** %7, align 8
  %15 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %16 = bitcast %struct.matrix4* %15 to float*
  store float* %16, float** %8, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %66, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %69

20:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %62, %20
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load float*, float** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %30, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %36, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 12
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %42, i64 %45
  %47 = load float, float* %46, align 4
  %48 = call i32 @vec4_set(%struct.vec4* %12, float %29, float %35, float %41, float %47)
  %49 = load %struct.vec4*, %struct.vec4** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.vec4, %struct.vec4* %49, i64 %51
  %53 = call i32 @vec4_dot(%struct.vec4* %52, %struct.vec4* %12)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x %struct.vec4], [4 x %struct.vec4]* %9, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.vec4, %struct.vec4* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %53, i32* %61, align 4
  br label %62

62:                                               ; preds = %24
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %21

65:                                               ; preds = %21
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %17

69:                                               ; preds = %17
  %70 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %71 = getelementptr inbounds [4 x %struct.vec4], [4 x %struct.vec4]* %9, i64 0, i64 0
  %72 = bitcast %struct.vec4* %71 to %struct.matrix4*
  %73 = call i32 @matrix4_copy(%struct.matrix4* %70, %struct.matrix4* %72)
  ret void
}

declare dso_local i32 @vec4_set(%struct.vec4*, float, float, float, float) #1

declare dso_local i32 @vec4_dot(%struct.vec4*, %struct.vec4*) #1

declare dso_local i32 @matrix4_copy(%struct.matrix4*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
