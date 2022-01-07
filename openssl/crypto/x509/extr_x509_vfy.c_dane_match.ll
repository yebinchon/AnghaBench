; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_dane_match.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_dane_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i8*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32** }

@DANETLS_NONE = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@DANETLS_EE_MASK = common dso_local global i32 0, align 4
@DANETLS_TA_MASK = common dso_local global i32 0, align 4
@DANETLS_PKIX_MASK = common dso_local global i32 0, align 4
@DANETLS_MATCHING_FULL = common dso_local global i64 0, align 8
@DANETLS_DANE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @dane_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dane_match(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %8, align 8
  %29 = load i32, i32* @DANETLS_NONE, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @DANETLS_NONE, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @DANETLS_NONE, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @DANETLS_NONE, align 4
  store i32 %32, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %33 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %15, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %22, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @DANETLS_EE_MASK, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @DANETLS_TA_MASK, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @DANETLS_PKIX_MASK, align 4
  %52 = load i32, i32* %23, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %23, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @DANETLS_PKIX_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %23, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %23, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %23, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sk_danetls_record_num(i32 %74)
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ %75, %71 ], [ 0, %76 ]
  store i32 %78, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %256, %77
  %80 = load i32, i32* %21, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp slt i32 %83, %84
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i1 [ false, %79 ], [ %85, %82 ]
  br i1 %87, label %88, label %259

88:                                               ; preds = %86
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call %struct.TYPE_8__* @sk_danetls_record_value(i32 %91, i32 %92)
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %22, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @DANETLS_USAGE_BIT(i32 %96)
  %98 = load i32, i32* %23, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %256

102:                                              ; preds = %88
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* @DANETLS_NONE, align 4
  store i32 %112, i32* %12, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %108, %102
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %10, align 4
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @OPENSSL_free(i8* %133)
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i8* @dane_i2d(i8* %135, i32 %136, i32* %14)
  store i8* %137, i8** %13, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %263

141:                                              ; preds = %129
  %142 = load i32, i32* @DANETLS_NONE, align 4
  store i32 %142, i32* %12, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %11, align 4
  br label %175

153:                                              ; preds = %123
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DANETLS_MATCHING_FULL, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %256

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %173, %153
  br label %175

175:                                              ; preds = %174, %141
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = zext i32 %179 to i64
  %181 = icmp ne i64 %178, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %175
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32**, i32*** %186, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %12, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %187, i64 %192
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %25, align 8
  %195 = load i8*, i8** %13, align 8
  store i8* %195, i8** %17, align 8
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %18, align 4
  %197 = load i32*, i32** %25, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %182
  store i8* %36, i8** %17, align 8
  %200 = load i8*, i8** %13, align 8
  %201 = load i32, i32* %14, align 4
  %202 = load i8*, i8** %17, align 8
  %203 = load i32*, i32** %25, align 8
  %204 = call i32 @EVP_Digest(i8* %200, i32 %201, i8* %202, i32* %18, i32* %203, i32 0)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %199
  store i32 -1, i32* %21, align 4
  br label %259

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207, %182
  br label %209

209:                                              ; preds = %208, %175
  %210 = load i32, i32* %18, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %210, %213
  br i1 %214, label %215, label %255

215:                                              ; preds = %209
  %216 = load i8*, i8** %17, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = call i64 @memcmp(i8* %216, i32 %219, i32 %220)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %255

223:                                              ; preds = %215
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @DANETLS_USAGE_BIT(i32 %224)
  %226 = load i32, i32* @DANETLS_DANE_MASK, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 1, i32* %21, align 4
  br label %230

230:                                              ; preds = %229, %223
  %231 = load i32, i32* %21, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %233, %230
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 3
  store %struct.TYPE_8__* %242, %struct.TYPE_8__** %244, align 8
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @OPENSSL_free(i8* %247)
  %249 = load i8*, i8** %6, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  store i8* %249, i8** %251, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = call i32 @X509_up_ref(i8* %252)
  br label %254

254:                                              ; preds = %238, %233
  br label %259

255:                                              ; preds = %215, %209
  br label %256

256:                                              ; preds = %255, %172, %101
  %257 = load i32, i32* %19, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %19, align 4
  br label %79

259:                                              ; preds = %254, %206, %86
  %260 = load i8*, i8** %13, align 8
  %261 = call i32 @OPENSSL_free(i8* %260)
  %262 = load i32, i32* %21, align 4
  store i32 %262, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %263

263:                                              ; preds = %259, %140
  %264 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %264)
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sk_danetls_record_num(i32) #2

declare dso_local %struct.TYPE_8__* @sk_danetls_record_value(i32, i32) #2

declare dso_local i32 @DANETLS_USAGE_BIT(i32) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i8* @dane_i2d(i8*, i32, i32*) #2

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32*, i32) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i32 @X509_up_ref(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
