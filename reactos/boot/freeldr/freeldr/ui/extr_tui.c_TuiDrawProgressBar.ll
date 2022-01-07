; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawProgressBar.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawProgressBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERT = common dso_local global i32 0, align 4
@HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UiMenuFgColor = common dso_local global i32 0, align 4
@UiMenuBgColor = common dso_local global i32 0, align 4
@UiTextColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\DB\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\B2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawProgressBar(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sub nsw i32 %20, 3
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %17, align 4
  %24 = sub nsw i32 %23, 4
  %25 = call i32 @UiTruncateStringEllipsis(i32 %22, i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %29, %7
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @VERT, align 4
  %37 = load i32, i32* @HORZ, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32, i32* @UiMenuFgColor, align 4
  %41 = load i32, i32* @UiMenuBgColor, align 4
  %42 = call i32 @ATTR(i32 %40, i32 %41)
  %43 = call i32 @TuiDrawBox(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 2
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 2
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 2
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @UiTextColor, align 4
  %54 = load i32, i32* @UiMenuBgColor, align 4
  %55 = call i32 @ATTR(i32 %53, i32 %54)
  %56 = call i32 @TuiDrawCenteredText(i32 %45, i32 %47, i32 %49, i32 %51, i32 %52, i32 %55)
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %76, %31
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %17, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = sdiv i32 %61, %62
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 2
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 2
  %72 = load i32, i32* @UiTextColor, align 4
  %73 = load i32, i32* @UiMenuBgColor, align 4
  %74 = call i32 @ATTR(i32 %72, i32 %73)
  %75 = call i32 @TuiDrawText(i32 %69, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %57

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 2
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 2
  %91 = load i32, i32* @UiTextColor, align 4
  %92 = load i32, i32* @UiMenuBgColor, align 4
  %93 = call i32 @ATTR(i32 %91, i32 %92)
  %94 = call i32 @TuiDrawText(i32 %88, i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %80

98:                                               ; preds = %80
  %99 = call i32 (...) @TuiUpdateDateTime()
  %100 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i32 @UiTruncateStringEllipsis(i32, i32) #1

declare dso_local i32 @TuiDrawBox(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i32 @TuiDrawCenteredText(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TuiDrawText(i32, i32, i8*, i32) #1

declare dso_local i32 @TuiUpdateDateTime(...) #1

declare dso_local i32 @VideoCopyOffScreenBufferToVRAM(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
