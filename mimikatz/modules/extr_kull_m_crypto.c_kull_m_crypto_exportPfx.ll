; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_exportPfx.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_exportPfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@MIMIKATZ = common dso_local global i32 0, align 4
@EXPORT_PRIVATE_KEYS = common dso_local global i32 0, align 4
@REPORT_NOT_ABLE_TO_EXPORT_PRIVATE_KEY = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 80, i32 70, i32 88, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 67, i32 101, i32 114, i32 116, i32 83, i32 116, i32 111, i32 114, i32 101, i32 69, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_exportPfx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MIMIKATZ, align 4
  %11 = load i32, i32* @EXPORT_PRIVATE_KEYS, align 4
  %12 = load i32, i32* @REPORT_NOT_ABLE_TO_EXPORT_PRIVATE_KEY, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @PFXExportCertStoreEx(i32 %9, %struct.TYPE_3__* %6, i32 %10, i32* null, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = load i32, i32* @LPTR, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @LocalAlloc(i32 %17, i32 %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = icmp ne i32* %21, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MIMIKATZ, align 4
  %27 = load i32, i32* @EXPORT_PRIVATE_KEYS, align 4
  %28 = load i32, i32* @REPORT_NOT_ABLE_TO_EXPORT_PRIVATE_KEY, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @PFXExportCertStoreEx(i32 %25, %struct.TYPE_3__* %6, i32 %26, i32* null, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @kull_m_file_writeData(i32 %33, i32* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %24
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @LocalFree(i32* %41)
  br label %43

43:                                               ; preds = %39, %16
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str to i8*))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @PFXExportCertStoreEx(i32, %struct.TYPE_3__*, i32, i32*, i32) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @kull_m_file_writeData(i32, i32*, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
