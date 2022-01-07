; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5200/extr_w5200.c_WIZCHIP_READ.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5200/extr_w5200.c_WIZCHIP_READ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*, i32)*, i32 (i32*, i32)* }

@WIZCHIP = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WIZCHIP_READ(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @WIZCHIP_CRITICAL_ENTER()
  %6 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @WIZCHIP, i32 0, i32 0, i32 1), align 8
  %7 = call i32 (...) %6()
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 8
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 1, i32* %14, align 4
  %15 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @WIZCHIP, i32 0, i32 1, i32 0, i32 1), align 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %17 = call i32 %15(i32* %16, i32 4)
  %18 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @WIZCHIP, i32 0, i32 1, i32 0, i32 0), align 8
  %19 = call i32 %18(i32* %4, i32 1)
  %20 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @WIZCHIP, i32 0, i32 0, i32 0), align 8
  %21 = call i32 (...) %20()
  %22 = call i32 (...) @WIZCHIP_CRITICAL_EXIT()
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @WIZCHIP_CRITICAL_ENTER(...) #1

declare dso_local i32 @WIZCHIP_CRITICAL_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
