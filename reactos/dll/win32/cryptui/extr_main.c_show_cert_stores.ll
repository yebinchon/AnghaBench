; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_cert_stores.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_cert_stores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CertMgrStoreInfo = type { i64 }
%struct.CertMgrData = type { i32, %struct.CertMgrStoreInfo* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@IDC_MGR_STORES = common dso_local global i32 0, align 4
@CRYPTUI_CERT_MGR_PUBLISHER_TAB = common dso_local global i32 0, align 4
@publisherStoreList = common dso_local global %struct.CertMgrStoreInfo* null, align 8
@defaultStoreList = common dso_local global %struct.CertMgrStoreInfo* null, align 8
@CRYPTUI_CERT_MGR_SINGLE_TAB_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_PROV_SYSTEM_W = common dso_local global i32 0, align 4
@CERT_SYSTEM_STORE_CURRENT_USER = common dso_local global i32 0, align 4
@TCIF_TEXT = common dso_local global i32 0, align 4
@TCIF_PARAM = common dso_local global i32 0, align 4
@TCM_INSERTITEMW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.CertMgrData*)* @show_cert_stores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_cert_stores(i32 %0, i32 %1, %struct.CertMgrData* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.CertMgrData*, align 8
  %7 = alloca %struct.CertMgrStoreInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.CertMgrData* %2, %struct.CertMgrData** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IDC_MGR_STORES, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CRYPTUI_CERT_MGR_PUBLISHER_TAB, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** @publisherStoreList, align 8
  store %struct.CertMgrStoreInfo* %22, %struct.CertMgrStoreInfo** %7, align 8
  %23 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** @publisherStoreList, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.CertMgrStoreInfo* %23)
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** @defaultStoreList, align 8
  store %struct.CertMgrStoreInfo* %26, %struct.CertMgrStoreInfo** %7, align 8
  %27 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** @defaultStoreList, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.CertMgrStoreInfo* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CRYPTUI_CERT_MGR_SINGLE_TAB_FLAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.CertMgrData*, %struct.CertMgrData** %6, align 8
  %38 = getelementptr inbounds %struct.CertMgrData, %struct.CertMgrData* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** %7, align 8
  %40 = load %struct.CertMgrData*, %struct.CertMgrData** %6, align 8
  %41 = getelementptr inbounds %struct.CertMgrData, %struct.CertMgrData* %40, i32 0, i32 1
  store %struct.CertMgrStoreInfo* %39, %struct.CertMgrStoreInfo** %41, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %85, %35
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %42
  %47 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.CertMgrStoreInfo, %struct.CertMgrStoreInfo* %47, i64 %49
  %51 = getelementptr inbounds %struct.CertMgrStoreInfo, %struct.CertMgrStoreInfo* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @CryptFindLocalizedName(i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %46
  %56 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.CertMgrStoreInfo, %struct.CertMgrStoreInfo* %56, i64 %58
  %60 = getelementptr inbounds %struct.CertMgrStoreInfo, %struct.CertMgrStoreInfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i32, i32* @CERT_STORE_PROV_SYSTEM_W, align 4
  %64 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %65 = load %struct.CertMgrStoreInfo*, %struct.CertMgrStoreInfo** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.CertMgrStoreInfo, %struct.CertMgrStoreInfo* %65, i64 %67
  %69 = getelementptr inbounds %struct.CertMgrStoreInfo, %struct.CertMgrStoreInfo* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @CertOpenStore(i32 %63, i32 0, i32 0, i32 %64, i64 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i32, i32* @TCIF_TEXT, align 4
  %73 = load i32, i32* @TCIF_PARAM, align 4
  %74 = or i32 %72, %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @TCM_INSERTITEMW, align 4
  %82 = load i32, i32* %9, align 4
  %83 = ptrtoint %struct.TYPE_2__* %12 to i64
  %84 = call i32 @SendMessageW(i32 %80, i32 %81, i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %62
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %42

88:                                               ; preds = %42
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.CertMgrStoreInfo*) #1

declare dso_local i64 @CryptFindLocalizedName(i64) #1

declare dso_local i64 @CertOpenStore(i32, i32, i32, i32, i64) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
