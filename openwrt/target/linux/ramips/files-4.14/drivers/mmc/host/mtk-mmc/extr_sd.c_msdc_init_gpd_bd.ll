; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/extr_sd.c_msdc_init_gpd_bd.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/extr_sd.c_msdc_init_gpd_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32 }
%struct.msdc_dma = type { i64, i64, %struct.gpd*, %struct.gpd* }
%struct.gpd = type { i32, i8*, i8* }
%struct.bd = type { i32, i8*, i8* }

@MAX_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, %struct.msdc_dma*)* @msdc_init_gpd_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_init_gpd_bd(%struct.msdc_host* %0, %struct.msdc_dma* %1) #0 {
  %3 = alloca %struct.msdc_host*, align 8
  %4 = alloca %struct.msdc_dma*, align 8
  %5 = alloca %struct.gpd*, align 8
  %6 = alloca %struct.bd*, align 8
  %7 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %3, align 8
  store %struct.msdc_dma* %1, %struct.msdc_dma** %4, align 8
  %8 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %9 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %8, i32 0, i32 3
  %10 = load %struct.gpd*, %struct.gpd** %9, align 8
  store %struct.gpd* %10, %struct.gpd** %5, align 8
  %11 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %12 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %11, i32 0, i32 2
  %13 = load %struct.gpd*, %struct.gpd** %12, align 8
  %14 = bitcast %struct.gpd* %13 to %struct.bd*
  store %struct.bd* %14, %struct.bd** %6, align 8
  %15 = load %struct.gpd*, %struct.gpd** %5, align 8
  %16 = call i32 @memset(%struct.gpd* %15, i32 0, i32 48)
  %17 = load %struct.gpd*, %struct.gpd** %5, align 8
  %18 = getelementptr inbounds %struct.gpd, %struct.gpd* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %20 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.gpd*, %struct.gpd** %5, align 8
  %24 = getelementptr inbounds %struct.gpd, %struct.gpd* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %26 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 24
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.gpd*, %struct.gpd** %5, align 8
  %31 = getelementptr inbounds %struct.gpd, %struct.gpd* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.bd*, %struct.bd** %6, align 8
  %33 = bitcast %struct.bd* %32 to %struct.gpd*
  %34 = load i32, i32* @MAX_BD_NUM, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.gpd* %33, i32 0, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %59, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAX_BD_NUM, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %46 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 24, %50
  %52 = add i64 %47, %51
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.bd*, %struct.bd** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bd, %struct.bd* %54, i64 %56
  %58 = getelementptr inbounds %struct.bd, %struct.bd* %57, i32 0, i32 1
  store i8* %53, i8** %58, align 8
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %39

62:                                               ; preds = %39
  ret void
}

declare dso_local i32 @memset(%struct.gpd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
