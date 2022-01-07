; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_info.c_PEM_X509_INFO_write_bio.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_info.c_PEM_X509_INFO_write_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32* }

@PEM_BUFSIZE = common dso_local global i32 0, align 4
@PEM_F_PEM_X509_INFO_WRITE_BIO = common dso_local global i32 0, align 4
@PEM_R_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4
@PEM_R_CIPHER_IS_NULL = common dso_local global i32 0, align 4
@PEM_TYPE_ENCRYPTED = common dso_local global i32 0, align 4
@PEM_STRING_RSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PEM_X509_INFO_write_bio(i32* %0, %struct.TYPE_7__* %1, i32* %2, i8* %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %22 = load i32, i32* @PEM_BUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %19, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %20, align 8
  store i8* null, i8** %21, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %7
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @EVP_CIPHER_nid(i32* %29)
  %31 = call i8* @OBJ_nid2sn(i32 %30)
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %18, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 23
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @EVP_CIPHER_iv_length(i32* %38)
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %37, %40
  %42 = add nsw i32 %41, 13
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %43, %23
  br i1 %44, label %45, label %49

45:                                               ; preds = %34, %28
  %46 = load i32, i32* @PEM_F_PEM_X509_INFO_WRITE_BIO, align 4
  %47 = load i32, i32* @PEM_R_UNSUPPORTED_CIPHER, align 4
  %48 = call i32 @PEMerr(i32 %46, i32 %47)
  br label %146

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %7
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %132

55:                                               ; preds = %50
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %114

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %60
  %66 = load i32*, i32** %10, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @PEM_F_PEM_X509_INFO_WRITE_BIO, align 4
  %70 = load i32, i32* @PEM_R_CIPHER_IS_NULL, align 4
  %71 = call i32 @PEMerr(i32 %69, i32 %70)
  br label %146

72:                                               ; preds = %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %21, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = bitcast i32* %79 to i8*
  store i8* %80, i8** %17, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @EVP_CIPHER_nid(i32* %87)
  %89 = call i8* @OBJ_nid2sn(i32 %88)
  store i8* %89, i8** %18, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %72
  %93 = load i32, i32* @PEM_F_PEM_X509_INFO_WRITE_BIO, align 4
  %94 = load i32, i32* @PEM_R_UNSUPPORTED_CIPHER, align 4
  %95 = call i32 @PEMerr(i32 %93, i32 %94)
  br label %146

96:                                               ; preds = %72
  %97 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %97, align 16
  %98 = load i32, i32* @PEM_TYPE_ENCRYPTED, align 4
  %99 = call i32 @PEM_proc_type(i8* %25, i32 %98)
  %100 = load i8*, i8** %18, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @EVP_CIPHER_iv_length(i32* %101)
  %103 = load i8*, i8** %21, align 8
  %104 = call i32 @PEM_dek_info(i8* %25, i8* %100, i32 %102, i8* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @PEM_STRING_RSA, align 4
  %107 = load i8*, i8** %17, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @PEM_write_bio(i32* %105, i32 %106, i8* %25, i8* %107, i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  br label %146

113:                                              ; preds = %96
  br label %131

114:                                              ; preds = %60, %55
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @EVP_PKEY_get0_RSA(i32 %120)
  %122 = load i32*, i32** %10, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = call i64 @PEM_write_bio_RSAPrivateKey(i32* %115, i32 %121, i32* %122, i8* %123, i32 %124, i32* %125, i8* %126)
  %128 = icmp sle i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  br label %146

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %113
  br label %132

132:                                              ; preds = %131, %50
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @PEM_write_bio_X509(i32* %138, i32* %141)
  %143 = icmp sle i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %146

145:                                              ; preds = %137, %132
  store i32 1, i32* %16, align 4
  br label %146

146:                                              ; preds = %145, %144, %129, %112, %92, %68, %45
  %147 = load i32, i32* @PEM_BUFSIZE, align 4
  %148 = call i32 @OPENSSL_cleanse(i8* %25, i32 %147)
  %149 = load i32, i32* %16, align 4
  %150 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %150)
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @OBJ_nid2sn(i32) #2

declare dso_local i32 @EVP_CIPHER_nid(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @EVP_CIPHER_iv_length(i32*) #2

declare dso_local i32 @PEMerr(i32, i32) #2

declare dso_local i32 @PEM_proc_type(i8*, i32) #2

declare dso_local i32 @PEM_dek_info(i8*, i8*, i32, i8*) #2

declare dso_local i32 @PEM_write_bio(i32*, i32, i8*, i8*, i32) #2

declare dso_local i64 @PEM_write_bio_RSAPrivateKey(i32*, i32, i32*, i8*, i32, i32*, i8*) #2

declare dso_local i32 @EVP_PKEY_get0_RSA(i32) #2

declare dso_local i64 @PEM_write_bio_X509(i32*, i32*) #2

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
