; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_move.c_do_check_cursorbind.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_move.c_do_check_cursorbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i8*, %struct.TYPE_5__, i64, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@curwin = common dso_local global %struct.TYPE_6__* null, align 8
@curbuf = common dso_local global i32* null, align 8
@VIsual_select = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i32 0, align 4
@firstwin = common dso_local global %struct.TYPE_6__* null, align 8
@restart_edit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VALID = common dso_local global i32 0, align 4
@has_mbyte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_check_cursorbind() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %1, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  %25 = load i32*, i32** @curbuf, align 8
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* @VIsual_select, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @VIsual_active, align 4
  store i32 %27, i32* %9, align 4
  store i32 0, i32* @VIsual_active, align 4
  store i32 0, i32* @VIsual_select, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @firstwin, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** @curwin, align 8
  br label %29

29:                                               ; preds = %74, %0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** @curbuf, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = icmp ne %struct.TYPE_6__* %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = load i32, i32* %1, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @restart_edit, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i8*, i8** @TRUE, align 8
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* @restart_edit, align 4
  %62 = call i32 (...) @check_cursor()
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* @restart_edit, align 4
  %64 = load i32, i32* @VALID, align 4
  %65 = call i32 @redraw_later(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %44
  %71 = call i32 (...) @update_topline()
  br label %72

72:                                               ; preds = %70, %44
  br label %73

73:                                               ; preds = %72, %39, %32
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** @curwin, align 8
  br label %29

78:                                               ; preds = %29
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* @VIsual_select, align 4
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* @VIsual_active, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** @curwin, align 8
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** @curbuf, align 8
  ret void
}

declare dso_local i32 @check_cursor(...) #1

declare dso_local i32 @redraw_later(i32) #1

declare dso_local i32 @update_topline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
