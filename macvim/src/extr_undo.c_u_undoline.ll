; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_undo.c_u_undoline.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_undo.c_u_undoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@undo_off = common dso_local global i64 0, align 8
@curbuf = common dso_local global %struct.TYPE_8__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u_undoline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @undo_off, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %95

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11, %6
  %21 = call i32 (...) @beep_flush()
  br label %95

22:                                               ; preds = %11
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i64 @u_savecommon(i64 %26, i64 %30, i32 0, i32 %31)
  %33 = load i64, i64* @FAIL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %95

36:                                               ; preds = %22
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32* @u_save_line(i64 %39)
  store i32* %40, i32** %2, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @do_outofmem_msg(i32 0)
  br label %95

45:                                               ; preds = %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @ml_replace(i64 %48, i32* %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @changed_bytes(i64 %56, i32 0)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @vim_free(i32* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %1, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %45
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %45
  %84 = load i32, i32* %1, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = call i32 (...) @check_cursor_col()
  br label %95

95:                                               ; preds = %83, %43, %35, %20, %5
  ret void
}

declare dso_local i32 @beep_flush(...) #1

declare dso_local i64 @u_savecommon(i64, i64, i32, i32) #1

declare dso_local i32* @u_save_line(i64) #1

declare dso_local i32 @do_outofmem_msg(i32) #1

declare dso_local i32 @ml_replace(i64, i32*, i32) #1

declare dso_local i32 @changed_bytes(i64, i32) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32 @check_cursor_col(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
