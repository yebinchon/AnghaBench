; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_process.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@dfu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DFU_STATUS_MANIFEST = common dso_local global i64 0, align 8
@DFU_STATUS_BUSY = common dso_local global i64 0, align 8
@DFU_CMD_DNLOAD = common dso_local global i64 0, align 8
@DFU_CMD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dfu_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfu_process() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %2 = load i64, i64* @DFU_STATUS_MANIFEST, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @do_reset()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %8 = load i64, i64* @DFU_STATUS_BUSY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 8
  %12 = load i64, i64* @DFU_CMD_DNLOAD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i64, i64* @DFU_CMD_NONE, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 8
  %16 = call i64 (...) @dfu_process_dnload()
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %14, %10
  br label %18

18:                                               ; preds = %17, %6
  ret void
}

declare dso_local i32 @do_reset(...) #1

declare dso_local i64 @dfu_process_dnload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
