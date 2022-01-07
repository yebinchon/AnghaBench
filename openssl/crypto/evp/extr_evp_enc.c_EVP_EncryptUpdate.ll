; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_EncryptUpdate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_EncryptUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (i32, i8*, i64*, i32, i8*, i64)*, i32* }

@EVP_F_EVP_ENCRYPTUPDATE = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4
@EVP_R_NO_CIPHER_SET = common dso_local global i32 0, align 4
@EVP_R_UPDATE_ERROR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_EncryptUpdate(%struct.TYPE_7__* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EVP_F_EVP_ENCRYPTUPDATE, align 4
  %21 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %22 = call i32 @EVPerr(i32 %20, i32 %21)
  store i32 0, i32* %6, align 4
  br label %102

23:                                               ; preds = %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @EVP_F_EVP_ENCRYPTUPDATE, align 4
  %30 = load i32, i32* @EVP_R_NO_CIPHER_SET, align 4
  %31 = call i32 @EVPerr(i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %102

32:                                               ; preds = %23
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %95

40:                                               ; preds = %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = call i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_7__* %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (i32, i8*, i64*, i32, i8*, i64)*, i32 (i32, i8*, i64*, i32, i8*, i64)** %46, align 8
  %48 = icmp eq i32 (i32, i8*, i64*, i32, i8*, i64)* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %40
  %53 = load i32, i32* @EVP_F_EVP_ENCRYPTUPDATE, align 4
  %54 = load i32, i32* @EVP_R_UPDATE_ERROR, align 4
  %55 = call i32 @EVPerr(i32 %53, i32 %54)
  store i32 0, i32* %6, align 4
  br label %102

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32 (i32, i8*, i64*, i32, i8*, i64)*, i32 (i32, i8*, i64*, i32, i8*, i64)** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %72

70:                                               ; preds = %56
  %71 = load i32, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ 0, %69 ], [ %71, %70 ]
  %74 = add nsw i32 %66, %73
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = call i32 %61(i32 %64, i8* %65, i64* %13, i32 %74, i8* %75, i64 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %72
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* @INT_MAX, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @EVP_F_EVP_ENCRYPTUPDATE, align 4
  %87 = load i32, i32* @EVP_R_UPDATE_ERROR, align 4
  %88 = call i32 @EVPerr(i32 %86, i32 %87)
  store i32 0, i32* %6, align 4
  br label %102

89:                                               ; preds = %81
  %90 = load i64, i64* %13, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %72
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %6, align 4
  br label %102

95:                                               ; preds = %39
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @evp_EncryptDecryptUpdate(%struct.TYPE_7__* %96, i8* %97, i32* %98, i8* %99, i32 %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %95, %93, %85, %52, %28, %19
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_7__*) #1

declare dso_local i32 @evp_EncryptDecryptUpdate(%struct.TYPE_7__*, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
