; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_domainkey_with_rpc.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_domainkey_with_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@KULL_M_DPAPI_MASTERKEYS = common dso_local global i32 0, align 4
@MasterKey = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_dpapi_unprotect_domainkey_with_rpc(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32** %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32**, i32*** %9, align 8
  store i32* null, i32** %15, align 8
  %16 = load i64*, i64** %10, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = load i32, i32* @KULL_M_DPAPI_MASTERKEYS, align 4
  %21 = load i32, i32* @MasterKey, align 4
  %22 = call i64 @FIELD_OFFSET(i32 %20, i32 %21)
  %23 = add nsw i64 %19, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = bitcast i64* %12 to i32**
  %41 = call i32 @kull_m_rpc_bkrp_Restore(i32 %17, i64 %35, i64 %39, i32** %40, i64* %13)
  store i32 %41, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %5
  %44 = load i64, i64* %13, align 8
  %45 = sub i64 %44, 8
  %46 = load i64*, i64** %10, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @LPTR, align 4
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32* @LocalAlloc(i32 %47, i64 %49)
  %51 = load i32**, i32*** %9, align 8
  store i32* %50, i32** %51, align 8
  %52 = icmp ne i32* %50, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load i32**, i32*** %9, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 8
  %58 = load i64, i64* %13, align 8
  %59 = sub i64 %58, 8
  %60 = call i32 @RtlCopyMemory(i32* %55, i64 %57, i64 %59)
  br label %61

61:                                               ; preds = %53, %43
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @LocalFree(i64 %62)
  br label %64

64:                                               ; preds = %61, %5
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @kull_m_rpc_bkrp_Restore(i32, i64, i64, i32**, i64*) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32* @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i32*, i64, i64) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
