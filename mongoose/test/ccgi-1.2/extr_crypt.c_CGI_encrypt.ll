; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_crypt.c_CGI_encrypt.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_crypt.c_CGI_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIGEST_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@EVP_MAX_KEY_LENGTH = common dso_local global i32 0, align 4
@SALT_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CGI_encrypt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @DIGEST_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = load i32, i32* @EVP_MAX_KEY_LENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %33, %30, %3
  store i8* null, i8** %4, align 8
  store i32 1, i32* %17, align 4
  br label %100

42:                                               ; preds = %36
  %43 = load i32, i32* @SALT_SIZE, align 4
  %44 = load i32, i32* @DIGEST_SIZE, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i8* @malloc(i32 %49)
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @init_salt(i8* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @digest(i8* %53, i32 %54, i8* %55, i8* %56, i8* %21)
  %58 = call i32 (...) @EVP_aes_256_cbc()
  %59 = call i32 (...) @EVP_sha1()
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @EVP_BytesToKey(i32 %58, i32 %59, i8* %60, i8* %61, i32 %63, i32 1, i8* %27, i8* %24)
  %65 = call i32 (...) @EVP_aes_256_cbc()
  %66 = call i32 @EVP_EncryptInit(i32* %8, i32 %65, i8* %27, i8* %24)
  %67 = load i32, i32* @SALT_SIZE, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i32, i32* @DIGEST_SIZE, align 4
  %73 = call i32 @EVP_EncryptUpdate(i32* %8, i8* %71, i32* %16, i8* %21, i32 %72)
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %15, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @EVP_EncryptUpdate(i32* %8, i8* %80, i32* %16, i8* %81, i32 %82)
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 @EVP_EncryptFinal(i32* %8, i8* %90, i32* %16)
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i8* @CGI_encode_base64(i8* %92, i32 %95)
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %14, align 8
  store i8* %99, i8** %4, align 8
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %42, %41
  %101 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i8*, i8** %4, align 8
  ret i8* %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @init_salt(i8*) #2

declare dso_local i32 @digest(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @EVP_BytesToKey(i32, i32, i8*, i8*, i32, i32, i8*, i8*) #2

declare dso_local i32 @EVP_aes_256_cbc(...) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @EVP_EncryptInit(i32*, i32, i8*, i8*) #2

declare dso_local i32 @EVP_EncryptUpdate(i32*, i8*, i32*, i8*, i32) #2

declare dso_local i32 @EVP_EncryptFinal(i32*, i8*, i32*) #2

declare dso_local i8* @CGI_encode_base64(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
