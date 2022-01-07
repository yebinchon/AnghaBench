; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_get_3x3_submatrix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_get_3x3_submatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, %struct.matrix4*, i32, i32)* @get_3x3_submatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_3x3_submatrix(float* %0, %struct.matrix4* %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store %struct.matrix4* %1, %struct.matrix4** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %15 = bitcast %struct.matrix4* %14 to float*
  store float* %15, float** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %73, %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %76

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %12, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %33

32:                                               ; preds = %25
  br label %73

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %23
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %69, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %72

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %13, align 4
  br label %53

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %52

51:                                               ; preds = %44
  br label %69

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %42
  %54 = load float*, float** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %54, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %5, align 8
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %63, 3
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %62, i64 %67
  store float %61, float* %68, align 4
  br label %69

69:                                               ; preds = %53, %51
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %35

72:                                               ; preds = %35
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %16

76:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
