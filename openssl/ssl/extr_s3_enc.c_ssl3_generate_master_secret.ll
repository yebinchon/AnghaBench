; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_generate_master_secret.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_generate_master_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@ssl3_generate_master_secret.salt = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CCC\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_GENERATE_MASTER_SECRET = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_generate_master_secret(%struct.TYPE_8__* %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %24, i32** %14, align 8
  store i32 1, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %30 = load i32, i32* @SSL_F_SSL3_GENERATE_MASTER_SECRET, align 4
  %31 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %32 = call i32 @SSLfatal(%struct.TYPE_8__* %28, i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %146

33:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %131, %33
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %134

37:                                               ; preds = %34
  %38 = load i32*, i32** %14, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @EVP_DigestInit_ex(i32* %38, i32 %43, i32* null)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %116, label %46

46:                                               ; preds = %37
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* @ssl3_generate_master_secret.salt, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* @ssl3_generate_master_secret.salt, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i64 @EVP_DigestUpdate(i32* %47, i8* %51, i32 %56)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %116, label %59

59:                                               ; preds = %46
  %60 = load i32*, i32** %14, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @EVP_DigestUpdate(i32* %60, i8* %61, i32 %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %116, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %14, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %74 = call i64 @EVP_DigestUpdate(i32* %67, i8* %72, i32 %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %116, label %76

76:                                               ; preds = %66
  %77 = load i32*, i32** %14, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %84 = call i64 @EVP_DigestUpdate(i32* %77, i8* %82, i32 %83)
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %76
  %87 = load i32*, i32** %14, align 8
  %88 = call i64 @EVP_DigestFinal_ex(i32* %87, i8* %23, i32* %17)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %14, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @EVP_DigestInit_ex(i32* %91, i32 %96, i32* null)
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %90
  %100 = load i32*, i32** %14, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @EVP_DigestUpdate(i32* %100, i8* %101, i32 %103)
  %105 = icmp sle i64 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %99
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call i64 @EVP_DigestUpdate(i32* %107, i8* %23, i32 %108)
  %110 = icmp sle i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i32*, i32** %14, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i64 @EVP_DigestFinal_ex(i32* %112, i8* %113, i32* %17)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111, %106, %99, %90, %86, %76, %66, %59, %46, %37
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %119 = load i32, i32* @SSL_F_SSL3_GENERATE_MASTER_SECRET, align 4
  %120 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %121 = call i32 @SSLfatal(%struct.TYPE_8__* %117, i32 %118, i32 %119, i32 %120)
  store i32 0, i32* %16, align 4
  br label %134

122:                                              ; preds = %111
  %123 = load i32, i32* %17, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = zext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %8, align 8
  %127 = load i32, i32* %17, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %18, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %18, align 8
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %34

134:                                              ; preds = %116, %34
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @EVP_MD_CTX_free(i32* %135)
  %137 = trunc i64 %21 to i32
  %138 = call i32 @OPENSSL_cleanse(i8* %23, i32 %137)
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i64, i64* %18, align 8
  %143 = load i64*, i64** %11, align 8
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %141, %134
  %145 = load i32, i32* %16, align 4
  store i32 %145, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %146

146:                                              ; preds = %144, %27
  %147 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
