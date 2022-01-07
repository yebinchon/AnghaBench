; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_handle_rx.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8* }

@DFU_CLRSTATUS = common dso_local global i32 0, align 4
@DFU_STATUS_IDLE = common dso_local global i8* null, align 8
@dfu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DFU_CMD_NONE = common dso_local global i8* null, align 8
@DFU_ABORT = common dso_local global i32 0, align 4
@DFU_DNLOAD = common dso_local global i32 0, align 4
@DFU_CMD_EXIT = common dso_local global i8* null, align 8
@DFU_CMD_DNLOAD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @dfu_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfu_handle_rx(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DFU_CLRSTATUS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i8*, i8** @DFU_STATUS_IDLE, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 4), align 8
  %14 = load i8*, i8** @DFU_CMD_NONE, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 3), align 8
  br label %42

15:                                               ; preds = %4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DFU_ABORT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** @DFU_STATUS_IDLE, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 4), align 8
  %21 = load i8*, i8** @DFU_CMD_NONE, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 3), align 8
  br label %41

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DFU_DNLOAD, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8*, i8** @DFU_CMD_EXIT, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 3), align 8
  br label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** @DFU_CMD_DNLOAD, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 3), align 8
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 2), align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %29
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
