; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ht.c_OCSP_REQ_CTX_nbio.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ht.c_OCSP_REQ_CTX_nbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i32 }

@OHS_NOREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_REQ_CTX_nbio(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  br label %7

7:                                                ; preds = %359, %281, %259, %189, %169, %132, %117, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @OHS_NOREAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BIO_read(i32 %17, i8* %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %14
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @BIO_should_retry(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %365

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %365

35:                                               ; preds = %14
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, ...) @BIO_write(i32 %38, i8* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %365

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %7
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %364 [
    i32 128, label %52
    i32 133, label %64
    i32 134, label %74
    i32 136, label %125
    i32 131, label %145
    i32 130, label %146
    i32 129, label %146
    i32 135, label %251
    i32 137, label %348
    i32 132, label %363
  ]

52:                                               ; preds = %48
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, ...) @BIO_write(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %57 = icmp ne i32 %56, 2
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 131, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %365

61:                                               ; preds = %52
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 133, i32* %63, align 8
  br label %64

64:                                               ; preds = %48, %61
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @BIO_get_mem_data(i32 %67, i8** null)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 134, i32* %73, align 8
  br label %74

74:                                               ; preds = %48, %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @BIO_get_mem_data(i32 %77, i8** %6)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %83, i64 %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, ...) @BIO_write(i32 %82, i8* %90, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %74
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @BIO_should_retry(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %365

104:                                              ; preds = %97
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 131, i32* %106, align 8
  store i32 0, i32* %2, align 4
  br label %365

107:                                              ; preds = %74
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %7

118:                                              ; preds = %107
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 136, i32* %120, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @BIO_reset(i32 %123)
  br label %125

125:                                              ; preds = %48, %118
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @BIO_flush(i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 130, i32* %134, align 8
  br label %7

135:                                              ; preds = %125
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @BIO_should_retry(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 -1, i32* %2, align 4
  br label %365

142:                                              ; preds = %135
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32 131, i32* %144, align 8
  store i32 0, i32* %2, align 4
  br label %365

145:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %365

146:                                              ; preds = %48, %48
  br label %147

147:                                              ; preds = %246, %213, %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @BIO_get_mem_data(i32 %150, i8** %6)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %147
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @memchr(i8* %156, i8 signext 10, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %155, %147
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp sge i32 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 131, i32* %168, align 8
  store i32 0, i32* %2, align 4
  br label %365

169:                                              ; preds = %160
  br label %7

170:                                              ; preds = %155
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @BIO_gets(i32 %173, i8* %176, i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %170
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @BIO_should_retry(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %7

190:                                              ; preds = %183
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  store i32 131, i32* %192, align 8
  store i32 0, i32* %2, align 4
  br label %365

193:                                              ; preds = %170
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i32 131, i32* %201, align 8
  store i32 0, i32* %2, align 4
  br label %365

202:                                              ; preds = %193
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 130
  br i1 %206, label %207, label %219

207:                                              ; preds = %202
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @parse_http_line1(i8* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  store i32 129, i32* %215, align 8
  br label %147

216:                                              ; preds = %207
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i32 131, i32* %218, align 8
  store i32 0, i32* %2, align 4
  br label %365

219:                                              ; preds = %202
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  store i8* %222, i8** %6, align 8
  br label %223

223:                                              ; preds = %239, %219
  %224 = load i8*, i8** %6, align 8
  %225 = load i8, i8* %224, align 1
  %226 = icmp ne i8 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %223
  %228 = load i8*, i8** %6, align 8
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 13
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i8*, i8** %6, align 8
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = icmp ne i32 %235, 10
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %242

238:                                              ; preds = %232, %227
  br label %239

239:                                              ; preds = %238
  %240 = load i8*, i8** %6, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %6, align 8
  br label %223

242:                                              ; preds = %237, %223
  %243 = load i8*, i8** %6, align 8
  %244 = load i8, i8* %243, align 1
  %245 = icmp ne i8 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  br label %147

247:                                              ; preds = %242
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  store i32 135, i32* %249, align 8
  br label %250

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %48, %250
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = call i8* @BIO_get_mem_data(i32 %254, i8** %6)
  %256 = ptrtoint i8* %255 to i32
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp slt i32 %257, 2
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  br label %7

260:                                              ; preds = %251
  %261 = load i8*, i8** %6, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %6, align 8
  %263 = load i8, i8* %261, align 1
  %264 = zext i8 %263 to i32
  %265 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %266 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %267 = or i32 %265, %266
  %268 = icmp ne i32 %264, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %260
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  store i32 131, i32* %271, align 8
  store i32 0, i32* %2, align 4
  br label %365

272:                                              ; preds = %260
  %273 = load i8*, i8** %6, align 8
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = and i32 %275, 128
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %338

278:                                              ; preds = %272
  %279 = load i32, i32* %5, align 4
  %280 = icmp slt i32 %279, 6
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  br label %7

282:                                              ; preds = %278
  %283 = load i8*, i8** %6, align 8
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = and i32 %285, 127
  store i32 %286, i32* %5, align 4
  %287 = load i32, i32* %5, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %282
  %290 = load i32, i32* %5, align 4
  %291 = icmp sgt i32 %290, 4
  br i1 %291, label %292, label %295

292:                                              ; preds = %289, %282
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  store i32 131, i32* %294, align 8
  store i32 0, i32* %2, align 4
  br label %365

295:                                              ; preds = %289
  %296 = load i8*, i8** %6, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %6, align 8
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 3
  store i32 0, i32* %299, align 4
  store i32 0, i32* %4, align 4
  br label %300

300:                                              ; preds = %317, %295
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* %5, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %320

304:                                              ; preds = %300
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 8
  store i32 %308, i32* %306, align 4
  %309 = load i8*, i8** %6, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %6, align 8
  %311 = load i8, i8* %309, align 1
  %312 = zext i8 %311 to i32
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %304
  %318 = load i32, i32* %4, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %4, align 4
  br label %300

320:                                              ; preds = %300
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = icmp sgt i32 %323, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %320
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 0
  store i32 131, i32* %330, align 8
  store i32 0, i32* %2, align 4
  br label %365

331:                                              ; preds = %320
  %332 = load i32, i32* %5, align 4
  %333 = add nsw i32 %332, 2
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, %333
  store i32 %337, i32* %335, align 4
  br label %345

338:                                              ; preds = %272
  %339 = load i8*, i8** %6, align 8
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = add nsw i32 %341, 2
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 3
  store i32 %342, i32* %344, align 4
  br label %345

345:                                              ; preds = %338, %331
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  store i32 137, i32* %347, align 8
  br label %348

348:                                              ; preds = %48, %345
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = call i8* @BIO_get_mem_data(i32 %351, i8** null)
  %353 = ptrtoint i8* %352 to i32
  store i32 %353, i32* %5, align 4
  %354 = load i32, i32* %5, align 4
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = icmp slt i32 %354, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %348
  br label %7

360:                                              ; preds = %348
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 0
  store i32 132, i32* %362, align 8
  store i32 1, i32* %2, align 4
  br label %365

363:                                              ; preds = %48
  store i32 1, i32* %2, align 4
  br label %365

364:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %365

365:                                              ; preds = %364, %363, %360, %328, %292, %269, %216, %199, %190, %166, %145, %142, %141, %104, %103, %58, %46, %34, %33
  %366 = load i32, i32* %2, align 4
  ret i32 %366
}

declare dso_local i32 @BIO_read(i32, i8*, i32) #1

declare dso_local i64 @BIO_should_retry(i32) #1

declare dso_local i32 @BIO_write(i32, ...) #1

declare dso_local i8* @BIO_get_mem_data(i32, i8**) #1

declare dso_local i32 @BIO_reset(i32) #1

declare dso_local i32 @BIO_flush(i32) #1

declare dso_local i32 @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @BIO_gets(i32, i8*, i32) #1

declare dso_local i32 @parse_http_line1(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
