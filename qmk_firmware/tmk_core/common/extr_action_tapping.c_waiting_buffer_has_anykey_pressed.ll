; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_tapping.c_waiting_buffer_has_anykey_pressed.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_tapping.c_waiting_buffer_has_anykey_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@waiting_buffer_tail = common dso_local global i32 0, align 4
@waiting_buffer_head = common dso_local global i32 0, align 4
@waiting_buffer = common dso_local global %struct.TYPE_4__* null, align 8
@WAITING_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waiting_buffer_has_anykey_pressed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @waiting_buffer_tail, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @waiting_buffer_head, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @waiting_buffer, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %25

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @WAITING_BUFFER_SIZE, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %4

24:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
