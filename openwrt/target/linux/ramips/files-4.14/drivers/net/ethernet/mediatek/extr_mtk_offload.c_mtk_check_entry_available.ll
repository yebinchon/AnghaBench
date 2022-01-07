; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_check_entry_available.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_check_entry_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i64 }
%struct.mtk_foe_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BIND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, i64)* @mtk_check_entry_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_check_entry_available(%struct.mtk_eth* %0, i64 %1) #0 {
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mtk_foe_entry, align 8
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.mtk_foe_entry*
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %9, i64 %10
  %12 = bitcast %struct.mtk_foe_entry* %5 to i8*
  %13 = bitcast %struct.mtk_foe_entry* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BIND, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
