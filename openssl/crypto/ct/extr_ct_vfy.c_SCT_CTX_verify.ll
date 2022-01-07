; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_vfy.c_SCT_CTX_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_vfy.c_SCT_CTX_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32*, i32, i32* }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, i32, i32 }

@CT_LOG_ENTRY_TYPE_NOT_SET = common dso_local global i64 0, align 8
@CT_LOG_ENTRY_TYPE_PRECERT = common dso_local global i64 0, align 8
@CT_F_SCT_CTX_VERIFY = common dso_local global i32 0, align 4
@CT_R_SCT_NOT_SET = common dso_local global i32 0, align 4
@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@CT_R_SCT_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@CT_R_SCT_LOG_ID_MISMATCH = common dso_local global i32 0, align 4
@CT_R_SCT_FUTURE_TIMESTAMP = common dso_local global i32 0, align 4
@CT_R_SCT_INVALID_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SCT_CTX_verify(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = call i32 @SCT_is_complete(%struct.TYPE_9__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CT_LOG_ENTRY_TYPE_NOT_SET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CT_LOG_ENTRY_TYPE_PRECERT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %16, %11, %2
  %34 = load i32, i32* @CT_F_SCT_CTX_VERIFY, align 4
  %35 = load i32, i32* @CT_R_SCT_NOT_SET, align 4
  %36 = call i32 @CTerr(i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %124

37:                                               ; preds = %28, %22
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SCT_VERSION_V1, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @CT_F_SCT_CTX_VERIFY, align 4
  %45 = load i32, i32* @CT_R_SCT_UNSUPPORTED_VERSION, align 4
  %46 = call i32 @CTerr(i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %124

47:                                               ; preds = %37
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @memcmp(i32 %58, i32 %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55, %47
  %68 = load i32, i32* @CT_F_SCT_CTX_VERIFY, align 4
  %69 = load i32, i32* @CT_R_SCT_LOG_ID_MISMATCH, align 4
  %70 = call i32 @CTerr(i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %124

71:                                               ; preds = %55
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @CT_F_SCT_CTX_VERIFY, align 4
  %81 = load i32, i32* @CT_R_SCT_FUTURE_TIMESTAMP, align 4
  %82 = call i32 @CTerr(i32 %80, i32 %81)
  store i32 0, i32* %3, align 4
  br label %124

83:                                               ; preds = %71
  %84 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %84, i32** %6, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %120

88:                                               ; preds = %83
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 (...) @EVP_sha256()
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @EVP_DigestVerifyInit(i32* %89, i32* null, i32 %90, i32* null, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %120

97:                                               ; preds = %88
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = call i32 @sct_ctx_update(i32* %98, %struct.TYPE_8__* %99, %struct.TYPE_9__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  br label %120

104:                                              ; preds = %97
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @EVP_DigestVerifyFinal(i32* %105, i32 %108, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load i32, i32* @CT_F_SCT_CTX_VERIFY, align 4
  %117 = load i32, i32* @CT_R_SCT_INVALID_SIGNATURE, align 4
  %118 = call i32 @CTerr(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %104
  br label %120

120:                                              ; preds = %119, %103, %96, %87
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @EVP_MD_CTX_free(i32* %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %79, %67, %43, %33
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @SCT_is_complete(%struct.TYPE_9__*) #1

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @sct_ctx_update(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i32, i32) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
