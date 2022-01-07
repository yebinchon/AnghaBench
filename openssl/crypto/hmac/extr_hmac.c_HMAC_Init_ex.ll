; ModuleID = '/home/carl/AnghaBench/openssl/crypto/hmac/extr_hmac.c_HMAC_Init_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/hmac/extr_hmac.c_HMAC_Init_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32* }

@HMAC_MAX_MD_CBLOCK_SIZE = common dso_local global i32 0, align 4
@EVP_MD_FLAG_XOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HMAC_Init_ex(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @HMAC_MAX_MD_CBLOCK_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %246

38:                                               ; preds = %34, %25, %5
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  store i32 1, i32* %15, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  store i32* %42, i32** %44, align 8
  br label %56

45:                                               ; preds = %38
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %10, align 8
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %246

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @EVP_MD_flags(i32* %57)
  %59 = load i32, i32* @EVP_MD_FLAG_XOF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %246

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %147

66:                                               ; preds = %63
  store i32 1, i32* %15, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @EVP_MD_block_size(i32* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sle i32 %69, 8
  %71 = zext i1 %70 to i32
  %72 = call i32 @ossl_assert(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %246

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @EVP_DigestInit_ex(i32 %82, i32* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %79
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @EVP_DigestUpdate(i32 %90, i8* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = call i32 @EVP_DigestFinal_ex(i32 %98, i32* %101, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %95, %87, %79
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %246

107:                                              ; preds = %95
  br label %125

108:                                              ; preds = %75
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 8
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %108
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %246

115:                                              ; preds = %111
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @memcpy(i32* %118, i8* %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %115, %107
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @HMAC_MAX_MD_CBLOCK_SIZE, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %125
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* @HMAC_MAX_MD_CBLOCK_SIZE, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %140, %143
  %145 = call i32 @memset(i32* %139, i32 0, i32 %144)
  br label %146

146:                                              ; preds = %131, %125
  br label %147

147:                                              ; preds = %146, %63
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %227

150:                                              ; preds = %147
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %168, %150
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @HMAC_MAX_MD_CBLOCK_SIZE, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %151
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 54, %162
  %164 = trunc i32 %163 to i8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %22, i64 %166
  store i8 %164, i8* %167, align 1
  br label %168

168:                                              ; preds = %155
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %151

171:                                              ; preds = %151
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = call i32 @EVP_DigestInit_ex(i32 %174, i32* %175, i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @EVP_MD_block_size(i32* %183)
  %185 = call i32 @EVP_DigestUpdate(i32 %182, i8* %22, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %179, %171
  br label %238

188:                                              ; preds = %179
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %206, %188
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @HMAC_MAX_MD_CBLOCK_SIZE, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %189
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 92, %200
  %202 = trunc i32 %201 to i8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %22, i64 %204
  store i8 %202, i8* %205, align 1
  br label %206

206:                                              ; preds = %193
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %189

209:                                              ; preds = %189
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %10, align 8
  %214 = load i32*, i32** %11, align 8
  %215 = call i32 @EVP_DigestInit_ex(i32 %212, i32* %213, i32* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %209
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @EVP_MD_block_size(i32* %221)
  %223 = call i32 @EVP_DigestUpdate(i32 %220, i8* %22, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %217, %209
  br label %238

226:                                              ; preds = %217
  br label %227

227:                                              ; preds = %226, %147
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @EVP_MD_CTX_copy_ex(i32 %230, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %227
  br label %238

237:                                              ; preds = %227
  store i32 1, i32* %12, align 4
  br label %238

238:                                              ; preds = %237, %236, %225, %187
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = trunc i64 %20 to i32
  %243 = call i32 @OPENSSL_cleanse(i8* %22, i32 %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i32, i32* %12, align 4
  store i32 %245, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %246

246:                                              ; preds = %244, %114, %106, %74, %62, %54, %37
  %247 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %247)
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_flags(i32*) #2

declare dso_local i32 @EVP_MD_block_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @EVP_DigestInit_ex(i32, i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32, i8*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32, i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32, i32) #2

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
