; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_tx_packets.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_tx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.TYPE_7__*, i64, %struct.ag71xx_ring }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ag71xx_ring = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ag71xx_desc = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: processing TX ring\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: %d packets sent out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*, i32)* @ag71xx_tx_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_tx_packets(%struct.ag71xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ag71xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ag71xx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ag71xx_desc*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 3
  store %struct.ag71xx_ring* %17, %struct.ag71xx_ring** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %19 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @BIT(i32 %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @BIT(i32 %25)
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %28 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %138, %98, %2
  %34 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %40 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %139

43:                                               ; preds = %33
  %44 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %51, i32 %52)
  store %struct.ag71xx_desc* %53, %struct.ag71xx_desc** %14, align 8
  %54 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.sk_buff*, %struct.sk_buff** %60, align 8
  store %struct.sk_buff* %61, %struct.sk_buff** %15, align 8
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %43
  %65 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %14, align 8
  %66 = call i32 @ag71xx_desc_empty(%struct.ag71xx_desc* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %64
  %69 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %70 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %75 = call i64 @ag71xx_check_dma_stuck(%struct.ag71xx* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %79 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %78, i32 0, i32 0
  %80 = load i32, i32* @HZ, align 4
  %81 = sdiv i32 %80, 2
  %82 = call i32 @schedule_delayed_work(i32* %79, i32 %81)
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %77, %73, %68
  br label %139

84:                                               ; preds = %64, %43
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* @DESC_EMPTY, align 4
  %89 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %14, align 8
  %90 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %33

99:                                               ; preds = %93
  %100 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  %102 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %103 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %108, align 8
  %109 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %110 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %109, i32 0, i32 2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %125 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %131, %99
  %129 = load i32, i32* %12, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %133 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %134 = load i32, i32* @TX_STATUS_PS, align 4
  %135 = call i32 @ag71xx_wr(%struct.ag71xx* %132, i32 %133, i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %12, align 4
  br label %128

138:                                              ; preds = %128
  br label %33

139:                                              ; preds = %83, %33
  %140 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %141 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %198

150:                                              ; preds = %139
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %153 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %152, i32 0, i32 1
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %151
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %161 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %159
  store i32 %166, i32* %164, align 4
  %167 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %168 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %167, i32 0, i32 1
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @netdev_completed_queue(%struct.TYPE_7__* %169, i32 %170, i32 %171)
  %173 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %174 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %177 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %175, %178
  %180 = load i32, i32* %9, align 4
  %181 = mul nsw i32 %180, 3
  %182 = sdiv i32 %181, 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %150
  %185 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %186 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %185, i32 0, i32 1
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = call i32 @netif_wake_queue(%struct.TYPE_7__* %187)
  br label %189

189:                                              ; preds = %184, %150
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %194 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %193, i32 0, i32 0
  %195 = call i32 @cancel_delayed_work(i32* %194)
  br label %196

196:                                              ; preds = %192, %189
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %149
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i64 @ag71xx_check_dma_stuck(%struct.ag71xx*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
