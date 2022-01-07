; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_right.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@NUL = common dso_local global i64 0, align 8
@curwin = common dso_local global %struct.TYPE_7__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@p_ww = common dso_local global i32 0, align 4
@curbuf = common dso_local global %struct.TYPE_8__* null, align 8
@FDO_HOR = common dso_local global i32 0, align 4
@KeyTyped = common dso_local global i64 0, align 8
@fdo_flags = common dso_local global i32 0, align 4
@has_mbyte = common dso_local global i64 0, align 8
@revins_chars = common dso_local global i64 0, align 8
@revins_legal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_right() #0 {
  %1 = call i32 (...) @undisplay_dollar()
  %2 = call i64 (...) @gchar_cursor()
  %3 = load i64, i64* @NUL, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = call i32 @start_arrow(%struct.TYPE_6__* %7)
  %9 = load i8*, i8** @TRUE, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  br label %49

17:                                               ; preds = %0
  %18 = load i32, i32* @p_ww, align 4
  %19 = call i32* @vim_strchr(i32 %18, i8 signext 93)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @start_arrow(%struct.TYPE_6__* %33)
  %35 = load i8*, i8** @TRUE, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %48

46:                                               ; preds = %21, %17
  %47 = call i32 (...) @vim_beep()
  br label %48

48:                                               ; preds = %46, %31
  br label %49

49:                                               ; preds = %48, %5
  ret void
}

declare dso_local i32 @undisplay_dollar(...) #1

declare dso_local i64 @gchar_cursor(...) #1

declare dso_local i32 @start_arrow(%struct.TYPE_6__*) #1

declare dso_local i32* @vim_strchr(i32, i8 signext) #1

declare dso_local i32 @vim_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
