; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_pwri.c_kek_unwrap_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_pwri.c_kek_unwrap_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_F_KEK_UNWRAP_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i8*, i64, i32*)* @kek_unwrap_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kek_unwrap_key(i8* %0, i64* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i64 @EVP_CIPHER_CTX_block_size(i32* %16)
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %12, align 8
  %20 = mul i64 2, %19
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %149

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = urem i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %149

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  %31 = call i8* @OPENSSL_malloc(i64 %30)
  store i8* %31, i8** %13, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @CMS_F_KEK_UNWRAP_KEY, align 4
  %35 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %36 = call i32 @CMSerr(i32 %34, i32 %35)
  store i32 0, i32* %6, align 4
  br label %149

37:                                               ; preds = %29
  %38 = load i32*, i32** %11, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i64, i64* %12, align 8
  %43 = mul i64 2, %42
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i64, i64* %12, align 8
  %50 = mul i64 2, %49
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i64, i64* %12, align 8
  %54 = mul i64 %53, 2
  %55 = call i32 @EVP_DecryptUpdate(i32* %38, i8* %45, i32* %14, i8* %52, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %37
  %58 = load i32*, i32** %11, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i64, i64* %12, align 8
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @EVP_DecryptUpdate(i32* %58, i8* %59, i32* %14, i8* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %57
  %70 = load i32*, i32** %11, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %12, align 8
  %75 = sub i64 %73, %74
  %76 = call i32 @EVP_DecryptUpdate(i32* %70, i8* %71, i32* %14, i8* %72, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %69
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @EVP_DecryptInit_ex(i32* %79, i32* null, i32* null, i32* null, i32* null)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32*, i32** %11, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @EVP_DecryptUpdate(i32* %83, i8* %84, i32* %14, i8* %85, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82, %78, %69, %57, %37
  br label %144

90:                                               ; preds = %82
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = xor i32 %94, %98
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 5
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = xor i32 %103, %107
  %109 = and i32 %99, %108
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 6
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = xor i32 %113, %117
  %119 = and i32 %109, %118
  %120 = icmp ne i32 %119, 255
  br i1 %120, label %121, label %122

121:                                              ; preds = %90
  br label %144

122:                                              ; preds = %90
  %123 = load i64, i64* %10, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = sub nsw i32 %127, 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %123, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %144

132:                                              ; preds = %122
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = load i64*, i64** %8, align 8
  store i64 %136, i64* %137, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 4
  %141 = load i64*, i64** %8, align 8
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @memcpy(i8* %138, i8* %140, i64 %142)
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %132, %131, %121, %89
  %145 = load i8*, i8** %13, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @OPENSSL_clear_free(i8* %145, i64 %146)
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %144, %33, %28, %22
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i64 @EVP_CIPHER_CTX_block_size(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @EVP_DecryptUpdate(i32*, i8*, i32*, i8*, i64) #1

declare dso_local i32 @EVP_DecryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
