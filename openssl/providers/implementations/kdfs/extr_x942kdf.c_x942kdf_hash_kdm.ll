; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942kdf_hash_kdm.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942kdf_hash_kdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@X942KDF_MAX_INLEN = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_BAD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i8*, i64)* @x942kdf_hash_kdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x942kdf_hash_kdm(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load i64, i64* %17, align 8
  store i64 %29, i64* %22, align 8
  %30 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %23, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  %34 = load i8*, i8** %16, align 8
  store i8* %34, i8** %25, align 8
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @X942KDF_MAX_INLEN, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @X942KDF_MAX_INLEN, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* @X942KDF_MAX_INLEN, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %17, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %42, %38, %8
  %50 = load i32, i32* @ERR_LIB_PROV, align 4
  %51 = load i32, i32* @PROV_R_BAD_LENGTH, align 4
  %52 = call i32 @ERR_raise(i32 %50, i32 %51)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %161

53:                                               ; preds = %46
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @EVP_MD_size(i32* %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %161

59:                                               ; preds = %53
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %21, align 8
  %62 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %62, i32** %26, align 8
  %63 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %63, i32** %27, align 8
  %64 = load i32*, i32** %26, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %27, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %59
  br label %153

70:                                               ; preds = %66
  %71 = load i32*, i32** %27, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @EVP_DigestInit(i32* %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %153

76:                                               ; preds = %70
  store i64 1, i64* %20, align 8
  br label %77

77:                                               ; preds = %149, %76
  %78 = load i64, i64* %20, align 8
  %79 = lshr i64 %78, 24
  %80 = and i64 %79, 255
  %81 = trunc i64 %80 to i8
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %81, i8* %83, align 1
  %84 = load i64, i64* %20, align 8
  %85 = lshr i64 %84, 16
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i8
  %88 = load i8*, i8** %15, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %87, i8* %89, align 1
  %90 = load i64, i64* %20, align 8
  %91 = lshr i64 %90, 8
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i8
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  store i8 %93, i8* %95, align 1
  %96 = load i64, i64* %20, align 8
  %97 = and i64 %96, 255
  %98 = trunc i64 %97 to i8
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  store i8 %98, i8* %100, align 1
  %101 = load i32*, i32** %26, align 8
  %102 = load i32*, i32** %27, align 8
  %103 = call i32 @EVP_MD_CTX_copy_ex(i32* %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %77
  %106 = load i32*, i32** %26, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @EVP_DigestUpdate(i32* %106, i8* %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32*, i32** %26, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @EVP_DigestUpdate(i32* %112, i8* %113, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111, %105, %77
  br label %153

118:                                              ; preds = %111
  %119 = load i64, i64* %22, align 8
  %120 = load i64, i64* %21, align 8
  %121 = icmp uge i64 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i32*, i32** %26, align 8
  %124 = load i8*, i8** %25, align 8
  %125 = call i32 @EVP_DigestFinal_ex(i32* %123, i8* %124, i32* null)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  br label %153

128:                                              ; preds = %122
  %129 = load i64, i64* %21, align 8
  %130 = load i8*, i8** %25, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 %129
  store i8* %131, i8** %25, align 8
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* %22, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %22, align 8
  %135 = load i64, i64* %22, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %152

138:                                              ; preds = %128
  br label %148

139:                                              ; preds = %118
  %140 = load i32*, i32** %26, align 8
  %141 = call i32 @EVP_DigestFinal_ex(i32* %140, i8* %33, i32* null)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %153

144:                                              ; preds = %139
  %145 = load i8*, i8** %25, align 8
  %146 = load i64, i64* %22, align 8
  %147 = call i32 @memcpy(i8* %145, i8* %33, i64 %146)
  br label %152

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %20, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %20, align 8
  br label %77

152:                                              ; preds = %144, %137
  store i32 1, i32* %18, align 4
  br label %153

153:                                              ; preds = %152, %143, %127, %117, %75, %69
  %154 = load i32*, i32** %26, align 8
  %155 = call i32 @EVP_MD_CTX_free(i32* %154)
  %156 = load i32*, i32** %27, align 8
  %157 = call i32 @EVP_MD_CTX_free(i32* %156)
  %158 = trunc i64 %31 to i32
  %159 = call i32 @OPENSSL_cleanse(i8* %33, i32 %158)
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %161

161:                                              ; preds = %153, %58, %49
  %162 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %9, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ERR_raise(i32, i32) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32* @EVP_MD_CTX_create(...) #2

declare dso_local i32 @EVP_DigestInit(i32*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

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
