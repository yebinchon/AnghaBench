; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_destroy.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_11__**, i32* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__**)* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__**)* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__**)* }

@players = common dso_local global %struct.TYPE_8__* null, align 8
@outputMix = common dso_local global %struct.TYPE_10__** null, align 8
@engine = common dso_local global %struct.TYPE_9__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slplay_destroy() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @players, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %1, align 8
  br label %3

3:                                                ; preds = %25, %0
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %12 = icmp ne %struct.TYPE_11__** %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_11__**)*, i32 (%struct.TYPE_11__**)** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %23 = call i32 %19(%struct.TYPE_11__** %22)
  br label %24

24:                                               ; preds = %13, %8
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 1
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %1, align 8
  br label %3

28:                                               ; preds = %3
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @outputMix, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**)** %31, align 8
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @outputMix, align 8
  %34 = call i32 %32(%struct.TYPE_10__** %33)
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @engine, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_9__**)*, i32 (%struct.TYPE_9__**)** %37, align 8
  %39 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @engine, align 8
  %40 = call i32 %38(%struct.TYPE_9__** %39)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
