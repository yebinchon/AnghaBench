; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_SSKDF_hash_kdm.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_SSKDF_hash_kdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSKDF_MAX_INLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i32, i8*, i64)* @SSKDF_hash_kdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SSKDF_hash_kdm(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [4 x i8], align 1
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %30 = load i64, i64* %17, align 8
  store i64 %30, i64* %22, align 8
  %31 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %24, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %25, align 8
  %35 = load i8*, i8** %16, align 8
  store i8* %35, i8** %26, align 8
  store i32* null, i32** %27, align 8
  store i32* null, i32** %28, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @SSKDF_MAX_INLEN, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %50, label %39

39:                                               ; preds = %8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @SSKDF_MAX_INLEN, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* @SSKDF_MAX_INLEN, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %17, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %43, %39, %8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %171

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @EVP_MD_size(i32* %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %171

57:                                               ; preds = %51
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %21, align 8
  %60 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %60, i32** %27, align 8
  %61 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %61, i32** %28, align 8
  %62 = load i32*, i32** %27, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %28, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %57
  br label %163

68:                                               ; preds = %64
  %69 = load i32*, i32** %28, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @EVP_DigestInit(i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %163

74:                                               ; preds = %68
  store i64 1, i64* %20, align 8
  br label %75

75:                                               ; preds = %159, %74
  %76 = load i64, i64* %20, align 8
  %77 = lshr i64 %76, 24
  %78 = and i64 %77, 255
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  store i8 %79, i8* %80, align 1
  %81 = load i64, i64* %20, align 8
  %82 = lshr i64 %81, 16
  %83 = and i64 %82, 255
  %84 = trunc i64 %83 to i8
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 1
  store i8 %84, i8* %85, align 1
  %86 = load i64, i64* %20, align 8
  %87 = lshr i64 %86, 8
  %88 = and i64 %87, 255
  %89 = trunc i64 %88 to i8
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 2
  store i8 %89, i8* %90, align 1
  %91 = load i64, i64* %20, align 8
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i8
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 3
  store i8 %93, i8* %94, align 1
  %95 = load i32*, i32** %27, align 8
  %96 = load i32*, i32** %28, align 8
  %97 = call i64 @EVP_MD_CTX_copy_ex(i32* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %75
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load i32*, i32** %27, align 8
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %105 = call i64 @EVP_DigestUpdate(i32* %103, i8* %104, i64 4)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102, %99
  %108 = load i32*, i32** %27, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i64 @EVP_DigestUpdate(i32* %108, i8* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32*, i32** %27, align 8
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %119 = call i64 @EVP_DigestUpdate(i32* %117, i8* %118, i64 4)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116, %113
  %122 = load i32*, i32** %27, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i64 @EVP_DigestUpdate(i32* %122, i8* %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121, %116, %107, %102, %75
  br label %163

128:                                              ; preds = %121
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* %21, align 8
  %131 = icmp uge i64 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load i32*, i32** %27, align 8
  %134 = load i8*, i8** %26, align 8
  %135 = call i32 @EVP_DigestFinal_ex(i32* %133, i8* %134, i32* null)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  br label %163

138:                                              ; preds = %132
  %139 = load i64, i64* %21, align 8
  %140 = load i8*, i8** %26, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 %139
  store i8* %141, i8** %26, align 8
  %142 = load i64, i64* %21, align 8
  %143 = load i64, i64* %22, align 8
  %144 = sub i64 %143, %142
  store i64 %144, i64* %22, align 8
  %145 = load i64, i64* %22, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %162

148:                                              ; preds = %138
  br label %158

149:                                              ; preds = %128
  %150 = load i32*, i32** %27, align 8
  %151 = call i32 @EVP_DigestFinal_ex(i32* %150, i8* %34, i32* null)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  br label %163

154:                                              ; preds = %149
  %155 = load i8*, i8** %26, align 8
  %156 = load i64, i64* %22, align 8
  %157 = call i32 @memcpy(i8* %155, i8* %34, i64 %156)
  br label %162

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %20, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %20, align 8
  br label %75

162:                                              ; preds = %154, %147
  store i32 1, i32* %18, align 4
  br label %163

163:                                              ; preds = %162, %153, %137, %127, %73, %67
  %164 = load i32*, i32** %27, align 8
  %165 = call i32 @EVP_MD_CTX_destroy(i32* %164)
  %166 = load i32*, i32** %28, align 8
  %167 = call i32 @EVP_MD_CTX_destroy(i32* %166)
  %168 = trunc i64 %32 to i32
  %169 = call i32 @OPENSSL_cleanse(i8* %34, i32 %168)
  %170 = load i32, i32* %18, align 4
  store i32 %170, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %171

171:                                              ; preds = %163, %56, %50
  %172 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %9, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32* @EVP_MD_CTX_create(...) #2

declare dso_local i32 @EVP_DigestInit(i32*, i32*) #2

declare dso_local i64 @EVP_MD_CTX_copy_ex(i32*, i32*) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #2

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
