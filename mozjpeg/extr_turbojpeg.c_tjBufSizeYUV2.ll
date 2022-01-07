; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjBufSizeYUV2.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjBufSizeYUV2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMSUBOPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tjBufSizeYUV2(): Invalid argument\00", align 1
@TJSAMP_GRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tjBufSizeYUV2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NUMSUBOPT, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %4
  %23 = call i32 @_throwg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @TJSAMP_GRAY, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 3
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %59, %24
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @tjPlaneWidth(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @PAD(i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @tjPlaneHeight(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %34
  store i64 -1, i64* %5, align 8
  br label %66

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %30

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %63, %51
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @_throwg(i8*) #1

declare dso_local i32 @tjPlaneWidth(i32, i32, i32) #1

declare dso_local i32 @PAD(i32, i32) #1

declare dso_local i32 @tjPlaneHeight(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
