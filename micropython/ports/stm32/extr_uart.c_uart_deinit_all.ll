; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_uart.c_uart_deinit_all.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_uart.c_uart_deinit_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@pyb_uart_obj_all = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_deinit_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @pyb_uart_obj_all, align 4
  %6 = call %struct.TYPE_5__** @MP_STATE_PORT(i32 %5)
  %7 = call i32 @MP_ARRAY_SIZE(%struct.TYPE_5__** %6)
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load i32, i32* @pyb_uart_obj_all, align 4
  %11 = call %struct.TYPE_5__** @MP_STATE_PORT(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %11, i64 %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %2, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = call i32 @uart_deinit(%struct.TYPE_5__* %24)
  %26 = load i32, i32* @pyb_uart_obj_all, align 4
  %27 = call %struct.TYPE_5__** @MP_STATE_PORT(i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %27, i64 %29
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %30, align 8
  br label %31

31:                                               ; preds = %23, %18, %9
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %3

35:                                               ; preds = %3
  ret void
}

declare dso_local i32 @MP_ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local %struct.TYPE_5__** @MP_STATE_PORT(i32) #1

declare dso_local i32 @uart_deinit(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
