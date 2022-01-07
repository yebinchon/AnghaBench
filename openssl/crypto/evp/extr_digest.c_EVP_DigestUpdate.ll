; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestUpdate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_DigestUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { {}*, i32, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 (i32, i8*, i64)*, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@EVP_PKEY_OP_SIGNCTX = common dso_local global i64 0, align 8
@EVP_PKEY_OP_VERIFYCTX = common dso_local global i64 0, align 8
@EVP_F_EVP_DIGESTUPDATE = common dso_local global i32 0, align 4
@EVP_R_UPDATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DigestUpdate(%struct.TYPE_13__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %106

11:                                               ; preds = %3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %61

16:                                               ; preds = %11
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = call i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_14__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %22
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EVP_PKEY_OP_SIGNCTX, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @EVP_DigestSignUpdate(%struct.TYPE_13__* %40, i8* %41, i64 %42)
  store i32 %43, i32* %4, align 4
  br label %106

44:                                               ; preds = %31
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EVP_PKEY_OP_VERIFYCTX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @EVP_DigestVerifyUpdate(%struct.TYPE_13__* %53, i8* %54, i64 %55)
  store i32 %56, i32* %4, align 4
  br label %106

57:                                               ; preds = %44
  %58 = load i32, i32* @EVP_F_EVP_DIGESTUPDATE, align 4
  %59 = load i32, i32* @EVP_R_UPDATE_ERROR, align 4
  %60 = call i32 @EVPerr(i32 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %106

61:                                               ; preds = %22, %16, %11
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = icmp eq %struct.TYPE_12__* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %61
  br label %97

74:                                               ; preds = %66
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %78, align 8
  %80 = icmp eq i32 (i32, i8*, i64)* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @EVP_F_EVP_DIGESTUPDATE, align 4
  %83 = load i32, i32* @EVP_R_UPDATE_ERROR, align 4
  %84 = call i32 @EVPerr(i32 %82, i32 %83)
  store i32 0, i32* %4, align 4
  br label %106

85:                                               ; preds = %74
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 %90(i32 %93, i8* %94, i64 %95)
  store i32 %96, i32* %4, align 4
  br label %106

97:                                               ; preds = %73
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = bitcast {}** %99 to i32 (%struct.TYPE_13__*, i8*, i64)**
  %101 = load i32 (%struct.TYPE_13__*, i8*, i64)*, i32 (%struct.TYPE_13__*, i8*, i64)** %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 %101(%struct.TYPE_13__* %102, i8* %103, i64 %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %97, %85, %81, %57, %52, %39, %10
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_14__*) #1

declare dso_local i32 @EVP_DigestSignUpdate(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @EVP_DigestVerifyUpdate(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
