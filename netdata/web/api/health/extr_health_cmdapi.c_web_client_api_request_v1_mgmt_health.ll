; ModuleID = '/home/carl/AnghaBench/netdata/web/api/health/extr_health_cmdapi.c_web_client_api_request_v1_mgmt_health.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/health/extr_health_cmdapi.c_web_client_api_request_v1_mgmt_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32* }
%struct.web_client = type { i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@CT_TEXT_PLAIN = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_MSG_AUTHERROR = common dso_local global i32 0, align 4
@HTTP_RESP_FORBIDDEN = common dso_local global i32 0, align 4
@D_HEALTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"HEALTH command API: Comparing secret '%s' to '%s'\00", align 1
@api_secret = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"%llu: API v1 health query param '%s' with value '%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@HEALTH_CMDAPI_CMD_SILENCEALL = common dso_local global i8* null, align 8
@silencers = common dso_local global %struct.TYPE_12__* null, align 8
@STYPE_SILENCE_NOTIFICATIONS = common dso_local global i8* null, align 8
@HEALTH_CMDAPI_MSG_SILENCEALL = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_CMD_DISABLEALL = common dso_local global i8* null, align 8
@STYPE_DISABLE_ALARMS = common dso_local global i8* null, align 8
@HEALTH_CMDAPI_MSG_DISABLEALL = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_CMD_SILENCE = common dso_local global i8* null, align 8
@HEALTH_CMDAPI_MSG_SILENCE = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_CMD_DISABLE = common dso_local global i8* null, align 8
@HEALTH_CMDAPI_MSG_DISABLE = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_CMD_RESET = common dso_local global i8* null, align 8
@STYPE_NONE = common dso_local global i64 0, align 8
@HEALTH_CMDAPI_MSG_RESET = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_CMD_LIST = common dso_local global i8* null, align 8
@CT_APPLICATION_JSON = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_MSG_ADDED = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_MSG_STYPEWARNING = common dso_local global i32 0, align 4
@HEALTH_CMDAPI_MSG_NOSELECTORWARNING = common dso_local global i32 0, align 4
@HTTP_RESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @web_client_api_request_v1_mgmt_health(i32* %0, %struct.web_client* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.web_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.web_client* %1, %struct.web_client** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.web_client*, %struct.web_client** %5, align 8
  %16 = getelementptr inbounds %struct.web_client, %struct.web_client* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %8, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = call i32 @buffer_flush(%struct.TYPE_11__* %19)
  %21 = load i32, i32* @CT_TEXT_PLAIN, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.web_client*, %struct.web_client** %5, align 8
  %25 = getelementptr inbounds %struct.web_client, %struct.web_client* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = call i32 @buffer_flush(%struct.TYPE_11__* %27)
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %29 = load %struct.web_client*, %struct.web_client** %5, align 8
  %30 = getelementptr inbounds %struct.web_client, %struct.web_client* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = load i32, i32* @HEALTH_CMDAPI_MSG_AUTHERROR, align 4
  %36 = call i32 @buffer_strcat(%struct.TYPE_11__* %34, i32 %35)
  %37 = load i32, i32* @HTTP_RESP_FORBIDDEN, align 4
  store i32 %37, i32* %7, align 4
  br label %250

38:                                               ; preds = %3
  %39 = load i32, i32* @D_HEALTH, align 4
  %40 = load %struct.web_client*, %struct.web_client** %5, align 8
  %41 = getelementptr inbounds %struct.web_client, %struct.web_client* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @api_secret, align 8
  %44 = call i32 (i32, i8*, i8*, i8*, ...) @debug(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load %struct.web_client*, %struct.web_client** %5, align 8
  %46 = getelementptr inbounds %struct.web_client, %struct.web_client* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** @api_secret, align 8
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = load i32, i32* @HEALTH_CMDAPI_MSG_AUTHERROR, align 4
  %54 = call i32 @buffer_strcat(%struct.TYPE_11__* %52, i32 %53)
  %55 = load i32, i32* @HTTP_RESP_FORBIDDEN, align 4
  store i32 %55, i32* %7, align 4
  br label %249

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %200, %85, %77, %68, %56
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %201

60:                                               ; preds = %57
  %61 = call i8* @mystrsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %60
  br label %57

69:                                               ; preds = %64
  %70 = call i8* @mystrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8*, i8** %12, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73, %69
  br label %57

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %78
  br label %57

86:                                               ; preds = %81
  %87 = load i32, i32* @D_WEB_CLIENT, align 4
  %88 = load %struct.web_client*, %struct.web_client** %5, align 8
  %89 = getelementptr inbounds %struct.web_client, %struct.web_client* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 (i32, i8*, i8*, i8*, ...) @debug(i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %92, i8* %93, i8* %94)
  %96 = load i8*, i8** %12, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %195, label %99

99:                                               ; preds = %86
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** @HEALTH_CMDAPI_CMD_SILENCEALL, align 8
  %102 = call i64 @strcmp(i8* %100, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i8*, i8** @STYPE_SILENCE_NOTIFICATIONS, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = load i32, i32* @HEALTH_CMDAPI_MSG_SILENCEALL, align 4
  %113 = call i32 @buffer_strcat(%struct.TYPE_11__* %111, i32 %112)
  br label %194

114:                                              ; preds = %99
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** @HEALTH_CMDAPI_CMD_DISABLEALL, align 8
  %117 = call i64 @strcmp(i8* %115, i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load i8*, i8** @STYPE_DISABLE_ALARMS, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = load i32, i32* @HEALTH_CMDAPI_MSG_DISABLEALL, align 4
  %128 = call i32 @buffer_strcat(%struct.TYPE_11__* %126, i32 %127)
  br label %193

129:                                              ; preds = %114
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** @HEALTH_CMDAPI_CMD_SILENCE, align 8
  %132 = call i64 @strcmp(i8* %130, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** @STYPE_SILENCE_NOTIFICATIONS, align 8
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = load i32, i32* @HEALTH_CMDAPI_MSG_SILENCE, align 4
  %141 = call i32 @buffer_strcat(%struct.TYPE_11__* %139, i32 %140)
  br label %192

142:                                              ; preds = %129
  %143 = load i8*, i8** %11, align 8
  %144 = load i8*, i8** @HEALTH_CMDAPI_CMD_DISABLE, align 8
  %145 = call i64 @strcmp(i8* %143, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** @STYPE_DISABLE_ALARMS, align 8
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = load i32, i32* @HEALTH_CMDAPI_MSG_DISABLE, align 4
  %154 = call i32 @buffer_strcat(%struct.TYPE_11__* %152, i32 %153)
  br label %191

155:                                              ; preds = %142
  %156 = load i8*, i8** %11, align 8
  %157 = load i8*, i8** @HEALTH_CMDAPI_CMD_RESET, align 8
  %158 = call i64 @strcmp(i8* %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load i64, i64* @STYPE_NONE, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @free_silencers(i32* %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  store i32* null, i32** %171, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %173 = load i32, i32* @HEALTH_CMDAPI_MSG_RESET, align 4
  %174 = call i32 @buffer_strcat(%struct.TYPE_11__* %172, i32 %173)
  br label %190

175:                                              ; preds = %155
  %176 = load i8*, i8** %11, align 8
  %177 = load i8*, i8** @HEALTH_CMDAPI_CMD_LIST, align 8
  %178 = call i64 @strcmp(i8* %176, i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @CT_APPLICATION_JSON, align 4
  %182 = load %struct.web_client*, %struct.web_client** %5, align 8
  %183 = getelementptr inbounds %struct.web_client, %struct.web_client* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 %181, i32* %186, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %188 = call i32 @health_silencers2json(%struct.TYPE_11__* %187)
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %180, %175
  br label %190

190:                                              ; preds = %189, %160
  br label %191

191:                                              ; preds = %190, %147
  br label %192

192:                                              ; preds = %191, %134
  br label %193

193:                                              ; preds = %192, %119
  br label %194

194:                                              ; preds = %193, %104
  br label %200

195:                                              ; preds = %86
  %196 = load i32*, i32** %9, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = call i32* @health_silencers_addparam(i32* %196, i8* %197, i8* %198)
  store i32* %199, i32** %9, align 8
  br label %200

200:                                              ; preds = %195, %194
  br label %57

201:                                              ; preds = %57
  %202 = load i32*, i32** %9, align 8
  %203 = call i64 @likely(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %201
  %206 = load i32*, i32** %9, align 8
  %207 = call i32 @health_silencers_add(i32* %206)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %209 = load i32, i32* @HEALTH_CMDAPI_MSG_ADDED, align 4
  %210 = call i32 @buffer_strcat(%struct.TYPE_11__* %208, i32 %209)
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @STYPE_NONE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %205
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = load i32, i32* @HEALTH_CMDAPI_MSG_STYPEWARNING, align 4
  %219 = call i32 @buffer_strcat(%struct.TYPE_11__* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %205
  br label %221

221:                                              ; preds = %220, %201
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @STYPE_NONE, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %221
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %227
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @silencers, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  %237 = xor i1 %236, true
  br label %238

238:                                              ; preds = %232, %227, %221
  %239 = phi i1 [ false, %227 ], [ false, %221 ], [ %237, %232 ]
  %240 = zext i1 %239 to i32
  %241 = call i64 @unlikely(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %245 = load i32, i32* @HEALTH_CMDAPI_MSG_NOSELECTORWARNING, align 4
  %246 = call i32 @buffer_strcat(%struct.TYPE_11__* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %238
  %248 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %248, i32* %7, align 4
  br label %249

249:                                              ; preds = %247, %51
  br label %250

250:                                              ; preds = %249, %33
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %252 = load %struct.web_client*, %struct.web_client** %5, align 8
  %253 = getelementptr inbounds %struct.web_client, %struct.web_client* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  store %struct.TYPE_11__* %251, %struct.TYPE_11__** %254, align 8
  %255 = load %struct.web_client*, %struct.web_client** %5, align 8
  %256 = getelementptr inbounds %struct.web_client, %struct.web_client* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = call i32 @buffer_no_cacheable(%struct.TYPE_11__* %258)
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* @HTTP_RESP_OK, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %250
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = call %struct.TYPE_11__* @buffer_create(i32 200)
  store %struct.TYPE_11__* %267, %struct.TYPE_11__** %13, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %269 = call i32 @health_silencers2json(%struct.TYPE_11__* %268)
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %271 = call i32 @health_silencers2file(%struct.TYPE_11__* %270)
  br label %272

272:                                              ; preds = %266, %263, %250
  %273 = load i32, i32* %7, align 4
  ret i32 %273
}

declare dso_local i32 @buffer_flush(%struct.TYPE_11__*) #1

declare dso_local i32 @buffer_strcat(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @debug(i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @mystrsep(i8**, i8*) #1

declare dso_local i32 @free_silencers(i32*) #1

declare dso_local i32 @health_silencers2json(%struct.TYPE_11__*) #1

declare dso_local i32* @health_silencers_addparam(i32*, i8*, i8*) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @health_silencers_add(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_no_cacheable(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @buffer_create(i32) #1

declare dso_local i32 @health_silencers2file(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
