; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_rcv_enq.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_rcv_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rcv_head = common dso_local global i32 0, align 4
@MUX_RCV_BUF_SIZE = common dso_local global i32 0, align 4
@rcv_tail = common dso_local global i32 0, align 4
@rcv_buf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @rcv_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcv_enq(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i32, i32* @rcv_head, align 4
  %5 = add nsw i32 %4, 1
  %6 = load i32, i32* @MUX_RCV_BUF_SIZE, align 4
  %7 = srem i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @rcv_tail, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i8, i8* %2, align 1
  %13 = load i8*, i8** @rcv_buf, align 8
  %14 = load i32, i32* @rcv_head, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8 %12, i8* %16, align 1
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @rcv_head, align 4
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
