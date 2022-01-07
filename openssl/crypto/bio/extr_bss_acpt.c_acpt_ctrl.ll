; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_acpt.c_acpt_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_acpt.c_acpt_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_9__*, i32* }

@ACPT_S_BEFORE = common dso_local global i32 0, align 4
@BIO_PARSE_PRIO_SERV = common dso_local global i32 0, align 4
@BIO_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@ACPT_S_ACCEPT = common dso_local global i32 0, align 4
@BIO_FAMILY_IPV6 = common dso_local global i64 0, align 8
@BIO_FAMILY_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32, i64, i8*)* @acpt_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpt_ctrl(%struct.TYPE_9__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 1, i64* %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %11, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %298 [
    i32 138, label %19
    i32 135, label %33
    i32 131, label %37
    i32 128, label %132
    i32 129, label %149
    i32 132, label %169
    i32 134, label %191
    i32 140, label %275
    i32 137, label %280
    i32 139, label %285
    i32 136, label %285
    i32 141, label %286
    i32 130, label %287
    i32 133, label %292
    i32 142, label %297
  ]

19:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  %20 = load i32, i32* @ACPT_S_BEFORE, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i32 @acpt_close_socket(%struct.TYPE_9__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 13
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @BIO_ADDRINFO_free(i32* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 13
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32 0, i32* %32, align 4
  br label %299

33:                                               ; preds = %4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = call i64 @acpt_state(%struct.TYPE_9__* %34, %struct.TYPE_8__* %35)
  store i64 %36, i64* %10, align 8
  br label %299

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %120

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %13, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @OPENSSL_free(i8* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i8* null, i8** %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* @BIO_PARSE_PRIO_SERV, align 4
  %59 = call i64 @BIO_parse_hostserv(i8* %53, i8** %55, i8** %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %43
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  br label %68

68:                                               ; preds = %65, %43
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %119

71:                                               ; preds = %40
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @OPENSSL_free(i8* %77)
  %79 = load i8*, i8** %8, align 8
  %80 = call i8* @OPENSSL_strdup(i8* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %118

85:                                               ; preds = %71
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %86, 2
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %117

94:                                               ; preds = %85
  %95 = load i64, i64* %7, align 8
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 12
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = call i32 @BIO_free(%struct.TYPE_9__* %100)
  %102 = load i8*, i8** %8, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_9__*
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 12
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %105, align 8
  br label %116

106:                                              ; preds = %94
  %107 = load i64, i64* %7, align 8
  %108 = icmp eq i64 %107, 4
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i8*, i8** %8, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %106
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %88
  br label %118

118:                                              ; preds = %117, %74
  br label %119

119:                                              ; preds = %118, %68
  br label %131

120:                                              ; preds = %37
  %121 = load i64, i64* %7, align 8
  %122 = icmp eq i64 %121, 2
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %123, %120
  br label %131

131:                                              ; preds = %130, %119
  br label %299

132:                                              ; preds = %4
  %133 = load i64, i64* %7, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %148

141:                                              ; preds = %132
  %142 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %141, %135
  br label %299

149:                                              ; preds = %4
  %150 = load i8*, i8** %8, align 8
  %151 = bitcast i8* %150 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @ACPT_S_ACCEPT, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 11
  store i32 %160, i32* %162, align 4
  %163 = load i64, i64* %7, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  br label %299

169:                                              ; preds = %4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load i8*, i8** %8, align 8
  %176 = bitcast i8* %175 to i32*
  store i32* %176, i32** %9, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %9, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %179, %174
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %10, align 8
  br label %190

189:                                              ; preds = %169
  store i64 -1, i64* %10, align 8
  br label %190

190:                                              ; preds = %189, %184
  br label %299

191:                                              ; preds = %4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %273

196:                                              ; preds = %191
  %197 = load i64, i64* %7, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load i8*, i8** %8, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load i8*, i8** %8, align 8
  %204 = bitcast i8* %203 to i8**
  store i8** %204, i8*** %12, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 6
  %207 = load i8*, i8** %206, align 8
  %208 = load i8**, i8*** %12, align 8
  store i8* %207, i8** %208, align 8
  br label %272

209:                                              ; preds = %199, %196
  %210 = load i64, i64* %7, align 8
  %211 = icmp eq i64 %210, 1
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load i8*, i8** %8, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load i8*, i8** %8, align 8
  %217 = bitcast i8* %216 to i8**
  store i8** %217, i8*** %12, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 7
  %220 = load i8*, i8** %219, align 8
  %221 = load i8**, i8*** %12, align 8
  store i8* %220, i8** %221, align 8
  br label %271

222:                                              ; preds = %212, %209
  %223 = load i64, i64* %7, align 8
  %224 = icmp eq i64 %223, 2
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i8*, i8** %8, align 8
  %230 = bitcast i8* %229 to i8**
  store i8** %230, i8*** %12, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 8
  %233 = load i8*, i8** %232, align 8
  %234 = load i8**, i8*** %12, align 8
  store i8* %233, i8** %234, align 8
  br label %270

235:                                              ; preds = %225, %222
  %236 = load i64, i64* %7, align 8
  %237 = icmp eq i64 %236, 3
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  %239 = load i8*, i8** %8, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load i8*, i8** %8, align 8
  %243 = bitcast i8* %242 to i8**
  store i8** %243, i8*** %12, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 9
  %246 = load i8*, i8** %245, align 8
  %247 = load i8**, i8*** %12, align 8
  store i8* %246, i8** %247, align 8
  br label %269

248:                                              ; preds = %238, %235
  %249 = load i64, i64* %7, align 8
  %250 = icmp eq i64 %249, 4
  br i1 %250, label %251, label %267

251:                                              ; preds = %248
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @BIO_ADDRINFO_family(i32 %254)
  switch i32 %255, label %265 [
    i32 143, label %256
    i32 144, label %258
    i32 0, label %260
  ]

256:                                              ; preds = %251
  %257 = load i64, i64* @BIO_FAMILY_IPV6, align 8
  store i64 %257, i64* %10, align 8
  br label %266

258:                                              ; preds = %251
  %259 = load i64, i64* @BIO_FAMILY_IPV4, align 8
  store i64 %259, i64* %10, align 8
  br label %266

260:                                              ; preds = %251
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %10, align 8
  br label %266

265:                                              ; preds = %251
  store i64 -1, i64* %10, align 8
  br label %266

266:                                              ; preds = %265, %260, %258, %256
  br label %268

267:                                              ; preds = %248
  store i64 -1, i64* %10, align 8
  br label %268

268:                                              ; preds = %267, %266
  br label %269

269:                                              ; preds = %268, %241
  br label %270

270:                                              ; preds = %269, %228
  br label %271

271:                                              ; preds = %270, %215
  br label %272

272:                                              ; preds = %271, %202
  br label %274

273:                                              ; preds = %191
  store i64 -1, i64* %10, align 8
  br label %274

274:                                              ; preds = %273, %272
  br label %299

275:                                              ; preds = %4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %10, align 8
  br label %299

280:                                              ; preds = %4
  %281 = load i64, i64* %7, align 8
  %282 = trunc i64 %281 to i32
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  br label %299

285:                                              ; preds = %4, %4
  store i64 0, i64* %10, align 8
  br label %299

286:                                              ; preds = %4
  br label %299

287:                                              ; preds = %4
  %288 = load i64, i64* %7, align 8
  %289 = trunc i64 %288 to i32
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  br label %299

292:                                              ; preds = %4
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %10, align 8
  br label %299

297:                                              ; preds = %4
  br label %299

298:                                              ; preds = %4
  store i64 0, i64* %10, align 8
  br label %299

299:                                              ; preds = %298, %297, %292, %287, %286, %285, %280, %275, %274, %190, %149, %148, %131, %33, %19
  %300 = load i64, i64* %10, align 8
  ret i64 %300
}

declare dso_local i32 @acpt_close_socket(%struct.TYPE_9__*) #1

declare dso_local i32 @BIO_ADDRINFO_free(i32*) #1

declare dso_local i64 @acpt_state(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @BIO_parse_hostserv(i8*, i8**, i8**, i32) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @BIO_free(%struct.TYPE_9__*) #1

declare dso_local i32 @BIO_ADDRINFO_family(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
