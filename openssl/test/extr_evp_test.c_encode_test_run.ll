; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_encode_test_run.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_encode_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"INTERNAL_ERROR\00", align 1
@BASE64_CANONICAL_ENCODING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"BAD_ENCODING\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DECODE_ERROR\00", align 1
@BASE64_INVALID_ENCODING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"BAD_DECODING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @encode_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_test_run(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = call i8* (...) @EVP_ENCODE_CTX_new()
  store i8* %13, i8** %8, align 8
  %14 = call i32 @TEST_ptr(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %141

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BASE64_CANONICAL_ENCODING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %19
  %26 = call i8* (...) @EVP_ENCODE_CTX_new()
  store i8* %26, i8** %9, align 8
  %27 = call i32 @TEST_ptr(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @EVP_ENCODE_LENGTH(i32 %32)
  %34 = call i8* @OPENSSL_malloc(i32 %33)
  store i8* %34, i8** %4, align 8
  %35 = call i32 @TEST_ptr(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29, %25
  br label %141

38:                                               ; preds = %29
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @EVP_EncodeInit(i8* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @EVP_EncodeUpdate(i8* %41, i8* %42, i32* %7, i32 %45, i32 %48)
  %50 = call i32 @TEST_true(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %141

53:                                               ; preds = %38
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @EVP_EncodeFinal(i8* %55, i8* %59, i32* %7)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @memory_err_compare(%struct.TYPE_5__* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i8* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %53
  br label %141

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76, %19
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @EVP_DECODE_LENGTH(i32 %80)
  %82 = call i8* @OPENSSL_malloc(i32 %81)
  store i8* %82, i8** %5, align 8
  %83 = call i32 @TEST_ptr(i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %141

86:                                               ; preds = %77
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @EVP_DecodeInit(i8* %87)
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @EVP_DecodeUpdate(i8* %89, i8* %90, i32* %7, i32 %93, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %101, align 8
  br label %141

102:                                              ; preds = %86
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %6, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call i32 @EVP_DecodeFinal(i8* %104, i8* %108, i32* %7)
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %113, align 8
  br label %141

114:                                              ; preds = %102
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @BASE64_INVALID_ENCODING, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @memory_err_compare(%struct.TYPE_5__* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %130, i8* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %137, align 8
  br label %141

138:                                              ; preds = %123, %114
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i8* null, i8** %140, align 8
  br label %141

141:                                              ; preds = %138, %135, %111, %99, %85, %75, %52, %37, %16
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 @OPENSSL_free(i8* %142)
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @OPENSSL_free(i8* %144)
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @EVP_ENCODE_CTX_free(i8* %146)
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @EVP_ENCODE_CTX_free(i8* %148)
  ret i32 1
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @EVP_ENCODE_CTX_new(...) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_ENCODE_LENGTH(i32) #1

declare dso_local i32 @EVP_EncodeInit(i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EVP_EncodeUpdate(i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @EVP_EncodeFinal(i8*, i8*, i32*) #1

declare dso_local i32 @memory_err_compare(%struct.TYPE_5__*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @EVP_DECODE_LENGTH(i32) #1

declare dso_local i32 @EVP_DecodeInit(i8*) #1

declare dso_local i64 @EVP_DecodeUpdate(i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @EVP_DecodeFinal(i8*, i8*, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_ENCODE_CTX_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
