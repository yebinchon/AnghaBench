; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action.c_process_record.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action.c_process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ACTION: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" layer_state: \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" default_layer_state: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_record(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = bitcast %struct.TYPE_7__* %5 to i64*
  %7 = load i64, i64* %6, align 4
  %8 = call i64 @IS_NOEVENT(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i32 @process_record_quantum(%struct.TYPE_6__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %37

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @store_or_get_action(i32 %20, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = call i32 @dprint(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @debug_action(i32 %27)
  %29 = call i32 @dprint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (...) @layer_debug()
  %31 = call i32 @dprint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 (...) @default_layer_debug()
  %33 = call i32 (...) @dprintln()
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @process_action(%struct.TYPE_6__* %34, i32 %35)
  br label %37

37:                                               ; preds = %16, %15, %10
  ret void
}

declare dso_local i64 @IS_NOEVENT(i64) #1

declare dso_local i32 @process_record_quantum(%struct.TYPE_6__*) #1

declare dso_local i32 @store_or_get_action(i32, i32) #1

declare dso_local i32 @dprint(i8*) #1

declare dso_local i32 @debug_action(i32) #1

declare dso_local i32 @layer_debug(...) #1

declare dso_local i32 @default_layer_debug(...) #1

declare dso_local i32 @dprintln(...) #1

declare dso_local i32 @process_action(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
