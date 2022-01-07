; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ffunicode.c_ff_oem2uni.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ffunicode.c_ff_oem2uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FF_CODE_PAGE = common dso_local global i64 0, align 8
@oem2uni = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_oem2uni(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %6, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @FF_CODE_PAGE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load i32, i32* @oem2uni, align 4
  %21 = load i64, i64* @FF_CODE_PAGE, align 8
  %22 = call i32* @CVTBL(i32 %20, i64 %21)
  store i32* %22, i32** %5, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 16, i32* %8, align 4
  br label %23

23:                                               ; preds = %56, %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sdiv i32 %30, 2
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %59

42:                                               ; preds = %26
  %43 = load i32, i32* %3, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %43, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %9, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  br label %23

59:                                               ; preds = %41, %23
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %62, %59
  br label %71

71:                                               ; preds = %70, %15
  br label %72

72:                                               ; preds = %71, %13
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32* @CVTBL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
