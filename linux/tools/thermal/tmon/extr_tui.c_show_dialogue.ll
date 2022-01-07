; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_show_dialogue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_show_dialogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@dialogue_window = common dso_local global i32* null, align 8
@tui_disabled = common dso_local global i64 0, align 8
@maxx = common dso_local global i32 0, align 4
@DIAG_TITLE = common dso_local global i8* null, align 8
@ptdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"%C-%.12s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Set Temp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%C-%.10s-%2d\00", align 1
@A_BOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Enter Choice [A-Z]?\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Legend: A=Active, P=Passive, C=Critical\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_dialogue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load i32*, i32** @dialogue_window, align 8
  store i32* %7, i32** %6, align 8
  %8 = load i64, i64* @tui_disabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %0
  br label %100

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @getmaxyx(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @werase(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @box(i32* %22, i32 0, i32 0)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @maxx, align 4
  %26 = sdiv i32 %25, 4
  %27 = load i8*, i8** @DIAG_TITLE, align 8
  %28 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %24, i32 0, i32 %26, i8* %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %80, %14
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 0), align 8
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = load i32, i32* %1, align 4
  %35 = call i32 (...) @diag_dev_rows()
  %36 = srem i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %1, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 20
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %39, %33
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 0), align 8
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 65, %55
  %57 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %50, i32 %52, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %79

58:                                               ; preds = %45
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 65, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %59, i32 %61, i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %71, i32 %77)
  br label %79

79:                                               ; preds = %58, %49
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %29

83:                                               ; preds = %29
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @A_BOLD, align 4
  %86 = call i32 @wattron(i32* %84, i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 (...) @diag_dev_rows()
  %89 = add nsw i32 %88, 1
  %90 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %87, i32 %89, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @A_BOLD, align 4
  %93 = call i32 @wattroff(i32* %91, i32 %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, 2
  %97 = call i32 (i32*, i32, i32, i8*, ...) @mvwprintw(i32* %94, i32 %96, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32*, i32** @dialogue_window, align 8
  %99 = call i32 @wrefresh(i32* %98)
  br label %100

100:                                              ; preds = %83, %13
  ret void
}

declare dso_local i32 @getmaxyx(i32*, i32, i32) #1

declare dso_local i32 @werase(i32*) #1

declare dso_local i32 @box(i32*, i32, i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @diag_dev_rows(...) #1

declare dso_local i32 @wattron(i32*, i32) #1

declare dso_local i32 @wattroff(i32*, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
