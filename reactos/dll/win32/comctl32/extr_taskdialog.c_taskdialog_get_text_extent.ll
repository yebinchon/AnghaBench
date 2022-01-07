; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_get_text_extent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_get_text_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskdialog_template_desc = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@DIALOG_SPACING = common dso_local global i32 0, align 4
@taskdialog_get_text_extent.nulW = internal constant i32 0, align 4
@COMCTL32_hModule = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to load text\0A\00", align 1
@DT_LEFT = common dso_local global i32 0, align 4
@DT_EXPANDTABS = common dso_local global i32 0, align 4
@DT_CALCRECT = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.taskdialog_template_desc*, i32*, i64, %struct.TYPE_7__*)* @taskdialog_get_text_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taskdialog_get_text_extent(%struct.taskdialog_template_desc* %0, i32* %1, i64 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.taskdialog_template_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.taskdialog_template_desc* %0, %struct.taskdialog_template_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %17 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %18 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DIALOG_SPACING, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sub nsw i32 %19, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 7
  store i32 0, i32* %28, align 4
  store i32* null, i32** %10, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @IS_INTRESOURCE(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %4
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %37 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @COMCTL32_hModule, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %40, %35 ], [ %42, %41 ]
  %45 = load i32*, i32** %6, align 8
  %46 = ptrtoint i32* %45 to i32
  %47 = bitcast i32** %10 to i32*
  %48 = call i32 @LoadStringW(i32 %44, i32 %46, i32* %47, i32 0)
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* @taskdialog_get_text_extent.nulW, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %43
  br label %57

53:                                               ; preds = %4
  %54 = load i32*, i32** %6, align 8
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @strlenW(i32* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %52
  %58 = call i32 @GetDC(i32 0)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %61 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @SelectObject(i32 %59, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %66 = call i32 @dialogunits_to_pixels(%struct.taskdialog_template_desc* %64, i64* %65, i32* null)
  %67 = load i32, i32* %13, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @DT_LEFT, align 4
  %71 = load i32, i32* @DT_EXPANDTABS, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @DT_CALCRECT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @DT_WORDBREAK, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @DrawTextW(i32 %67, i32* %68, i32 %69, %struct.TYPE_8__* %9, i32 %76)
  %78 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %81 = call i32 @pixels_to_dialogunits(%struct.taskdialog_template_desc* %78, i64* %79, i64* %80)
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @SelectObject(i32 %82, i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @ReleaseDC(i32 0, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %88, %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %95, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  ret void
}

declare dso_local i64 @IS_INTRESOURCE(i32*) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @dialogunits_to_pixels(%struct.taskdialog_template_desc*, i64*, i32*) #1

declare dso_local i32 @DrawTextW(i32, i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @pixels_to_dialogunits(%struct.taskdialog_template_desc*, i64*, i64*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
