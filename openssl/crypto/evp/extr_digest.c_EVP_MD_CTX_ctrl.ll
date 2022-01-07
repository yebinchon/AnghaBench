; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_MD_CTX_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_MD_CTX_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { {}*, i32* }
%struct.TYPE_8__ = type { i64 }

@EVP_CTRL_RET_UNSUPPORTED = common dso_local global i32 0, align 4
@OSSL_PARAM_END = common dso_local global i32 0, align 4
@ERR_LIB_EVP = common dso_local global i32 0, align 4
@EVP_R_MESSAGE_DIGEST_IS_NULL = common dso_local global i32 0, align 4
@EVP_PKEY_OP_VERIFYCTX = common dso_local global i64 0, align 8
@EVP_PKEY_OP_SIGNCTX = common dso_local global i64 0, align 8
@OSSL_DIGEST_PARAM_XOFLEN = common dso_local global i32 0, align 4
@OSSL_DIGEST_PARAM_MICALG = common dso_local global i32 0, align 4
@OSSL_DIGEST_PARAM_SSL3_MS = common dso_local global i32 0, align 4
@EVP_R_CTRL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_MD_CTX_ctrl(%struct.TYPE_10__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @EVP_CTRL_RET_UNSUPPORTED, align 4
  store i32 %14, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %16 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %4
  %27 = load i32, i32* @ERR_LIB_EVP, align 4
  %28 = load i32, i32* @EVP_R_MESSAGE_DIGEST_IS_NULL, align 4
  %29 = call i32 @ERR_raise(i32 %27, i32 %28)
  store i32 0, i32* %5, align 4
  br label %128

30:                                               ; preds = %21
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = icmp eq %struct.TYPE_8__* %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EVP_PKEY_OP_VERIFYCTX, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EVP_PKEY_OP_SIGNCTX, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %37
  br label %98

59:                                               ; preds = %50, %42, %30
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %85 [
    i32 128, label %61
    i32 129, label %67
    i32 130, label %79
  ]

61:                                               ; preds = %59
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* @OSSL_DIGEST_PARAM_XOFLEN, align 4
  %65 = call i32 @OSSL_PARAM_construct_size_t(i32 %64, i64* %12)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  br label %86

67:                                               ; preds = %59
  store i32 0, i32* %11, align 4
  %68 = load i32, i32* @OSSL_DIGEST_PARAM_MICALG, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  br label %75

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 9999, %74 ]
  %77 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %68, i8* %69, i32 %76)
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  br label %86

79:                                               ; preds = %59
  %80 = load i32, i32* @OSSL_DIGEST_PARAM_SSL3_MS, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @OSSL_PARAM_construct_octet_string(i32 %80, i8* %81, i32 %82)
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %83, i32* %84, align 4
  br label %86

85:                                               ; preds = %59
  br label %122

86:                                               ; preds = %79, %75, %61
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %92 = call i32 @EVP_MD_CTX_set_params(%struct.TYPE_10__* %90, i32* %91)
  store i32 %92, i32* %10, align 4
  br label %97

93:                                               ; preds = %86
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %96 = call i32 @EVP_MD_CTX_get_params(%struct.TYPE_10__* %94, i32* %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %89
  br label %122

98:                                               ; preds = %58
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = bitcast {}** %102 to i32 (%struct.TYPE_10__*, i32, i32, i8*)**
  %104 = load i32 (%struct.TYPE_10__*, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i8*)** %103, align 8
  %105 = icmp eq i32 (%struct.TYPE_10__*, i32, i32, i8*)* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @ERR_LIB_EVP, align 4
  %108 = load i32, i32* @EVP_R_CTRL_NOT_IMPLEMENTED, align 4
  %109 = call i32 @ERR_raise(i32 %107, i32 %108)
  store i32 0, i32* %5, align 4
  br label %128

110:                                              ; preds = %98
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = bitcast {}** %114 to i32 (%struct.TYPE_10__*, i32, i32, i8*)**
  %116 = load i32 (%struct.TYPE_10__*, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i8*)** %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 %116(%struct.TYPE_10__* %117, i32 %118, i32 %119, i8* %120)
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %110, %97, %85
  %123 = load i32, i32* %10, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %128

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %125, %106, %26
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_size_t(i32, i64*) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i32) #1

declare dso_local i32 @EVP_MD_CTX_set_params(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_get_params(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
