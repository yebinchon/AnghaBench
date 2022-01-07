; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_dh_Create.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_dh_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@MS_ENH_DSS_DH_PROV = common dso_local global i32 0, align 4
@PROV_DSS_DH = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@CALG_DH_EPHEM = common dso_local global i32 0, align 4
@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@CRYPT_PREGEN = common dso_local global i32 0, align 4
@KP_P = common dso_local global i32 0, align 4
@kull_m_crypto_dh_GlobParameters = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@KP_G = common dso_local global i32 0, align 4
@KP_X = common dso_local global i32 0, align 4
@PUBLICKEYBLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @kull_m_crypto_dh_Create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %5 = load i64, i64* @FALSE, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i32, i32* @LPTR, align 4
  %7 = call i64 @LocalAlloc(i32 %6, i32 4)
  %8 = inttoptr i64 %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %105

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* @MS_ENH_DSS_DH_PROV, align 4
  %18 = load i32, i32* @PROV_DSS_DH, align 4
  %19 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %20 = call i64 @CryptAcquireContext(i32* %16, i32* null, i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %10
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CALG_DH_EPHEM, align 4
  %27 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  %28 = or i32 67108864, %27
  %29 = load i32, i32* @CRYPT_PREGEN, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = call i64 @CryptGenKey(i32 %25, i32 %26, i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @KP_P, align 4
  %40 = call i64 @CryptSetKeyParam(i32 %38, i32 %39, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kull_m_crypto_dh_GlobParameters, i32 0, i32 1), i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %95

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @KP_G, align 4
  %47 = call i64 @CryptSetKeyParam(i32 %45, i32 %46, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kull_m_crypto_dh_GlobParameters, i32 0, i32 0), i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @KP_X, align 4
  %54 = call i64 @CryptSetKeyParam(i32 %52, i32 %53, i32* null, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PUBLICKEYBLOB, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i64 @CryptExportKey(i32 %59, i32 0, i32 %60, i32 0, i32* null, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %56
  %67 = load i32, i32* @LPTR, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @LocalAlloc(i32 %67, i32 %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32* %73, i32** %76, align 8
  %77 = icmp ne i32* %73, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %66
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PUBLICKEYBLOB, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i64 @CryptExportKey(i32 %81, i32 0, i32 %82, i32 0, i32* %86, i32* %89)
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %78, %66
  br label %92

92:                                               ; preds = %91, %56
  br label %93

93:                                               ; preds = %92, %49
  br label %94

94:                                               ; preds = %93, %42
  br label %95

95:                                               ; preds = %94, %35
  br label %96

96:                                               ; preds = %95, %22
  br label %97

97:                                               ; preds = %96, %10
  %98 = load i64, i64* %4, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = call i64 @kull_m_crypto_dh_Delete(%struct.TYPE_7__* %101)
  %103 = inttoptr i64 %102 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %3, align 8
  br label %104

104:                                              ; preds = %100, %97
  br label %105

105:                                              ; preds = %104, %1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %106
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @CryptGenKey(i32, i32, i32, i32*) #1

declare dso_local i64 @CryptSetKeyParam(i32, i32, i32*, i32) #1

declare dso_local i64 @CryptExportKey(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @kull_m_crypto_dh_Delete(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
