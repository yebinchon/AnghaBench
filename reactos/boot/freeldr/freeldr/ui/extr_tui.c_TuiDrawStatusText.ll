; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawStatusText.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawStatusText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UiScreenHeight = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@UiStatusBarFgColor = common dso_local global i32 0, align 4
@UiStatusBarBgColor = common dso_local global i32 0, align 4
@UiScreenWidth = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawStatusText(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @UiScreenHeight, align 8
  %6 = sub nsw i64 %5, 1
  %7 = load i32, i32* @UiStatusBarFgColor, align 4
  %8 = load i32, i32* @UiStatusBarBgColor, align 4
  %9 = call i32 @ATTR(i32 %7, i32 %8)
  %10 = call i32 @TuiDrawText(i32 0, i64 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i64, i64* @UiScreenHeight, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @UiStatusBarFgColor, align 4
  %15 = load i32, i32* @UiStatusBarBgColor, align 4
  %16 = call i32 @ATTR(i32 %14, i32 %15)
  %17 = call i32 @TuiDrawText(i32 1, i64 %12, i8* %13, i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @UiScreenWidth, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @UiScreenHeight, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* @UiStatusBarFgColor, align 4
  %31 = load i32, i32* @UiStatusBarBgColor, align 4
  %32 = call i32 @ATTR(i32 %30, i32 %31)
  %33 = call i32 @TuiDrawText(i32 %27, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %21

37:                                               ; preds = %21
  %38 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @TuiDrawText(i32, i64, i8*, i32) #1

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @VideoCopyOffScreenBufferToVRAM(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
