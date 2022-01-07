; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_usart.c_pbuf_enqueue.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_usart.c_pbuf_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SREG = common dso_local global i32 0, align 4
@pbuf_head = common dso_local global i32 0, align 4
@PBUF_SIZE = common dso_local global i32 0, align 4
@pbuf_tail = common dso_local global i32 0, align 4
@pbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"pbuf: full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pbuf_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pbuf_enqueue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @SREG, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @cli()
  %7 = load i32, i32* @pbuf_head, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* @PBUF_SIZE, align 4
  %10 = srem i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @pbuf_tail, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32*, i32** @pbuf, align 8
  %17 = load i32, i32* @pbuf_head, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* @pbuf_head, align 4
  br label %23

21:                                               ; preds = %1
  %22 = call i32 @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* @SREG, align 4
  ret void
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
