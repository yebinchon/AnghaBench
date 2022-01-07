; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action.c_action_exec.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action.c_action_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"\0A---- action_exec: start -----\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"EVENT: \00", align 1
@FAUXCLICKY_ACTION_PRESS = common dso_local global i32 0, align 4
@FAUXCLICKY_ACTION_RELEASE = common dso_local global i32 0, align 4
@ONESHOT_OTHER_KEY_PRESSED = common dso_local global i32 0, align 4
@retro_tapping_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_exec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @IS_NOEVENT(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = call i32 @dprint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @dprint(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @debug_event(i32 %10)
  %12 = call i32 (...) @dprintln()
  br label %13

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @action_tapping_process(i32 %17)
  ret void
}

declare dso_local i32 @IS_NOEVENT(i32) #1

declare dso_local i32 @dprint(i8*) #1

declare dso_local i32 @debug_event(i32) #1

declare dso_local i32 @dprintln(...) #1

declare dso_local i32 @action_tapping_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
