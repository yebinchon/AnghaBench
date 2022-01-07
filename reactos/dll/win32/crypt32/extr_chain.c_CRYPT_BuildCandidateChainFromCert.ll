; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_BuildCandidateChainFromCert.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_BuildCandidateChainFromCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i8*, i32*, i64, %struct.TYPE_11__**, i32 }
%struct.TYPE_11__ = type { i32 }

@CERT_STORE_PROV_COLLECTION = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, i32, i32, i32, i32, %struct.TYPE_13__**)* @CRYPT_BuildCandidateChainFromCert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CRYPT_BuildCandidateChainFromCert(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_13__** %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__**, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_13__** %5, %struct.TYPE_13__*** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %17 = load i32, i32* @CERT_STORE_PROV_COLLECTION, align 4
  %18 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %19 = call i32 @CertOpenStore(i32 %17, i32 0, i32 0, i32 %18, i32* null)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CertAddStoreToCollection(i32 %20, i32 %23, i32 0, i32 0)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @CertAddStoreToCollection(i32 %28, i32 %29, i32 0, i32 0)
  br label %31

31:                                               ; preds = %27, %6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i8* @CRYPT_GetSimpleChainForCert(%struct.TYPE_12__* %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct.TYPE_11__** %13)
  store i8* %37, i8** %15, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %93

39:                                               ; preds = %31
  %40 = call i8* @CryptMemAlloc(i32 72)
  %41 = bitcast i8* %40 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %16, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %86

44:                                               ; preds = %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 7
  store i32 %55, i32* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = call i8* @CryptMemAlloc(i32 8)
  %63 = bitcast i8* %62 to %struct.TYPE_11__**
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 6
  store %struct.TYPE_11__** %63, %struct.TYPE_11__*** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %71, i64 0
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  store i32* null, i32** %78, align 8
  %79 = load i8*, i8** @FALSE, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %90

86:                                               ; preds = %39
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = call i32 @CRYPT_FreeSimpleChain(%struct.TYPE_11__* %87)
  %89 = load i8*, i8** @FALSE, align 8
  store i8* %89, i8** %15, align 8
  br label %90

90:                                               ; preds = %86, %44
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %92 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %92, align 8
  br label %93

93:                                               ; preds = %90, %31
  %94 = load i8*, i8** %15, align 8
  ret i8* %94
}

declare dso_local i32 @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CertAddStoreToCollection(i32, i32, i32, i32) #1

declare dso_local i8* @CRYPT_GetSimpleChainForCert(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i8* @CryptMemAlloc(i32) #1

declare dso_local i32 @CRYPT_FreeSimpleChain(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
