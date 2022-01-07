; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_parse_inet_url.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_inet.c_ngx_parse_inet_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i8*, i32, i8*, i32, i32, i8*, %struct.TYPE_21__, %struct.TYPE_16__*, i8*, i64, i64, %struct.TYPE_14__, %struct.TYPE_19__, %struct.TYPE_18__, i32, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.sockaddr_in = type { %struct.TYPE_15__, i8*, i8* }
%struct.TYPE_15__ = type { i64 }

@AF_INET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"invalid host\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid port\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid port range\00", align 1
@INADDR_ANY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"no host\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_20__*)* @ngx_parse_inet_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_parse_inet_url(i32* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i32 24, i32* %16, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 7
  %19 = bitcast %struct.TYPE_21__* %18 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %14, align 8
  %20 = load i8*, i8** @AF_INET, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @AF_INET, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 16
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 16
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @ngx_strlchr(i8* %36, i8* %37, i8 signext 58)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @ngx_strlchr(i8* %39, i8* %40, i8 signext 47)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i8* @ngx_strlchr(i8* %42, i8* %43, i8 signext 63)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %2
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %47
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %94

60:                                               ; preds = %57
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* @NGX_ERROR, align 4
  store i32 %73, i32* %3, align 4
  br label %497

74:                                               ; preds = %65
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 14
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = load i8*, i8** %9, align 8
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %74
  store i8* null, i8** %7, align 8
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %57
  %95 = load i8*, i8** %7, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %203

97:                                               ; preds = %94
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  store i64 %104, i64* %12, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 11
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %97
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i8* @ngx_strlchr(i8* %110, i8* %111, i8 signext 45)
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %147

