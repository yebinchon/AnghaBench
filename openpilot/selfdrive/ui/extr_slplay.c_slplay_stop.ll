; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_stop.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__**, i32)* }

@loop_start = common dso_local global i64 0, align 8
@SL_PLAYSTATE_PAUSED = common dso_local global i32 0, align 4
@SL_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to set SL_PLAYSTATE_STOPPED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slplay_stop(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__** %9, %struct.TYPE_6__*** %5, align 8
  store i64 0, i64* @loop_start, align 8
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64 (%struct.TYPE_6__**, i32)*, i64 (%struct.TYPE_6__**, i32)** %12, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %15 = load i32, i32* @SL_PLAYSTATE_PAUSED, align 4
  %16 = call i64 %13(%struct.TYPE_6__** %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %22

22:                                               ; preds = %20, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
