; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_pwri.c_kek_wrap_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_pwri.c_kek_wrap_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i8*, i64, i32*)* @kek_wrap_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kek_wrap_key(i8* %0, i64* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call i64 @EVP_CIPHER_CTX_block_size(i32* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add i64 %17, 4
  %19 = load i64, i64* %12, align 8
  %20 = add i64 %18, %19
  %21 = sub i64 %20, 1
  %22 = load i64, i64* %12, align 8
  %23 = udiv i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = mul i64 %25, %24
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = mul i64 2, %28
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %108

32:                                               ; preds = %5
  %33 = load i64, i64* %10, align 8
  %34 = icmp ugt i64 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %108

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %105

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = trunc i64 %40 to i8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %41, i8* %43, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %49, i8* %51, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 %57, i8* %59, align 1
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8 %65, i8* %67, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @memcpy(i8* %69, i8* %70, i64 %71)
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 4
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %39
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* %13, align 8
  %83 = sub i64 %82, 4
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 %83, %84
  %86 = call i64 @RAND_bytes(i8* %81, i64 %85)
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %108

89:                                               ; preds = %77, %39
  %90 = load i32*, i32** %11, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @EVP_EncryptUpdate(i32* %90, i8* %91, i32* %14, i8* %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32*, i32** %11, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @EVP_EncryptUpdate(i32* %97, i8* %98, i32* %14, i8* %99, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96, %89
  store i32 0, i32* %6, align 4
  br label %108

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %36
  %106 = load i64, i64* %13, align 8
  %107 = load i64*, i64** %8, align 8
  store i64 %106, i64* %107, align 8
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %103, %88, %35, %31
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @EVP_CIPHER_CTX_block_size(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @RAND_bytes(i8*, i64) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i8*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
