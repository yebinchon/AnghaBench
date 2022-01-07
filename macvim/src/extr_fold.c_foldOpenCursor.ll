; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_fold.c_foldOpenCursor.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_fold.c_foldOpenCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@curwin = common dso_local global %struct.TYPE_6__* null, align 8
@DONE_NOTHING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DONE_ACTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foldOpenCursor() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %3 = call i32 @checkupdate(%struct.TYPE_6__* %2)
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %5 = call i64 @hasAnyFolding(%struct.TYPE_6__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32, i32* @DONE_NOTHING, align 4
  store i32 %9, i32* %1, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @setManualFold(i32 %13, i32 %14, i32 %15, i32* %1)
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @DONE_ACTION, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  br label %23

22:                                               ; preds = %8
  br label %8

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %0
  ret void
}

declare dso_local i32 @checkupdate(%struct.TYPE_6__*) #1

declare dso_local i64 @hasAnyFolding(%struct.TYPE_6__*) #1

declare dso_local i32 @setManualFold(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
