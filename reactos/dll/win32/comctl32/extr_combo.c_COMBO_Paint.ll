; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_Paint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_COMBO_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"hdc=%p\0A\00", align 1
@CBF_EDIT = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i64 0, align 8
@COLOR_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @COMBO_Paint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_Paint(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @COMBO_PrepareColors(%struct.TYPE_8__* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @SelectObject(i32 %13, i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CBF_EDIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @FillRect(i32 %23, i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CBPaintBorder(i32 %31, %struct.TYPE_8__* %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = call i32 @IsRectEmpty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CBPaintButton(%struct.TYPE_8__* %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %28
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = call i64 @CB_GETTYPE(%struct.TYPE_8__* %47)
  %49 = load i64, i64* @CBS_DROPDOWNLIST, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = call i32 (...) @EDIT_CONTROL_PADDING()
  %56 = call i32 (...) @EDIT_CONTROL_PADDING()
  %57 = call i32 @InflateRect(i32* %7, i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @COLOR_WINDOW, align 4
  %60 = call i32 @GetSysColorBrush(i32 %59)
  %61 = call i32 @FrameRect(i32 %58, i32* %7, i32 %60)
  br label %62

62:                                               ; preds = %51, %46
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CBF_EDIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @CBPaintText(%struct.TYPE_8__* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @SelectObject(i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %73
  ret i32 0
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @COMBO_PrepareColors(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @FillRect(i32, i32*, i64) #1

declare dso_local i32 @CBPaintBorder(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @IsRectEmpty(i32*) #1

declare dso_local i32 @CBPaintButton(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_8__*) #1

declare dso_local i32 @InflateRect(i32*, i32, i32) #1

declare dso_local i32 @EDIT_CONTROL_PADDING(...) #1

declare dso_local i32 @FrameRect(i32, i32*, i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @CBPaintText(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
