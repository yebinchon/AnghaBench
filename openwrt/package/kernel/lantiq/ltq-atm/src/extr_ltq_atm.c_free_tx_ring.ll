; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.connection* }
%struct.connection = type { i32, %struct.sk_buff**, %struct.TYPE_4__* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@g_atm_priv_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@dma_tx_descriptor_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tx_ring(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.connection*, %struct.connection** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %7, i64 %9
  store %struct.connection* %10, %struct.connection** %5, align 8
  %11 = load %struct.connection*, %struct.connection** %5, align 8
  %12 = icmp ne %struct.connection* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.connection*, %struct.connection** %5, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %63, %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @dma_tx_descriptor_length, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %23
  %34 = load %struct.connection*, %struct.connection** %5, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 1
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %33
  %43 = load %struct.connection*, %struct.connection** %5, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 1
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %45, i64 %47
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %6, align 8
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 1
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  store %struct.sk_buff* null, %struct.sk_buff** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @atm_free_tx_skb_vcc(%struct.sk_buff* %56, i32 %60)
  br label %62

62:                                               ; preds = %42, %33, %23
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %19

66:                                               ; preds = %19
  %67 = load %struct.connection*, %struct.connection** %5, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 0
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atm_free_tx_skb_vcc(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
