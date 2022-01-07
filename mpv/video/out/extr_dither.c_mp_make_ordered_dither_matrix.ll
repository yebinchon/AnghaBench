; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_dither.c_mp_make_ordered_dither_matrix.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_dither.c_mp_make_ordered_dither_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_make_ordered_dither_matrix(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 1
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %87, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %90

16:                                               ; preds = %12
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds i32, i32* %17, i64 1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = mul nsw i32 %24, %26
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %28, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %83, %16
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %78, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul nsw i32 %52, 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 3, %54
  %56 = mul nsw i32 %55, 256
  %57 = load i32, i32* %4, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = sdiv i32 %58, %59
  %61 = add nsw i32 %53, %60
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %63, i64 %72
  store i8 %62, i8* %73, align 1
  br label %74

74:                                               ; preds = %44
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %40

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %33

82:                                               ; preds = %33
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %29

86:                                               ; preds = %29
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 %88, 2
  store i32 %89, i32* %5, align 4
  br label %12

90:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
