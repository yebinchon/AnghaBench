; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_socket.c__sl_TruncatePayloadByProtocol.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_socket.c__sl_TruncatePayloadByProtocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SL_SOCKET_PAYLOAD_BASE = common dso_local global i32 0, align 4
@_SlPayloadByProtocolLUT = common dso_local global i32* null, align 8
@SL_SOCKET_PAYLOAD_TYPE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sl_TruncatePayloadByProtocol(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @SL_SOCKET_PAYLOAD_BASE, align 4
  %8 = load i32*, i32** @_SlPayloadByProtocolLUT, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SL_SOCKET_PAYLOAD_TYPE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = ashr i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %7, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
