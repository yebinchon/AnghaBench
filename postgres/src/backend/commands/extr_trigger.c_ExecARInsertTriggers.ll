; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecARInsertTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecARInsertTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@TRIGGER_EVENT_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecARInsertTriggers(i32* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17, %5
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %17
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = load i32, i32* @TRIGGER_EVENT_INSERT, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = call i32 @AfterTriggerSaveEvent(i32* %31, %struct.TYPE_10__* %32, i32 %33, i32 1, i32* null, i32* %34, i32* %35, i32* null, %struct.TYPE_9__* %36)
  br label %38

38:                                               ; preds = %30, %25, %22
  ret void
}

declare dso_local i32 @AfterTriggerSaveEvent(i32*, %struct.TYPE_10__*, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
