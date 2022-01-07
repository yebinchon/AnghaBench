; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_ThemedPaint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_ThemedPaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@CBS_SIMPLE = common dso_local global i64 0, align 8
@CBXS_NORMAL = common dso_local global i32 0, align 4
@CBXS_DISABLED = common dso_local global i32 0, align 4
@CBF_BUTTONDOWN = common dso_local global i32 0, align 4
@CBXS_PRESSED = common dso_local global i32 0, align 4
@CBF_HOT = common dso_local global i32 0, align 4
@CBXS_HOT = common dso_local global i32 0, align 4
@CP_DROPDOWNBUTTON = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32)* @COMBO_ThemedPaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_ThemedPaint(i32 %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = call i64 @CB_GETTYPE(%struct.TYPE_5__* %9)
  %11 = load i64, i64* @CBS_SIMPLE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GetClientRect(i32 %16, i32* %8)
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = call i32 (...) @EDIT_CONTROL_PADDING()
  %23 = call i32 (...) @EDIT_CONTROL_PADDING()
  %24 = call i32 @InflateRect(i32* %8, i32 %22, i32 %23)
  %25 = call i32 (...) @COMBO_XBORDERSIZE()
  %26 = call i32 (...) @COMBO_YBORDERSIZE()
  %27 = call i32 @InflateRect(i32* %8, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %13
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IsWindowEnabled(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @CBXS_NORMAL, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @CBXS_DISABLED, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @DrawThemeBackground(i32 %29, i32 %30, i32 0, i32 %41, i32* %8, i32* null)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = call i32 @IsRectEmpty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IsWindowEnabled(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @CBXS_DISABLED, align 4
  store i32 %54, i32* %7, align 4
  br label %77

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CBF_BUTTONDOWN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @CBXS_PRESSED, align 4
  store i32 %63, i32* %7, align 4
  br label %76

64:                                               ; preds = %55
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CBF_HOT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @CBXS_HOT, align 4
  store i32 %72, i32* %7, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @CBXS_NORMAL, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @CP_DROPDOWNBUTTON, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = call i32 @DrawThemeBackground(i32 %78, i32 %79, i32 %80, i32 %81, i32* %83, i32* null)
  br label %85

85:                                               ; preds = %77, %40
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CBS_DROPDOWNLIST, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @CBS_DROPDOWNLIST, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @CBPaintText(%struct.TYPE_5__* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %85
  ret i32 0
}

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_5__*) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @InflateRect(i32*, i32, i32) #1

declare dso_local i32 @EDIT_CONTROL_PADDING(...) #1

declare dso_local i32 @COMBO_XBORDERSIZE(...) #1

declare dso_local i32 @COMBO_YBORDERSIZE(...) #1

declare dso_local i32 @DrawThemeBackground(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @IsWindowEnabled(i32) #1

declare dso_local i32 @IsRectEmpty(i32*) #1

declare dso_local i32 @CBPaintText(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
