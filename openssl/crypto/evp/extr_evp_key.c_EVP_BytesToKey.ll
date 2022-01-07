; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_key.c_EVP_BytesToKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_key.c_EVP_BytesToKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_KEY_LENGTH = common dso_local global i32 0, align 4
@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@PKCS5_SALT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_BytesToKey(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %28 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %19, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @EVP_CIPHER_key_length(i32* %32)
  store i32 %33, i32* %22, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @EVP_CIPHER_iv_length(i32* %34)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* @EVP_MAX_KEY_LENGTH, align 4
  %38 = icmp sle i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @OPENSSL_assert(i32 %39)
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %43 = icmp sle i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @OPENSSL_assert(i32 %44)
  %46 = load i8*, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %8
  %49 = load i32, i32* %22, align 4
  store i32 %49, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %205

50:                                               ; preds = %8
  %51 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %51, i32** %18, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %199

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %195, %55
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @EVP_DigestInit_ex(i32* %57, i32* %58, i32* null)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %199

62:                                               ; preds = %56
  %63 = load i32, i32* %23, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %23, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32*, i32** %18, align 8
  %68 = getelementptr inbounds i8, i8* %31, i64 0
  %69 = load i32, i32* %24, align 4
  %70 = call i32 @EVP_DigestUpdate(i32* %67, i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %199

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32*, i32** %18, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @EVP_DigestUpdate(i32* %75, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %199

81:                                               ; preds = %74
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32*, i32** %18, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i32, i32* @PKCS5_SALT_LEN, align 4
  %88 = call i32 @EVP_DigestUpdate(i32* %85, i8* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %199

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %81
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i8, i8* %31, i64 0
  %95 = call i32 @EVP_DigestFinal_ex(i32* %93, i8* %94, i32* %24)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %199

98:                                               ; preds = %92
  store i32 1, i32* %25, align 4
  br label %99

99:                                               ; preds = %123, %98
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = load i32*, i32** %18, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @EVP_DigestInit_ex(i32* %104, i32* %105, i32* null)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %199

109:                                              ; preds = %103
  %110 = load i32*, i32** %18, align 8
  %111 = getelementptr inbounds i8, i8* %31, i64 0
  %112 = load i32, i32* %24, align 4
  %113 = call i32 @EVP_DigestUpdate(i32* %110, i8* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %199

116:                                              ; preds = %109
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i8, i8* %31, i64 0
  %119 = call i32 @EVP_DigestFinal_ex(i32* %117, i8* %118, i32* %24)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  br label %199

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %25, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %25, align 4
  br label %99

126:                                              ; preds = %99
  store i32 0, i32* %25, align 4
  %127 = load i32, i32* %22, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %149, %129
  %131 = load i32, i32* %22, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %154

134:                                              ; preds = %130
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %24, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %154

139:                                              ; preds = %134
  %140 = load i8*, i8** %16, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* %25, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %31, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = load i8*, i8** %16, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %16, align 8
  store i8 %146, i8* %147, align 1
  br label %149

149:                                              ; preds = %142, %139
  %150 = load i32, i32* %22, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %25, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %25, align 4
  br label %130

154:                                              ; preds = %138, %133
  br label %155

155:                                              ; preds = %154, %126
  %156 = load i32, i32* %21, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %188

158:                                              ; preds = %155
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %24, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %182, %162
  %164 = load i32, i32* %21, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %187

167:                                              ; preds = %163
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %24, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %187

172:                                              ; preds = %167
  %173 = load i8*, i8** %17, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32, i32* %25, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %31, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %17, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %17, align 8
  store i8 %179, i8* %180, align 1
  br label %182

182:                                              ; preds = %175, %172
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %21, align 4
  %185 = load i32, i32* %25, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %25, align 4
  br label %163

187:                                              ; preds = %171, %166
  br label %188

188:                                              ; preds = %187, %158, %155
  %189 = load i32, i32* %22, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, i32* %21, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %196

195:                                              ; preds = %191, %188
  br label %56

196:                                              ; preds = %194
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @EVP_CIPHER_key_length(i32* %197)
  store i32 %198, i32* %26, align 4
  br label %199

199:                                              ; preds = %196, %121, %115, %108, %97, %90, %80, %72, %61, %54
  %200 = load i32*, i32** %18, align 8
  %201 = call i32 @EVP_MD_CTX_free(i32* %200)
  %202 = trunc i64 %29 to i32
  %203 = call i32 @OPENSSL_cleanse(i8* %31, i32 %202)
  %204 = load i32, i32* %26, align 4
  store i32 %204, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %205

205:                                              ; preds = %199, %48
  %206 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %9, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_CIPHER_key_length(i32*) #2

declare dso_local i32 @EVP_CIPHER_iv_length(i32*) #2

declare dso_local i32 @OPENSSL_assert(i32) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

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
