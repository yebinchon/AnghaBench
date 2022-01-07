; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_digraph.c_listdigraphs.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_digraph.c_listdigraphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@digraphdefault = common dso_local global %struct.TYPE_5__* null, align 8
@NUL = common dso_local global i64 0, align 8
@got_int = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@user_digraphs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CLEAR = common dso_local global i32 0, align 4
@must_redraw = common dso_local global i32 0, align 4
@has_mbyte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listdigraphs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call i32 @msg_putchar(i8 signext 10)
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @digraphdefault, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %37, %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NUL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load i32, i32* @got_int, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i1 [ false, %5 ], [ %14, %11 ]
  br i1 %16, label %17, label %40

17:                                               ; preds = %15
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @getexactdigraph(i64 %20, i32 %23, i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = call i32 @printdigraph(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %30, %17
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 1
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %2, align 8
  %36 = call i32 (...) @ui_breakcheck()
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %5

40:                                               ; preds = %15
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @user_digraphs, i32 0, i32 1), align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %59, %40
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @user_digraphs, i32 0, i32 0), align 8
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @got_int, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = call i32 @printdigraph(%struct.TYPE_5__* %54)
  %56 = call i32 (...) @ui_breakcheck()
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %2, align 8
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %43

62:                                               ; preds = %51
  %63 = load i32, i32* @CLEAR, align 4
  store i32 %63, i32* @must_redraw, align 4
  ret void
}

declare dso_local i32 @msg_putchar(i8 signext) #1

declare dso_local i32 @getexactdigraph(i64, i32, i32) #1

declare dso_local i32 @printdigraph(%struct.TYPE_5__*) #1

declare dso_local i32 @ui_breakcheck(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
