; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_rcv_deq.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_rcv_deq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rcv_head = common dso_local global i32 0, align 4
@rcv_tail = common dso_local global i32 0, align 4
@rcv_buf = common dso_local global i8* null, align 8
@MUX_RCV_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @rcv_deq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @rcv_deq() #0 {
  %1 = alloca i8, align 1
  store i8 0, i8* %1, align 1
  %2 = load i32, i32* @rcv_head, align 4
  %3 = load i32, i32* @rcv_tail, align 4
  %4 = icmp ne i32 %2, %3
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i8*, i8** @rcv_buf, align 8
  %7 = load i32, i32* @rcv_tail, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @rcv_tail, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %1, align 1
  %12 = load i32, i32* @MUX_RCV_BUF_SIZE, align 4
  %13 = load i32, i32* @rcv_tail, align 4
  %14 = srem i32 %13, %12
  store i32 %14, i32* @rcv_tail, align 4
  br label %15

15:                                               ; preds = %5, %0
  %16 = load i8, i8* %1, align 1
  ret i8 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
