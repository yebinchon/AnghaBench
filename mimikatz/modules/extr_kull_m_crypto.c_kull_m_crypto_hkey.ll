; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_hkey.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_hkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@CALG_3DES = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@PLAINTEXTKEYBLOB = common dso_local global i32 0, align 4
@CUR_BLOB_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_hkey(i32 %0, i64 %1, i32 %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i64, i64* %11, align 8
  %20 = add i64 4, %19
  store i64 %20, i64* %17, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @CALG_3DES, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %7
  %25 = load i32, i32* @LPTR, align 4
  %26 = load i64, i64* %17, align 8
  %27 = call i64 @LocalAlloc(i32 %25, i64 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %16, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load i32, i32* @PLAINTEXTKEYBLOB, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @CUR_BLOB_VERSION, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %50 = ptrtoint %struct.TYPE_5__* %49 to i64
  %51 = add i64 %50, 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @RtlCopyMemory(i64 %51, i32 %52, i64 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %59 = ptrtoint %struct.TYPE_5__* %58 to i32
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @CryptImportKey(i32 %57, i32 %59, i64 %60, i32 0, i64 %61, i32* %62)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %65 = call i32 @LocalFree(%struct.TYPE_5__* %64)
  br label %66

66:                                               ; preds = %30, %24
  br label %79

67:                                               ; preds = %7
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @kull_m_crypto_hkey_session(i64 %71, i32 %72, i64 %73, i64 %74, i32* %75, i32* %76)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i32, i32* %15, align 4
  ret i32 %80
}

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, i32, i64) #1

declare dso_local i32 @CryptImportKey(i32, i32, i64, i32, i64, i32*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_5__*) #1

declare dso_local i32 @kull_m_crypto_hkey_session(i64, i32, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
