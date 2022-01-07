; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_ui.c_UiInfoBox.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_ui.c_UiInfoBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UiScreenWidth = common dso_local global i32 0, align 4
@UiScreenHeight = common dso_local global i32 0, align 4
@VERT = common dso_local global i32 0, align 4
@HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UiMenuFgColor = common dso_local global i32 0, align 4
@UiMenuBgColor = common dso_local global i32 0, align 4
@UiTextColor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UiInfoBox(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %43, %1
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %42

31:                                               ; preds = %20
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %32, %33
  %35 = load i64, i64* %5, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %16

46:                                               ; preds = %16
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 6
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %6, align 8
  %51 = load i32, i32* @UiScreenWidth, align 4
  %52 = sdiv i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = udiv i64 %54, 2
  %56 = sub i64 %53, %55
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* @UiScreenHeight, align 4
  %58 = sdiv i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = udiv i64 %60, 2
  %62 = sub i64 %59, %61
  store i64 %62, i64* %11, align 8
  %63 = load i32, i32* @UiScreenWidth, align 4
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %5, align 8
  %67 = udiv i64 %66, 2
  %68 = add i64 %65, %67
  store i64 %68, i64* %12, align 8
  %69 = load i32, i32* @UiScreenHeight, align 4
  %70 = sdiv i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %6, align 8
  %73 = udiv i64 %72, 2
  %74 = add i64 %71, %73
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i32, i32* @VERT, align 4
  %80 = load i32, i32* @HORZ, align 4
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32, i32* @UiMenuFgColor, align 4
  %84 = load i32, i32* @UiMenuBgColor, align 4
  %85 = call i32 @ATTR(i32 %83, i32 %84)
  %86 = call i32 @UiDrawBox(i64 %75, i64 %76, i64 %77, i64 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %85)
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load i32, i32* @UiTextColor, align 4
  %93 = load i32, i32* @UiMenuBgColor, align 4
  %94 = call i32 @ATTR(i32 %92, i32 %93)
  %95 = call i32 @UiDrawCenteredText(i64 %87, i64 %88, i64 %89, i64 %90, i8* %91, i32 %94)
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @UiDrawBox(i64, i64, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i32 @UiDrawCenteredText(i64, i64, i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
