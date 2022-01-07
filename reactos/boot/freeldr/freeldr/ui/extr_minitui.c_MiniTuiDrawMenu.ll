; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_minitui.c_MiniTuiDrawMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_minitui.c_MiniTuiDrawMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i64, i8*, i32)* }
%struct.TYPE_6__ = type { i8*, i8*, i64, i64, i64, i64 }

@UiVtbl = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@UiMenuFgColor = common dso_local global i32 0, align 4
@UiMenuBgColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Use \18 and \19 to move the highlight to your choice.\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Press ENTER to choose.\00", align 1
@UiScreenHeight = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MiniTuiDrawMenu(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call i32 (...) @UiDrawBackdrop()
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32 (i32, i64, i8*, i32)*, i32 (i32, i64, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @UiVtbl, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @UiMenuFgColor, align 4
  %20 = load i32, i32* @UiMenuBgColor, align 4
  %21 = call i32 @ATTR(i32 %19, i32 %20)
  %22 = call i32 %11(i32 0, i64 %15, i8* %18, i32 %21)
  br label %23

23:                                               ; preds = %10, %1
  %24 = load i32 (i32, i64, i8*, i32)*, i32 (i32, i64, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @UiVtbl, i32 0, i32 0), align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i32, i32* @UiMenuFgColor, align 4
  %30 = load i32, i32* @UiMenuBgColor, align 4
  %31 = call i32 @ATTR(i32 %29, i32 %30)
  %32 = call i32 %24(i32 0, i64 %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32 (i32, i64, i8*, i32)*, i32 (i32, i64, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @UiVtbl, i32 0, i32 0), align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  %38 = load i32, i32* @UiMenuFgColor, align 4
  %39 = load i32, i32* @UiMenuBgColor, align 4
  %40 = call i32 @ATTR(i32 %38, i32 %39)
  %41 = call i32 %33(i32 0, i64 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %23
  %47 = load i32 (i32, i64, i8*, i32)*, i32 (i32, i64, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @UiVtbl, i32 0, i32 0), align 8
  %48 = load i64, i64* @UiScreenHeight, align 8
  %49 = sub nsw i64 %48, 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @UiMenuFgColor, align 4
  %54 = load i32, i32* @UiMenuBgColor, align 4
  %55 = call i32 @ATTR(i32 %53, i32 %54)
  %56 = call i32 %47(i32 0, i64 %49, i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %46, %23
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i32 @TuiDrawMenuBox(%struct.TYPE_6__* %58)
  store i64 0, i64* %4, align 8
  br label %60

60:                                               ; preds = %70, %57
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @TuiDrawMenuItem(%struct.TYPE_6__* %67, i64 %68)
  br label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %4, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %4, align 8
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (...) @DisplayBootTimeOptions()
  br label %80

80:                                               ; preds = %78, %73
  %81 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @UiDrawBackdrop(...) #1

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i32 @TuiDrawMenuBox(%struct.TYPE_6__*) #1

declare dso_local i32 @TuiDrawMenuItem(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @DisplayBootTimeOptions(...) #1

declare dso_local i32 @VideoCopyOffScreenBufferToVRAM(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
