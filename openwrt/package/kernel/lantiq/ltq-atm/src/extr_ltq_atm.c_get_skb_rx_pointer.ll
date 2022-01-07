; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_get_skb_rx_pointer.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_get_skb_rx_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }

@KSEG1 = common dso_local global i32 0, align 4
@KSEG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid skb - skb = %#08x, dataptr = %#08x\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"invalid skb - skb = %#08x, skb->data = %#08x, dataptr = %#08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32)* @get_skb_rx_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_skb_rx_pointer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sub i32 %5, 1
  %7 = shl i32 %6, 2
  %8 = load i32, i32* @KSEG1, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.sk_buff**
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = ptrtoint %struct.sk_buff* %14 to i32
  %16 = load i32, i32* @KSEG0, align 4
  %17 = icmp uge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = ptrtoint %struct.sk_buff* %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i32, i8*, i32, i32, ...) @ASSERT(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @KSEG1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %2, align 4
  %30 = shl i32 %29, 2
  %31 = load i32, i32* @KSEG1, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %28, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = ptrtoint %struct.sk_buff* %35 to i32
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = call i32 (i32, i8*, i32, i32, ...) @ASSERT(i32 %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %43
}

declare dso_local i32 @ASSERT(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
