; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_find_longest_lnum.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_find_longest_lnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@p_go = common dso_local global i32 0, align 4
@GO_HORSCROLL = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_7__* null, align 8
@curbuf = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @gui_find_longest_lnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gui_find_longest_lnum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %5 = load i32, i32* @p_go, align 4
  %6 = load i32, i32* @GO_HORSCROLL, align 4
  %7 = call i32* @vim_strchr(i32 %5, i32 %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %86

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %12, %16
  br i1 %17, label %18, label %86

18:                                               ; preds = %9
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = icmp sle i64 %30, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %27
  store i64 0, i64* %4, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %82, %37
  %42 = load i64, i64* %2, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %41
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @scroll_line_len(i64 %48)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %3, align 8
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %2, align 8
  store i64 %55, i64* %1, align 8
  br label %81

56:                                               ; preds = %47
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i64, i64* %2, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %61, %65
  %67 = trunc i64 %66 to i32
  %68 = call i64 @abs(i32 %67)
  %69 = load i64, i64* %1, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %69, %73
  %75 = trunc i64 %74 to i32
  %76 = call i64 @abs(i32 %75)
  %77 = icmp slt i64 %68, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i64, i64* %2, align 8
  store i64 %79, i64* %1, align 8
  br label %80

80:                                               ; preds = %78, %60, %56
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %2, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %2, align 8
  br label %41

85:                                               ; preds = %41
  br label %91

86:                                               ; preds = %27, %18, %9, %0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %1, align 8
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i64, i64* %1, align 8
  ret i64 %92
}

declare dso_local i32* @vim_strchr(i32, i32) #1

declare dso_local i64 @scroll_line_len(i64) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