115:                                              ; preds = %109
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = call i32 @ngx_atoi(i8* %118, i64 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %130, label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %13, align 4
  %129 = icmp sgt i32 %128, 65535
  br i1 %129, label %130, label %134

130:                                              ; preds = %127, %115
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %132, align 8
  %133 = load i32, i32* @NGX_ERROR, align 4
  store i32 %133, i32* %3, align 4
  br label %497

134:                                              ; preds = %127
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = sub nsw i64 %145, 1
  store i64 %146, i64* %12, align 8
  br label %147

147:                                              ; preds = %134, %109
  br label %148

148:                                              ; preds = %147, %97
  %149 = load i8*, i8** %7, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @ngx_atoi(i8* %149, i64 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = icmp sgt i32 %155, 65535
  br i1 %156, label %157, label %161

157:                                              ; preds = %154, %148
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %159, align 8
  %160 = load i32, i32* @NGX_ERROR, align 4
  store i32 %160, i32* %3, align 4
  br label %497

161:                                              ; preds = %154
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %167, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %174, align 8
  %175 = load i32, i32* @NGX_ERROR, align 4
  store i32 %175, i32* %3, align 4
  br label %497

176:                                              ; preds = %166, %161
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = call i8* @htons(i8* %184)
  %186 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %187 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = ptrtoint i8* %188 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 13
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 13
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  store i8* %197, i8** %200, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 -1
  store i8* %202, i8** %8, align 8
  br label %359

203:                                              ; preds = %94
  %204 = load i8*, i8** %9, align 8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %340

206:                                              ; preds = %203
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 11
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %339

211:                                              ; preds = %206
  %212 = load i8*, i8** %8, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  store i64 %216, i64* %12, align 8
  %217 = load i8*, i8** %6, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = call i8* @ngx_strlchr(i8* %217, i8* %218, i8 signext 45)
  store i8* %219, i8** %11, align 8
  %220 = load i8*, i8** %11, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %259

222:                                              ; preds = %211
  %223 = load i8*, i8** %11, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %11, align 8
  %225 = load i8*, i8** %11, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = ptrtoint i8* %226 to i64
  %229 = ptrtoint i8* %227 to i64
  %230 = sub i64 %228, %229
  %231 = call i32 @ngx_atoi(i8* %225, i64 %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @NGX_ERROR, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %222
  br label %341

236:                                              ; preds = %222
  %237 = load i32, i32* %13, align 4
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* %13, align 4
  %241 = icmp sgt i32 %240, 65535
  br i1 %241, label %242, label %245

242:                                              ; preds = %239, %236
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %244, align 8
  br label %252

245:                                              ; preds = %239
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = ptrtoint i8* %248 to i32
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %245, %242
  %253 = load i8*, i8** %11, align 8
  %254 = load i8*, i8** %6, align 8
  %255 = ptrtoint i8* %253 to i64
  %256 = ptrtoint i8* %254 to i64
  %257 = sub i64 %255, %256
  %258 = sub nsw i64 %257, 1
  store i64 %258, i64* %12, align 8
  br label %259

259:                                              ; preds = %252, %211
  %260 = load i8*, i8** %6, align 8
  %261 = load i64, i64* %12, align 8
  %262 = call i32 @ngx_atoi(i8* %260, i64 %261)
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* @NGX_ERROR, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %338

266:                                              ; preds = %259
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = load i32, i32* @NGX_ERROR, align 4
  store i32 %272, i32* %3, align 4
  br label %497

273:                                              ; preds = %266
  %274 = load i32, i32* %13, align 4
  %275 = icmp slt i32 %274, 1
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %13, align 4
  %278 = icmp sgt i32 %277, 65535
  br i1 %278, label %279, label %283

279:                                              ; preds = %276, %273
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %281, align 8
  %282 = load i32, i32* @NGX_ERROR, align 4
  store i32 %282, i32* %3, align 4
  br label %497

283:                                              ; preds = %276
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %283
  %289 = load i32, i32* %13, align 4
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = icmp sgt i32 %289, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %296, align 8
  %297 = load i32, i32* @NGX_ERROR, align 4
  store i32 %297, i32* %3, align 4
  br label %497

298:                                              ; preds = %288, %283
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 3
  store i8* %301, i8** %303, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i8*
  %307 = call i8* @htons(i8* %306)
  %308 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %309 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %308, i32 0, i32 1
  store i8* %307, i8** %309, align 8
  %310 = load i64, i64* @INADDR_ANY, align 8
  %311 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %312 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  store i64 %310, i64* %313, align 8
  %314 = load i8*, i8** %8, align 8
  %315 = load i8*, i8** %6, align 8
  %316 = ptrtoint i8* %314 to i64
  %317 = ptrtoint i8* %315 to i64
  %318 = sub i64 %316, %317
  %319 = trunc i64 %318 to i32
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 13
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 0
  store i32 %319, i32* %322, align 8
  %323 = load i8*, i8** %6, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 13
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 1
  store i8* %323, i8** %326, align 8
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 4
  store i32 1, i32* %328, align 8
  %329 = load i32*, i32** %4, align 8
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @ngx_inet_add_addr(i32* %329, %struct.TYPE_20__* %330, i32* %333, i32 %336, i32 1)
  store i32 %337, i32* %3, align 4
  br label %497

338:                                              ; preds = %259
  br label %339

339:                                              ; preds = %338, %206
  br label %340

340:                                              ; preds = %339, %203
  br label %341

341:                                              ; preds = %340, %235
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 1
  store i8* null, i8** %343, align 8
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 5
  store i32 1, i32* %345, align 4
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 6
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 3
  store i8* %348, i8** %350, align 8
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 6
  %353 = load i8*, i8** %352, align 8
  %354 = call i8* @htons(i8* %353)
  %355 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %356 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %355, i32 0, i32 1
  store i8* %354, i8** %356, align 8
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 2
  store i32 0, i32* %358, align 8
  br label %359

359:                                              ; preds = %341, %176
  %360 = load i8*, i8** %8, align 8
  %361 = load i8*, i8** %6, align 8
  %362 = ptrtoint i8* %360 to i64
  %363 = ptrtoint i8* %361 to i64
  %364 = sub i64 %362, %363
  store i64 %364, i64* %12, align 8
  %365 = load i64, i64* %12, align 8
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %359
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %369, align 8
  %370 = load i32, i32* @NGX_ERROR, align 4
  store i32 %370, i32* %3, align 4
  br label %497

371:                                              ; preds = %359
  %372 = load i64, i64* %12, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 12
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 0
  store i64 %372, i64* %375, align 8
  %376 = load i8*, i8** %6, align 8
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 12
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 1
  store i8* %376, i8** %379, align 8
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 11
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %408

384:                                              ; preds = %371
  %385 = load i64, i64* %12, align 8
  %386 = icmp eq i64 %385, 1
  br i1 %386, label %387, label %408

387:                                              ; preds = %384
  %388 = load i8*, i8** %6, align 8
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = icmp eq i32 %390, 42
  br i1 %391, label %392, label %408

392:                                              ; preds = %387
  %393 = load i64, i64* @INADDR_ANY, align 8
  %394 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %395 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 0
  store i64 %393, i64* %396, align 8
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 4
  store i32 1, i32* %398, align 8
  %399 = load i32*, i32** %4, align 8
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 7
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @ngx_inet_add_addr(i32* %399, %struct.TYPE_20__* %400, i32* %403, i32 %406, i32 1)
  store i32 %407, i32* %3, align 4
  br label %497

408:                                              ; preds = %387, %384, %371
  %409 = load i8*, i8** %6, align 8
  %410 = load i64, i64* %12, align 8
  %411 = call i64 @ngx_inet_addr(i8* %409, i64 %410)
  %412 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %413 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 0
  store i64 %411, i64* %414, align 8
  %415 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %416 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @INADDR_NONE, align 8
  %420 = icmp ne i64 %418, %419
  br i1 %420, label %421, label %441

421:                                              ; preds = %408
  %422 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %423 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @INADDR_ANY, align 8
  %427 = icmp eq i64 %425, %426
  br i1 %427, label %428, label %431

428:                                              ; preds = %421
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 4
  store i32 1, i32* %430, align 8
  br label %431

431:                                              ; preds = %428, %421
  %432 = load i32*, i32** %4, align 8
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i32 0, i32 7
  %436 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @ngx_inet_add_addr(i32* %432, %struct.TYPE_20__* %433, i32* %436, i32 %439, i32 1)
  store i32 %440, i32* %3, align 4
  br label %497

441:                                              ; preds = %408
  %442 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %442, i32 0, i32 10
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %441
  %447 = load i32, i32* @NGX_OK, align 4
  store i32 %447, i32* %3, align 4
  br label %497

448:                                              ; preds = %441
  %449 = load i32*, i32** %4, align 8
  %450 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %451 = call i32 @ngx_inet_resolve_host(i32* %449, %struct.TYPE_20__* %450)
  %452 = load i32, i32* @NGX_OK, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %456

454:                                              ; preds = %448
  %455 = load i32, i32* @NGX_ERROR, align 4
  store i32 %455, i32* %3, align 4
  br label %497

456:                                              ; preds = %448
  %457 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %457, i32 0, i32 8
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i64 0
  %461 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %460, i32 0, i32 1
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 0
  %464 = load i8*, i8** %463, align 8
  %465 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %465, i32 0, i32 9
  store i8* %464, i8** %466, align 8
  %467 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %467, i32 0, i32 8
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i64 0
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 0
  store i32 %472, i32* %474, align 8
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 7
  %477 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 8
  %479 = load %struct.TYPE_16__*, %struct.TYPE_16__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %479, i64 0
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 1
  %482 = load %struct.TYPE_13__*, %struct.TYPE_13__** %481, align 8
  %483 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 8
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i64 0
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = call i32 @ngx_memcpy(%struct.TYPE_21__* %476, %struct.TYPE_13__* %482, i32 %488)
  %490 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i32 0, i32 7
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %491, i32 0, i32 0
  %493 = call i32 @ngx_inet_wildcard(i32* %492)
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %494, i32 0, i32 4
  store i32 %493, i32* %495, align 8
  %496 = load i32, i32* @NGX_OK, align 4
  store i32 %496, i32* %3, align 4
  br label %497

497:                                              ; preds = %456, %454, %446, %431, %392, %367, %298, %294, %279, %271, %172, %157, %130, %70
  %498 = load i32, i32* %3, align 4
  ret i32 %498
}

declare dso_local i8* @ngx_strlchr(i8*, i8*, i8 signext) #1

declare dso_local i32 @ngx_atoi(i8*, i64) #1

declare dso_local i8* @htons(i8*) #1

declare dso_local i32 @ngx_inet_add_addr(i32*, %struct.TYPE_20__*, i32*, i32, i32) #1

declare dso_local i64 @ngx_inet_addr(i8*, i64) #1

declare dso_local i32 @ngx_inet_resolve_host(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_21__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_inet_wildcard(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
