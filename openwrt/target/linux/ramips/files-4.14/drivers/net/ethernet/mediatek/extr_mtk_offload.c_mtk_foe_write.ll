; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_foe_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_foe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i64 }
%struct.mtk_foe_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*, i64, %struct.mtk_foe_entry*)* @mtk_foe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_foe_write(%struct.mtk_eth* %0, i64 %1, %struct.mtk_foe_entry* %2) #0 {
  %4 = alloca %struct.mtk_eth*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtk_foe_entry*, align 8
  %7 = alloca %struct.mtk_foe_entry*, align 8
  store %struct.mtk_eth* %0, %struct.mtk_eth** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mtk_foe_entry* %2, %struct.mtk_foe_entry** %6, align 8
  %8 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mtk_foe_entry*
  store %struct.mtk_foe_entry* %11, %struct.mtk_foe_entry** %7, align 8
  %12 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %12, i64 %13
  %15 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %16 = call i32 @memcpy(%struct.mtk_foe_entry* %14, %struct.mtk_foe_entry* %15, i32 4)
  ret void
}

declare dso_local i32 @memcpy(%struct.mtk_foe_entry*, %struct.mtk_foe_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
