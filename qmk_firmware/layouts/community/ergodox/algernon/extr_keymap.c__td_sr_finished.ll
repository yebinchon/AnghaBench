; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c__td_sr_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c__td_sr_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@KC_MSTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CMD:reflash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @_td_sr_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_td_sr_finished(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @KC_MSTP, align 4
  %11 = call i32 @register_code(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = call i32 @uprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @wait_ms(i32 1000)
  %20 = call i32 (...) @reset_keyboard()
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = call i32 @reset_tap_dance(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i32 @reset_tap_dance(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
