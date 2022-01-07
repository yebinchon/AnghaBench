; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_DSL_BSP_Showtime.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_DSL_BSP_Showtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_cell_info = type { i32, i8**, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Datarate US intl = %d, fast = %d\0A\00", align 1
@g_tx_link_rate = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Got rate fail.\0A\00", align 1
@g_xdata_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"no hookup from ATM driver to set cell rate\0A\00", align 1
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSL_BSP_Showtime(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_cell_info, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.port_cell_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 424
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8**, i8*** @g_tx_link_rate, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 424
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8**, i8*** @g_tx_link_rate, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i8**, i8*** @g_tx_link_rate, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8**, i8*** @g_tx_link_rate, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36, %31
  br i1 true, label %44, label %60

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %7, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load i8**, i8*** @g_tx_link_rate, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %7, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %48, i8** %51, align 8
  %52 = load i8**, i8*** @g_tx_link_rate, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %7, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @g_xdata_addr, align 4
  %59 = call i32 @ifx_mei_atm_showtime_enter(%struct.port_cell_info* %7, i32 %58)
  br label %62

60:                                               ; preds = %43
  %61 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %44
  %63 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*, ...) #2

declare dso_local i32 @ifx_mei_atm_showtime_enter(%struct.port_cell_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
