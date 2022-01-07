; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_AddCertToSimpleChain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_AddCertToSimpleChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32)* @CRYPT_AddCertToSimpleChain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_AddCertToSimpleChain(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i8* @CryptMemAlloc(i32 4)
  %13 = bitcast i8* %12 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %10, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %115

16:                                               ; preds = %4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = call i8* @CryptMemAlloc(i32 8)
  %23 = bitcast i8* %22 to %struct.TYPE_13__**
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store %struct.TYPE_13__** %23, %struct.TYPE_13__*** %25, align 8
  br label %40

26:                                               ; preds = %16
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call %struct.TYPE_13__** @CryptMemRealloc(%struct.TYPE_13__** %29, i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  store %struct.TYPE_13__** %37, %struct.TYPE_13__*** %39, align 8
  br label %40

40:                                               ; preds = %26, %21
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %42, align 8
  %44 = icmp ne %struct.TYPE_13__** %43, null
  br i1 %44, label %45, label %111

45:                                               ; preds = %40
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %49, i64 %54
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = call i32 @memset(%struct.TYPE_13__* %56, i32 0, i32 4)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 4, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @CertDuplicateCertificateContext(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %82

68:                                               ; preds = %45
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %72, i64 %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  store i32 %69, i32* %81, align 4
  br label %82

82:                                               ; preds = %68, %45
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = srem i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = call i32 @CRYPT_CheckSimpleChainForCycles(%struct.TYPE_12__* %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %96, i64 %101
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %10, align 8
  br label %104

104:                                              ; preds = %91, %82
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = call i32 @CRYPT_CombineTrustStatus(i32* %106, %struct.TYPE_15__* %108)
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %9, align 4
  br label %114

111:                                              ; preds = %40
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = call i32 @CryptMemFree(%struct.TYPE_13__* %112)
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114, %4
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i8* @CryptMemAlloc(i32) #1

declare dso_local %struct.TYPE_13__** @CryptMemRealloc(%struct.TYPE_13__**, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @CertDuplicateCertificateContext(i32) #1

declare dso_local i32 @CRYPT_CheckSimpleChainForCycles(%struct.TYPE_12__*) #1

declare dso_local i32 @CRYPT_CombineTrustStatus(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @CryptMemFree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
