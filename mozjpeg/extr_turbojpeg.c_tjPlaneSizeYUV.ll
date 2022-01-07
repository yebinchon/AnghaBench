; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjPlaneSizeYUV.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjPlaneSizeYUV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMSUBOPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"tjPlaneSizeYUV(): Invalid argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tjPlaneSizeYUV(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %27, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @NUMSUBOPT, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20, %17, %5
  %28 = call i32 @_throwg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @tjPlaneWidth(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @tjPlaneHeight(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %29
  store i64 -1, i64* %6, align 8
  br label %62

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %9, align 4
  br label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @abs(i32 %50) #3
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, 1
  %56 = mul nsw i32 %53, %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %60, %43
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i32 @_throwg(i8*) #1

declare dso_local i32 @tjPlaneWidth(i32, i32, i32) #1

declare dso_local i32 @tjPlaneHeight(i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
