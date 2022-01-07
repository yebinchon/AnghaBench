; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_conn.c_conn_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_conn.c_conn_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_12__ = type { i8*, i8*, i64, i32, i32*, i32*, i32*, i32 }

@BIO_CONN_S_BEFORE = common dso_local global i32 0, align 4
@BIO_CONN_S_OK = common dso_local global i32 0, align 4
@BIO_FAMILY_IPV6 = common dso_local global i64 0, align 8
@BIO_FAMILY_IPV4 = common dso_local global i64 0, align 8
@BIO_PARSE_PRIO_HOST = common dso_local global i32 0, align 4
@BIO_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, i64, i8*)* @conn_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conn_ctrl(%struct.TYPE_13__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i8** null, i8*** %11, align 8
  store i64 1, i64* %12, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %13, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %297 [
    i32 137, label %22
    i32 133, label %36
    i32 132, label %48
    i32 130, label %104
    i32 128, label %192
    i32 129, label %209
    i32 131, label %214
    i32 139, label %236
    i32 135, label %240
    i32 138, label %246
    i32 134, label %246
    i32 141, label %247
    i32 142, label %248
    i32 136, label %289
    i32 140, label %290
  ]

22:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  %23 = load i32, i32* @BIO_CONN_S_BEFORE, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = call i32 @conn_close_socket(%struct.TYPE_13__* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @BIO_ADDRINFO_free(i32* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  store i32 0, i32* %35, align 8
  br label %298

36:                                               ; preds = %4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BIO_CONN_S_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %45 = call i64 @conn_state(%struct.TYPE_13__* %43, %struct.TYPE_12__* %44)
  store i64 %45, i64* %12, align 8
  br label %47

46:                                               ; preds = %36
  store i64 1, i64* %12, align 8
  br label %47

47:                                               ; preds = %46, %42
  br label %298

48:                                               ; preds = %4
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %102

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to i8**
  store i8** %53, i8*** %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %11, align 8
  store i8* %59, i8** %60, align 8
  br label %101

61:                                               ; preds = %51
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %11, align 8
  store i8* %67, i8** %68, align 8
  br label %100

69:                                               ; preds = %61
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %70, 2
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @BIO_ADDRINFO_address(i32* %75)
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8**, i8*** %11, align 8
  store i8* %77, i8** %78, align 8
  br label %99

79:                                               ; preds = %69
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @BIO_ADDRINFO_family(i32* %85)
  switch i32 %86, label %95 [
    i32 143, label %87
    i32 144, label %89
    i32 0, label %91
  ]

87:                                               ; preds = %82
  %88 = load i64, i64* @BIO_FAMILY_IPV6, align 8
  store i64 %88, i64* %12, align 8
  br label %96

89:                                               ; preds = %82
  %90 = load i64, i64* @BIO_FAMILY_IPV4, align 8
  store i64 %90, i64* %12, align 8
  br label %96

91:                                               ; preds = %82
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %12, align 8
  br label %96

95:                                               ; preds = %82
  store i64 -1, i64* %12, align 8
  br label %96

96:                                               ; preds = %95, %91, %89, %87
  br label %98

97:                                               ; preds = %79
  store i64 0, i64* %12, align 8
  br label %98

98:                                               ; preds = %97, %96
  br label %99

99:                                               ; preds = %98, %72
  br label %100

100:                                              ; preds = %99, %64
  br label %101

101:                                              ; preds = %100, %56
  br label %103

102:                                              ; preds = %48
  store i64 0, i64* %12, align 8
  br label %103

103:                                              ; preds = %102, %101
  br label %298

104:                                              ; preds = %4
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %191

107:                                              ; preds = %104
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %14, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @OPENSSL_free(i8* %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i8* null, i8** %121, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* @BIO_PARSE_PRIO_HOST, align 4
  %128 = call i64 @BIO_parse_hostserv(i8* %122, i8** %124, i8** %126, i32 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %112
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @OPENSSL_free(i8* %135)
  br label %137

137:                                              ; preds = %134, %112
  br label %190

138:                                              ; preds = %107
  %139 = load i64, i64* %7, align 8
  %140 = icmp eq i64 %139, 1
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @OPENSSL_free(i8* %144)
  %146 = load i8*, i8** %8, align 8
  %147 = call i8* @OPENSSL_strdup(i8* %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %189

150:                                              ; preds = %138
  %151 = load i64, i64* %7, align 8
  %152 = icmp eq i64 %151, 2
  br i1 %152, label %153, label %176

153:                                              ; preds = %150
  %154 = load i8*, i8** %8, align 8
  %155 = bitcast i8* %154 to i32*
  store i32* %155, i32** %15, align 8
  %156 = load i64, i64* %12, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %153
  %159 = load i32*, i32** %15, align 8
  %160 = call i8* @BIO_ADDR_hostname_string(i32* %159, i32 1)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load i32*, i32** %15, align 8
  %164 = call i8* @BIO_ADDR_service_string(i32* %163, i32 1)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @BIO_ADDRINFO_free(i32* %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 6
  store i32* null, i32** %172, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 5
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %158, %153
  br label %188

176:                                              ; preds = %150
  %177 = load i64, i64* %7, align 8
  %178 = icmp eq i64 %177, 3
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i8*, i8** %8, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  br label %187

186:                                              ; preds = %176
  store i64 0, i64* %12, align 8
  br label %187

187:                                              ; preds = %186, %179
  br label %188

188:                                              ; preds = %187, %175
  br label %189

189:                                              ; preds = %188, %141
  br label %190

190:                                              ; preds = %189, %137
  br label %191

191:                                              ; preds = %190, %104
  br label %298

192:                                              ; preds = %4
  %193 = load i64, i64* %7, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %208

201:                                              ; preds = %192
  %202 = load i32, i32* @BIO_SOCK_NONBLOCK, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %201, %195
  br label %298

209:                                              ; preds = %4
  %210 = load i64, i64* %7, align 8
  %211 = trunc i64 %210 to i32
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  br label %298

214:                                              ; preds = %4
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %214
  %220 = load i8*, i8** %8, align 8
  %221 = bitcast i8* %220 to i32*
  store i32* %221, i32** %10, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %10, align 8
  store i32 %227, i32* %228, align 4
  br label %229

229:                                              ; preds = %224, %219
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %12, align 8
  br label %235

234:                                              ; preds = %214
  store i64 -1, i64* %12, align 8
  br label %235

235:                                              ; preds = %234, %229
  br label %298

236:                                              ; preds = %4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %12, align 8
  br label %298

240:                                              ; preds = %4
  %241 = load i64, i64* %7, align 8
  %242 = trunc i64 %241 to i32
  %243 = sext i32 %242 to i64
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 2
  store i64 %243, i64* %245, align 8
  br label %298

246:                                              ; preds = %4, %4
  store i64 0, i64* %12, align 8
  br label %298

247:                                              ; preds = %4
  br label %298

248:                                              ; preds = %4
  %249 = load i8*, i8** %8, align 8
  %250 = bitcast i8* %249 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %250, %struct.TYPE_13__** %9, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @BIO_set_conn_hostname(%struct.TYPE_13__* %256, i8* %259)
  br label %261

261:                                              ; preds = %255, %248
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @BIO_set_conn_port(%struct.TYPE_13__* %267, i8* %270)
  br label %272

272:                                              ; preds = %266, %261
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = call i32 @BIO_set_conn_ip_family(%struct.TYPE_13__* %273, i32 %277)
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @BIO_set_conn_mode(%struct.TYPE_13__* %279, i32 %282)
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 4
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @BIO_set_info_callback(%struct.TYPE_13__* %284, i32* %287)
  br label %298

289:                                              ; preds = %4
  store i64 0, i64* %12, align 8
  br label %298

290:                                              ; preds = %4
  %291 = load i8*, i8** %8, align 8
  %292 = bitcast i8* %291 to i32**
  store i32** %292, i32*** %16, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 4
  %295 = load i32*, i32** %294, align 8
  %296 = load i32**, i32*** %16, align 8
  store i32* %295, i32** %296, align 8
  br label %298

297:                                              ; preds = %4
  store i64 0, i64* %12, align 8
  br label %298

298:                                              ; preds = %297, %290, %289, %272, %247, %246, %240, %236, %235, %209, %208, %191, %103, %47, %22
  %299 = load i64, i64* %12, align 8
  ret i64 %299
}

declare dso_local i32 @conn_close_socket(%struct.TYPE_13__*) #1

declare dso_local i32 @BIO_ADDRINFO_free(i32*) #1

declare dso_local i64 @conn_state(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i64 @BIO_ADDRINFO_address(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_family(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @BIO_parse_hostserv(i8*, i8**, i8**, i32) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @BIO_ADDR_hostname_string(i32*, i32) #1

declare dso_local i8* @BIO_ADDR_service_string(i32*, i32) #1

declare dso_local i32 @BIO_set_conn_hostname(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @BIO_set_conn_port(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @BIO_set_conn_ip_family(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @BIO_set_conn_mode(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @BIO_set_info_callback(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
