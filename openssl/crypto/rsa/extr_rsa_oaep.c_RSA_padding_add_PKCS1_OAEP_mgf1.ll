; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_oaep.c_RSA_padding_add_PKCS1_OAEP_mgf1.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_oaep.c_RSA_padding_add_PKCS1_OAEP_mgf1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1 = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE = common dso_local global i32 0, align 4
@RSA_R_KEY_SIZE_TOO_SMALL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_add_PKCS1_OAEP_mgf1(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %20, align 4
  store i8* null, i8** %23, align 8
  %31 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %24, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %25, align 8
  store i32 0, i32* %27, align 4
  %35 = load i32*, i32** %16, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %8
  %38 = call i32* (...) @EVP_sha1()
  store i32* %38, i32** %16, align 8
  br label %39

39:                                               ; preds = %37, %8
  %40 = load i32*, i32** %17, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32*, i32** %16, align 8
  store i32* %43, i32** %17, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @EVP_MD_size(i32* %45)
  store i32 %46, i32* %26, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %26, align 4
  %50 = mul nsw i32 2, %49
  %51 = sub nsw i32 %48, %50
  %52 = sub nsw i32 %51, 1
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1, align 4
  %56 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE, align 4
  %57 = call i32 @RSAerr(i32 %55, i32 %56)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %209

58:                                               ; preds = %44
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %26, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %61, 1
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1, align 4
  %66 = load i32, i32* @RSA_R_KEY_SIZE_TOO_SMALL, align 4
  %67 = call i32 @RSAerr(i32 %65, i32 %66)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %209

68:                                               ; preds = %58
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %22, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %26, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %21, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i8*, i8** %21, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @EVP_Digest(i8* %78, i32 %79, i8* %80, i32* null, i32* %81, i32* null)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %68
  br label %202

85:                                               ; preds = %68
  %86 = load i8*, i8** %21, align 8
  %87 = load i32, i32* %26, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %26, align 4
  %94 = mul nsw i32 2, %93
  %95 = sub nsw i32 %92, %94
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @memset(i8* %89, i32 0, i32 %96)
  %98 = load i8*, i8** %21, align 8
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %26, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %98, i64 %105
  store i8 1, i8* %106, align 1
  %107 = load i8*, i8** %21, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i32, i32* %26, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 0, %116
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @memcpy(i8* %118, i8* %119, i32 %120)
  %122 = load i8*, i8** %22, align 8
  %123 = load i32, i32* %26, align 4
  %124 = call i64 @RAND_bytes(i8* %122, i32 %123)
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %85
  br label %202

127:                                              ; preds = %85
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %26, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %27, align 4
  %131 = load i32, i32* %27, align 4
  %132 = call i8* @OPENSSL_malloc(i32 %131)
  store i8* %132, i8** %23, align 8
  %133 = load i8*, i8** %23, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32, i32* @RSA_F_RSA_PADDING_ADD_PKCS1_OAEP_MGF1, align 4
  %137 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %138 = call i32 @RSAerr(i32 %136, i32 %137)
  br label %202

139:                                              ; preds = %127
  %140 = load i8*, i8** %23, align 8
  %141 = load i32, i32* %27, align 4
  %142 = load i8*, i8** %22, align 8
  %143 = load i32, i32* %26, align 4
  %144 = load i32*, i32** %17, align 8
  %145 = call i64 @PKCS1_MGF1(i8* %140, i32 %141, i8* %142, i32 %143, i32* %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %202

148:                                              ; preds = %139
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %168, %148
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %27, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %149
  %154 = load i8*, i8** %23, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = load i8*, i8** %21, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = xor i32 %165, %159
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %163, align 1
  br label %168

168:                                              ; preds = %153
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %19, align 4
  br label %149

171:                                              ; preds = %149
  %172 = load i32, i32* %26, align 4
  %173 = load i8*, i8** %21, align 8
  %174 = load i32, i32* %27, align 4
  %175 = load i32*, i32** %17, align 8
  %176 = call i64 @PKCS1_MGF1(i8* %34, i32 %172, i8* %173, i32 %174, i32* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %202

179:                                              ; preds = %171
  store i32 0, i32* %19, align 4
  br label %180

180:                                              ; preds = %198, %179
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %26, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %180
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %34, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8*, i8** %22, align 8
  %191 = load i32, i32* %19, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = xor i32 %195, %189
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %193, align 1
  br label %198

198:                                              ; preds = %184
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %180

201:                                              ; preds = %180
  store i32 1, i32* %18, align 4
  br label %202

202:                                              ; preds = %201, %178, %147, %135, %126, %84
  %203 = trunc i64 %32 to i32
  %204 = call i32 @OPENSSL_cleanse(i8* %34, i32 %203)
  %205 = load i8*, i8** %23, align 8
  %206 = load i32, i32* %27, align 4
  %207 = call i32 @OPENSSL_clear_free(i8* %205, i32 %206)
  %208 = load i32, i32* %18, align 4
  store i32 %208, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %209

209:                                              ; preds = %202, %64, %54
  %210 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %9, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @RSAerr(i32, i32) #2

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i64 @PKCS1_MGF1(i8*, i32, i8*, i32, i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
