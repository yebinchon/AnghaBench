; ModuleID = '/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_web_client_api_request_v1_badge.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_web_client_api_request_v1_badge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8*, i64 }
%struct.TYPE_17__ = type { i32, i8*, i32, i64 }

@HTTP_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@RRDR_GROUPING_AVERAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"%llu: API v1 badge.svg query param '%s' with value '%s'\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"chart\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dimension\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dim\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dims\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"label_color\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"value_color\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"multiply\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"divide\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"fixed_width_lbl\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"fixed_width_val\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"No chart id is given at the request.\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"chart not found\00", align 1
@NAN = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HTTP_RESP_OK = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"alarm not found\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@RRDR_OPTION_NOT_ALIGNED = common dso_local global i32 0, align 4
@RRDR_OPTION_PERCENTAGE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.32 = private unnamed_addr constant [146 x i8] c"%llu: API command 'badge.svg' for chart '%s', alarm '%s', dimensions '%s', after '%lld', before '%lld', points '%d', group '%d', options '0x%08x'\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Refresh: %d\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"orange\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"brightgreen\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"lightgrey\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"#000\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@HTTP_RESP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @web_client_api_request_v1_badge(i32* %0, %struct.web_client* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.web_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_16__*, align 8
  %33 = alloca %struct.TYPE_17__*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.web_client* %1, %struct.web_client** %5, align 8
  store i8* %2, i8** %6, align 8
  %46 = load i32, i32* @HTTP_RESP_BAD_REQUEST, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.web_client*, %struct.web_client** %5, align 8
  %48 = getelementptr inbounds %struct.web_client, %struct.web_client* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = call i32 @buffer_flush(%struct.TYPE_18__* %50)
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  %52 = load i32, i32* @RRDR_GROUPING_AVERAGE, align 4
  store i32 %52, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %53

53:                                               ; preds = %247, %81, %73, %64, %3
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %248

56:                                               ; preds = %53
  %57 = call i8* @mystrsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %57, i8** %27, align 8
  %58 = load i8*, i8** %27, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8*, i8** %27, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %56
  br label %53

65:                                               ; preds = %60
  %66 = call i8* @mystrsep(i8** %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %66, i8** %28, align 8
  %67 = load i8*, i8** %28, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** %28, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69, %65
  br label %53

74:                                               ; preds = %69
  %75 = load i8*, i8** %27, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %27, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %74
  br label %53

82:                                               ; preds = %77
  %83 = load i32, i32* @D_WEB_CLIENT, align 4
  %84 = load %struct.web_client*, %struct.web_client** %5, align 8
  %85 = getelementptr inbounds %struct.web_client, %struct.web_client* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %28, align 8
  %88 = load i8*, i8** %27, align 8
  %89 = call i32 (i32, i8*, i32, i8*, i8*, ...) @debug(i32 %83, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %86, i8* %87, i8* %88)
  %90 = load i8*, i8** %28, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  %94 = load i8*, i8** %27, align 8
  store i8* %94, i8** %9, align 8
  br label %247

95:                                               ; preds = %82
  %96 = load i8*, i8** %28, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i8*, i8** %28, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i8*, i8** %28, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %28, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %107, %103, %99, %95
  %112 = load i32*, i32** %8, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call i32* @buffer_create(i32 100)
  store i32* %115, i32** %8, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @buffer_strcat(i32* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %119 = load i32*, i32** %8, align 8
  %120 = load i8*, i8** %27, align 8
  %121 = call i32 @buffer_strcat(i32* %119, i8* %120)
  br label %246

122:                                              ; preds = %107
  %123 = load i8*, i8** %28, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %27, align 8
  store i8* %127, i8** %11, align 8
  br label %245

128:                                              ; preds = %122
  %129 = load i8*, i8** %28, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %27, align 8
  store i8* %133, i8** %10, align 8
  br label %244

134:                                              ; preds = %128
  %135 = load i8*, i8** %28, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %27, align 8
  store i8* %139, i8** %12, align 8
  br label %243

140:                                              ; preds = %134
  %141 = load i8*, i8** %28, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %27, align 8
  %146 = load i32, i32* @RRDR_GROUPING_AVERAGE, align 4
  %147 = call i32 @web_client_api_request_v1_data_group(i8* %145, i32 %146)
  store i32 %147, i32* %25, align 4
  br label %242

148:                                              ; preds = %140
  %149 = load i8*, i8** %28, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %27, align 8
  %154 = call i32 @web_client_api_request_v1_data_options(i8* %153)
  %155 = load i32, i32* %26, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %26, align 4
  br label %241

157:                                              ; preds = %148
  %158 = load i8*, i8** %28, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = load i8*, i8** %27, align 8
  store i8* %162, i8** %15, align 8
  br label %240

163:                                              ; preds = %157
  %164 = load i8*, i8** %28, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load i8*, i8** %27, align 8
  store i8* %168, i8** %16, align 8
  br label %239

169:                                              ; preds = %163
  %170 = load i8*, i8** %28, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load i8*, i8** %27, align 8
  store i8* %174, i8** %17, align 8
  br label %238

175:                                              ; preds = %169
  %176 = load i8*, i8** %28, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = load i8*, i8** %27, align 8
  store i8* %180, i8** %18, align 8
  br label %237

181:                                              ; preds = %175
  %182 = load i8*, i8** %28, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = load i8*, i8** %27, align 8
  store i8* %186, i8** %13, align 8
  br label %236

187:                                              ; preds = %181
  %188 = load i8*, i8** %28, align 8
  %189 = call i32 @strcmp(i8* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = load i8*, i8** %27, align 8
  store i8* %192, i8** %14, align 8
  br label %235

193:                                              ; preds = %187
  %194 = load i8*, i8** %28, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = load i8*, i8** %27, align 8
  store i8* %198, i8** %19, align 8
  br label %234

199:                                              ; preds = %193
  %200 = load i8*, i8** %28, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = load i8*, i8** %27, align 8
  store i8* %204, i8** %20, align 8
  br label %233

205:                                              ; preds = %199
  %206 = load i8*, i8** %28, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load i8*, i8** %27, align 8
  store i8* %210, i8** %21, align 8
  br label %232

211:                                              ; preds = %205
  %212 = load i8*, i8** %28, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = load i8*, i8** %27, align 8
  store i8* %216, i8** %23, align 8
  br label %231

217:                                              ; preds = %211
  %218 = load i8*, i8** %28, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = load i8*, i8** %27, align 8
  store i8* %222, i8** %24, align 8
  br label %230

223:                                              ; preds = %217
  %224 = load i8*, i8** %28, align 8
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = load i8*, i8** %27, align 8
  store i8* %228, i8** %22, align 8
  br label %229

229:                                              ; preds = %227, %223
  br label %230

230:                                              ; preds = %229, %221
  br label %231

231:                                              ; preds = %230, %215
  br label %232

232:                                              ; preds = %231, %209
  br label %233

233:                                              ; preds = %232, %203
  br label %234

234:                                              ; preds = %233, %197
  br label %235

235:                                              ; preds = %234, %191
  br label %236

236:                                              ; preds = %235, %185
  br label %237

237:                                              ; preds = %236, %179
  br label %238

238:                                              ; preds = %237, %173
  br label %239

239:                                              ; preds = %238, %167
  br label %240

240:                                              ; preds = %239, %161
  br label %241

241:                                              ; preds = %240, %152
  br label %242

242:                                              ; preds = %241, %144
  br label %243

243:                                              ; preds = %242, %138
  br label %244

244:                                              ; preds = %243, %132
  br label %245

245:                                              ; preds = %244, %126
  br label %246

246:                                              ; preds = %245, %116
  br label %247

247:                                              ; preds = %246, %93
  br label %53

248:                                              ; preds = %53
  store i32 -1, i32* %29, align 4
  store i32 -1, i32* %30, align 4
  %249 = load i8*, i8** %23, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %269

251:                                              ; preds = %248
  %252 = load i8*, i8** %23, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %251
  %257 = load i8*, i8** %24, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %269

259:                                              ; preds = %256
  %260 = load i8*, i8** %24, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load i8*, i8** %23, align 8
  %266 = call i32 @str2i(i8* %265)
  store i32 %266, i32* %29, align 4
  %267 = load i8*, i8** %24, align 8
  %268 = call i32 @str2i(i8* %267)
  store i32 %268, i32* %30, align 4
  br label %269

269:                                              ; preds = %264, %259, %256, %251, %248
  %270 = load i8*, i8** %9, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i8*, i8** %9, align 8
  %274 = load i8, i8* %273, align 1
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %287, label %276

276:                                              ; preds = %272, %269
  %277 = load %struct.web_client*, %struct.web_client** %5, align 8
  %278 = getelementptr inbounds %struct.web_client, %struct.web_client* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = call i32 @buffer_no_cacheable(%struct.TYPE_18__* %280)
  %282 = load %struct.web_client*, %struct.web_client** %5, align 8
  %283 = getelementptr inbounds %struct.web_client, %struct.web_client* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = call i32 (%struct.TYPE_18__*, i8*, ...) @buffer_sprintf(%struct.TYPE_18__* %285, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0))
  br label %786

287:                                              ; preds = %272
  %288 = load i8*, i8** %21, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %298

290:                                              ; preds = %287
  %291 = load i8*, i8** %21, align 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load i8*, i8** %21, align 8
  %297 = call i32 @str2i(i8* %296)
  br label %299

298:                                              ; preds = %290, %287
  br label %299

299:                                              ; preds = %298, %295
  %300 = phi i32 [ %297, %295 ], [ 100, %298 ]
  store i32 %300, i32* %31, align 4
  %301 = load i32*, i32** %4, align 8
  %302 = load i8*, i8** %9, align 8
  %303 = call %struct.TYPE_16__* @rrdset_find(i32* %301, i8* %302)
  store %struct.TYPE_16__* %303, %struct.TYPE_16__** %32, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %305 = icmp ne %struct.TYPE_16__* %304, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %299
  %307 = load i32*, i32** %4, align 8
  %308 = load i8*, i8** %9, align 8
  %309 = call %struct.TYPE_16__* @rrdset_find_byname(i32* %307, i8* %308)
  store %struct.TYPE_16__* %309, %struct.TYPE_16__** %32, align 8
  br label %310

310:                                              ; preds = %306, %299
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %312 = icmp ne %struct.TYPE_16__* %311, null
  br i1 %312, label %327, label %313

313:                                              ; preds = %310
  %314 = load %struct.web_client*, %struct.web_client** %5, align 8
  %315 = getelementptr inbounds %struct.web_client, %struct.web_client* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %316, align 8
  %318 = call i32 @buffer_no_cacheable(%struct.TYPE_18__* %317)
  %319 = load %struct.web_client*, %struct.web_client** %5, align 8
  %320 = getelementptr inbounds %struct.web_client, %struct.web_client* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %321, align 8
  %323 = load i64, i64* @NAN, align 8
  %324 = load i32, i32* %31, align 4
  %325 = call i32 @buffer_svg(%struct.TYPE_18__* %322, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i64 %323, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8* null, i8* null, i32 -1, i32 %324, i32 0, i32 -1, i32 -1)
  %326 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %326, i32* %7, align 4
  br label %786

327:                                              ; preds = %310
  %328 = call i32 (...) @now_realtime_sec()
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %33, align 8
  %331 = load i8*, i8** %22, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %354

333:                                              ; preds = %327
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %335 = load i8*, i8** %22, align 8
  %336 = call %struct.TYPE_17__* @rrdcalc_find(%struct.TYPE_16__* %334, i8* %335)
  store %struct.TYPE_17__* %336, %struct.TYPE_17__** %33, align 8
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %338 = icmp ne %struct.TYPE_17__* %337, null
  br i1 %338, label %353, label %339

339:                                              ; preds = %333
  %340 = load %struct.web_client*, %struct.web_client** %5, align 8
  %341 = getelementptr inbounds %struct.web_client, %struct.web_client* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %342, align 8
  %344 = call i32 @buffer_no_cacheable(%struct.TYPE_18__* %343)
  %345 = load %struct.web_client*, %struct.web_client** %5, align 8
  %346 = getelementptr inbounds %struct.web_client, %struct.web_client* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %347, align 8
  %349 = load i64, i64* @NAN, align 8
  %350 = load i32, i32* %31, align 4
  %351 = call i32 @buffer_svg(%struct.TYPE_18__* %348, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i64 %349, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8* null, i8* null, i32 -1, i32 %350, i32 0, i32 -1, i32 -1)
  %352 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %352, i32* %7, align 4
  br label %786

353:                                              ; preds = %333
  br label %354

354:                                              ; preds = %353, %327
  %355 = load i8*, i8** %13, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %354
  %358 = load i8*, i8** %13, align 8
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %357
  %363 = load i8*, i8** %13, align 8
  %364 = call i32 @str2l(i8* %363)
  br label %366

365:                                              ; preds = %357, %354
  br label %366

366:                                              ; preds = %365, %362
  %367 = phi i32 [ %364, %362 ], [ 1, %365 ]
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %34, align 8
  %369 = load i8*, i8** %14, align 8
  %370 = icmp ne i8* %369, null
  br i1 %370, label %371, label %379

371:                                              ; preds = %366
  %372 = load i8*, i8** %14, align 8
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %371
  %377 = load i8*, i8** %14, align 8
  %378 = call i32 @str2l(i8* %377)
  br label %380

379:                                              ; preds = %371, %366
  br label %380

380:                                              ; preds = %379, %376
  %381 = phi i32 [ %378, %376 ], [ 1, %379 ]
  %382 = sext i32 %381 to i64
  store i64 %382, i64* %35, align 8
  %383 = load i8*, i8** %10, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %393

385:                                              ; preds = %380
  %386 = load i8*, i8** %10, align 8
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %385
  %391 = load i8*, i8** %10, align 8
  %392 = call i32 @str2l(i8* %391)
  br label %394

393:                                              ; preds = %385, %380
  br label %394

394:                                              ; preds = %393, %390
  %395 = phi i32 [ %392, %390 ], [ 0, %393 ]
  %396 = sext i32 %395 to i64
  store i64 %396, i64* %36, align 8
  %397 = load i8*, i8** %11, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %407

399:                                              ; preds = %394
  %400 = load i8*, i8** %11, align 8
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %399
  %405 = load i8*, i8** %11, align 8
  %406 = call i32 @str2l(i8* %405)
  br label %412

407:                                              ; preds = %399, %394
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = sub nsw i32 0, %410
  br label %412

412:                                              ; preds = %407, %404
  %413 = phi i32 [ %406, %404 ], [ %411, %407 ]
  %414 = sext i32 %413 to i64
  store i64 %414, i64* %37, align 8
  %415 = load i8*, i8** %12, align 8
  %416 = icmp ne i8* %415, null
  br i1 %416, label %417, label %425

417:                                              ; preds = %412
  %418 = load i8*, i8** %12, align 8
  %419 = load i8, i8* %418, align 1
  %420 = sext i8 %419 to i32
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = load i8*, i8** %12, align 8
  %424 = call i32 @str2i(i8* %423)
  br label %426

425:                                              ; preds = %417, %412
  br label %426

426:                                              ; preds = %425, %422
  %427 = phi i32 [ %424, %422 ], [ 1, %425 ]
  store i32 %427, i32* %38, align 4
  %428 = load i8*, i8** %20, align 8
  %429 = icmp ne i8* %428, null
  br i1 %429, label %430, label %438

430:                                              ; preds = %426
  %431 = load i8*, i8** %20, align 8
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %430
  %436 = load i8*, i8** %20, align 8
  %437 = call i32 @str2i(i8* %436)
  br label %439

438:                                              ; preds = %430, %426
  br label %439

439:                                              ; preds = %438, %435
  %440 = phi i32 [ %437, %435 ], [ -1, %438 ]
  store i32 %440, i32* %39, align 4
  %441 = load i64, i64* %34, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %439
  store i64 1, i64* %34, align 8
  br label %444

444:                                              ; preds = %443, %439
  %445 = load i64, i64* %35, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %444
  store i64 1, i64* %35, align 8
  br label %448

448:                                              ; preds = %447, %444
  store i32 0, i32* %40, align 4
  %449 = load i8*, i8** %19, align 8
  %450 = icmp ne i8* %449, null
  br i1 %450, label %451, label %499

451:                                              ; preds = %448
  %452 = load i8*, i8** %19, align 8
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %499

456:                                              ; preds = %451
  %457 = load i8*, i8** %19, align 8
  %458 = call i32 @strcmp(i8* %457, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %489, label %460

460:                                              ; preds = %456
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %462 = icmp ne %struct.TYPE_17__* %461, null
  br i1 %462, label %463, label %467

463:                                              ; preds = %460
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  store i32 %466, i32* %40, align 4
  br label %488

467:                                              ; preds = %460
  %468 = load i32, i32* %26, align 4
  %469 = load i32, i32* @RRDR_OPTION_NOT_ALIGNED, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %40, align 4
  br label %487

476:                                              ; preds = %467
  %477 = load i64, i64* %36, align 8
  %478 = load i64, i64* %37, align 8
  %479 = sub nsw i64 %477, %478
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %40, align 4
  %481 = load i32, i32* %40, align 4
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %476
  %484 = load i32, i32* %40, align 4
  %485 = sub nsw i32 0, %484
  store i32 %485, i32* %40, align 4
  br label %486

486:                                              ; preds = %483, %476
  br label %487

487:                                              ; preds = %486, %472
  br label %488

488:                                              ; preds = %487, %463
  br label %498

489:                                              ; preds = %456
  %490 = load i8*, i8** %19, align 8
  %491 = call i32 @str2i(i8* %490)
  store i32 %491, i32* %40, align 4
  %492 = load i32, i32* %40, align 4
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %497

494:                                              ; preds = %489
  %495 = load i32, i32* %40, align 4
  %496 = sub nsw i32 0, %495
  store i32 %496, i32* %40, align 4
  br label %497

497:                                              ; preds = %494, %489
  br label %498

498:                                              ; preds = %497, %488
  br label %499

499:                                              ; preds = %498, %451, %448
  %500 = load i8*, i8** %15, align 8
  %501 = icmp ne i8* %500, null
  br i1 %501, label %544, label %502

502:                                              ; preds = %499
  %503 = load i8*, i8** %22, align 8
  %504 = icmp ne i8* %503, null
  br i1 %504, label %505, label %523

505:                                              ; preds = %502
  %506 = load i8*, i8** %22, align 8
  store i8* %506, i8** %41, align 8
  br label %507

507:                                              ; preds = %518, %505
  %508 = load i8*, i8** %41, align 8
  %509 = load i8, i8* %508, align 1
  %510 = icmp ne i8 %509, 0
  br i1 %510, label %511, label %521

511:                                              ; preds = %507
  %512 = load i8*, i8** %41, align 8
  %513 = load i8, i8* %512, align 1
  %514 = sext i8 %513 to i32
  %515 = icmp eq i32 %514, 95
  br i1 %515, label %516, label %518

516:                                              ; preds = %511
  %517 = load i8*, i8** %41, align 8
  store i8 32, i8* %517, align 1
  br label %518

518:                                              ; preds = %516, %511
  %519 = load i8*, i8** %41, align 8
  %520 = getelementptr inbounds i8, i8* %519, i32 1
  store i8* %520, i8** %41, align 8
  br label %507

521:                                              ; preds = %507
  %522 = load i8*, i8** %22, align 8
  store i8* %522, i8** %15, align 8
  br label %543

523:                                              ; preds = %502
  %524 = load i32*, i32** %8, align 8
  %525 = icmp ne i32* %524, null
  br i1 %525, label %526, label %538

526:                                              ; preds = %523
  %527 = load i32*, i32** %8, align 8
  %528 = call i8* @buffer_tostring(i32* %527)
  store i8* %528, i8** %42, align 8
  %529 = load i8*, i8** %42, align 8
  %530 = load i8, i8* %529, align 1
  %531 = sext i8 %530 to i32
  %532 = icmp eq i32 %531, 124
  br i1 %532, label %533, label %536

533:                                              ; preds = %526
  %534 = load i8*, i8** %42, align 8
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %535, i8** %42, align 8
  br label %536

536:                                              ; preds = %533, %526
  %537 = load i8*, i8** %42, align 8
  store i8* %537, i8** %15, align 8
  br label %542

538:                                              ; preds = %523
  %539 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %540 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %539, i32 0, i32 2
  %541 = load i8*, i8** %540, align 8
  store i8* %541, i8** %15, align 8
  br label %542

542:                                              ; preds = %538, %536
  br label %543

543:                                              ; preds = %542, %521
  br label %544

544:                                              ; preds = %543, %499
  %545 = load i8*, i8** %16, align 8
  %546 = icmp ne i8* %545, null
  br i1 %546, label %573, label %547

547:                                              ; preds = %544
  %548 = load i8*, i8** %22, align 8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %550, label %561

550:                                              ; preds = %547
  %551 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %552 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %551, i32 0, i32 1
  %553 = load i8*, i8** %552, align 8
  %554 = icmp ne i8* %553, null
  br i1 %554, label %555, label %559

555:                                              ; preds = %550
  %556 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %557 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %556, i32 0, i32 1
  %558 = load i8*, i8** %557, align 8
  store i8* %558, i8** %16, align 8
  br label %560

559:                                              ; preds = %550
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i8** %16, align 8
  br label %560

560:                                              ; preds = %559, %555
  br label %572

561:                                              ; preds = %547
  %562 = load i32, i32* %26, align 4
  %563 = load i32, i32* @RRDR_OPTION_PERCENTAGE, align 4
  %564 = and i32 %562, %563
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %561
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %16, align 8
  br label %571

567:                                              ; preds = %561
  %568 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %569 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %568, i32 0, i32 3
  %570 = load i8*, i8** %569, align 8
  store i8* %570, i8** %16, align 8
  br label %571

571:                                              ; preds = %567, %566
  br label %572

572:                                              ; preds = %571, %560
  br label %573

573:                                              ; preds = %572, %544
  %574 = load i32, i32* @D_WEB_CLIENT, align 4
  %575 = load %struct.web_client*, %struct.web_client** %5, align 8
  %576 = getelementptr inbounds %struct.web_client, %struct.web_client* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 8
  %578 = load i8*, i8** %9, align 8
  %579 = load i8*, i8** %22, align 8
  %580 = icmp ne i8* %579, null
  br i1 %580, label %581, label %583

581:                                              ; preds = %573
  %582 = load i8*, i8** %22, align 8
  br label %584

583:                                              ; preds = %573
  br label %584

584:                                              ; preds = %583, %581
  %585 = phi i8* [ %582, %581 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), %583 ]
  %586 = load i32*, i32** %8, align 8
  %587 = icmp ne i32* %586, null
  br i1 %587, label %588, label %591

588:                                              ; preds = %584
  %589 = load i32*, i32** %8, align 8
  %590 = call i8* @buffer_tostring(i32* %589)
  br label %592

591:                                              ; preds = %584
  br label %592

592:                                              ; preds = %591, %588
  %593 = phi i8* [ %590, %588 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), %591 ]
  %594 = load i64, i64* %37, align 8
  %595 = load i64, i64* %36, align 8
  %596 = load i32, i32* %38, align 4
  %597 = load i32, i32* %25, align 4
  %598 = load i32, i32* %26, align 4
  %599 = call i32 (i32, i8*, i32, i8*, i8*, ...) @debug(i32 %574, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.32, i64 0, i64 0), i32 %577, i8* %578, i8* %585, i8* %593, i64 %594, i64 %595, i32 %596, i32 %597, i32 %598)
  %600 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %601 = icmp ne %struct.TYPE_17__* %600, null
  br i1 %601, label %602, label %683

602:                                              ; preds = %592
  %603 = load i32, i32* %40, align 4
  %604 = icmp sgt i32 %603, 0
  br i1 %604, label %605, label %622

605:                                              ; preds = %602
  %606 = load %struct.web_client*, %struct.web_client** %5, align 8
  %607 = getelementptr inbounds %struct.web_client, %struct.web_client* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %607, i32 0, i32 1
  %609 = load i32, i32* %608, align 8
  %610 = sext i32 %609 to i64
  %611 = inttoptr i64 %610 to %struct.TYPE_18__*
  %612 = load i32, i32* %40, align 4
  %613 = call i32 (%struct.TYPE_18__*, i8*, ...) @buffer_sprintf(%struct.TYPE_18__* %611, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 %612)
  %614 = call i32 (...) @now_realtime_sec()
  %615 = load i32, i32* %40, align 4
  %616 = add nsw i32 %614, %615
  %617 = load %struct.web_client*, %struct.web_client** %5, align 8
  %618 = getelementptr inbounds %struct.web_client, %struct.web_client* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %618, i32 0, i32 0
  %620 = load %struct.TYPE_18__*, %struct.TYPE_18__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %620, i32 0, i32 0
  store i32 %616, i32* %621, align 4
  br label %628

622:                                              ; preds = %602
  %623 = load %struct.web_client*, %struct.web_client** %5, align 8
  %624 = getelementptr inbounds %struct.web_client, %struct.web_client* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %624, i32 0, i32 0
  %626 = load %struct.TYPE_18__*, %struct.TYPE_18__** %625, align 8
  %627 = call i32 @buffer_no_cacheable(%struct.TYPE_18__* %626)
  br label %628

628:                                              ; preds = %622, %605
  %629 = load i8*, i8** %18, align 8
  %630 = icmp ne i8* %629, null
  br i1 %630, label %642, label %631

631:                                              ; preds = %628
  %632 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %633 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 8
  switch i32 %634, label %640 [
    i32 131, label %635
    i32 128, label %636
    i32 132, label %637
    i32 130, label %638
    i32 129, label %639
  ]

635:                                              ; preds = %631
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8** %18, align 8
  br label %641

636:                                              ; preds = %631
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8** %18, align 8
  br label %641

637:                                              ; preds = %631
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8** %18, align 8
  br label %641

638:                                              ; preds = %631
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8** %18, align 8
  br label %641

639:                                              ; preds = %631
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8** %18, align 8
  br label %641

640:                                              ; preds = %631
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8** %18, align 8
  br label %641

641:                                              ; preds = %640, %639, %638, %637, %636, %635
  br label %642

642:                                              ; preds = %641, %628
  %643 = load %struct.web_client*, %struct.web_client** %5, align 8
  %644 = getelementptr inbounds %struct.web_client, %struct.web_client* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %644, i32 0, i32 0
  %646 = load %struct.TYPE_18__*, %struct.TYPE_18__** %645, align 8
  %647 = load i8*, i8** %15, align 8
  %648 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %649 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %648, i32 0, i32 3
  %650 = load i64, i64* %649, align 8
  %651 = call i64 @isnan(i64 %650)
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %659, label %653

653:                                              ; preds = %642
  %654 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %655 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %654, i32 0, i32 3
  %656 = load i64, i64* %655, align 8
  %657 = call i64 @isinf(i64 %656)
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %653, %642
  %660 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %661 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %660, i32 0, i32 3
  %662 = load i64, i64* %661, align 8
  br label %671

663:                                              ; preds = %653
  %664 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %665 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %664, i32 0, i32 3
  %666 = load i64, i64* %665, align 8
  %667 = load i64, i64* %34, align 8
  %668 = mul nsw i64 %666, %667
  %669 = load i64, i64* %35, align 8
  %670 = sdiv i64 %668, %669
  br label %671

671:                                              ; preds = %663, %659
  %672 = phi i64 [ %662, %659 ], [ %670, %663 ]
  %673 = load i8*, i8** %16, align 8
  %674 = load i8*, i8** %17, align 8
  %675 = load i8*, i8** %18, align 8
  %676 = load i32, i32* %39, align 4
  %677 = load i32, i32* %31, align 4
  %678 = load i32, i32* %26, align 4
  %679 = load i32, i32* %29, align 4
  %680 = load i32, i32* %30, align 4
  %681 = call i32 @buffer_svg(%struct.TYPE_18__* %646, i8* %647, i64 %672, i8* %673, i8* %674, i8* %675, i32 %676, i32 %677, i32 %678, i32 %679, i32 %680)
  %682 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %682, i32* %7, align 4
  br label %785

683:                                              ; preds = %592
  store i32 0, i32* %43, align 4
  store i32 1, i32* %44, align 4
  %684 = load i64, i64* @NAN, align 8
  store i64 %684, i64* %45, align 8
  %685 = load i32, i32* @HTTP_RESP_INTERNAL_SERVER_ERROR, align 4
  store i32 %685, i32* %7, align 4
  %686 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %687 = call i64 @rrdset_last_entry_t(%struct.TYPE_16__* %686)
  %688 = call i32 (...) @now_realtime_sec()
  %689 = sext i32 %688 to i64
  %690 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %691 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 4
  %693 = sext i32 %692 to i64
  %694 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %695 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %694, i32 0, i32 4
  %696 = load i64, i64* %695, align 8
  %697 = mul nsw i64 %693, %696
  %698 = sub nsw i64 %689, %697
  %699 = icmp sge i64 %687, %698
  br i1 %699, label %700, label %720

700:                                              ; preds = %683
  %701 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %702 = load %struct.web_client*, %struct.web_client** %5, align 8
  %703 = getelementptr inbounds %struct.web_client, %struct.web_client* %702, i32 0, i32 0
  %704 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %703, i32 0, i32 0
  %705 = load %struct.TYPE_18__*, %struct.TYPE_18__** %704, align 8
  %706 = load i32*, i32** %8, align 8
  %707 = icmp ne i32* %706, null
  br i1 %707, label %708, label %711

708:                                              ; preds = %700
  %709 = load i32*, i32** %8, align 8
  %710 = call i8* @buffer_tostring(i32* %709)
  br label %712

711:                                              ; preds = %700
  br label %712

712:                                              ; preds = %711, %708
  %713 = phi i8* [ %710, %708 ], [ null, %711 ]
  %714 = load i32, i32* %38, align 4
  %715 = load i64, i64* %37, align 8
  %716 = load i64, i64* %36, align 8
  %717 = load i32, i32* %25, align 4
  %718 = load i32, i32* %26, align 4
  %719 = call i32 @rrdset2value_api_v1(%struct.TYPE_16__* %701, %struct.TYPE_18__* %705, i64* %45, i8* %713, i32 %714, i64 %715, i64 %716, i32 %717, i32 0, i32 %718, i32* null, i32* %43, i32* %44)
  store i32 %719, i32* %7, align 4
  br label %720

720:                                              ; preds = %712, %683
  %721 = load i32, i32* %7, align 4
  %722 = load i32, i32* @HTTP_RESP_OK, align 4
  %723 = icmp ne i32 %721, %722
  br i1 %723, label %724, label %731

724:                                              ; preds = %720
  %725 = load %struct.web_client*, %struct.web_client** %5, align 8
  %726 = getelementptr inbounds %struct.web_client, %struct.web_client* %725, i32 0, i32 0
  %727 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %726, i32 0, i32 0
  %728 = load %struct.TYPE_18__*, %struct.TYPE_18__** %727, align 8
  %729 = call i32 @buffer_no_cacheable(%struct.TYPE_18__* %728)
  store i32 1, i32* %44, align 4
  store i64 0, i64* %45, align 8
  %730 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %730, i32* %7, align 4
  br label %758

731:                                              ; preds = %720
  %732 = load i32, i32* %40, align 4
  %733 = icmp sgt i32 %732, 0
  br i1 %733, label %734, label %751

734:                                              ; preds = %731
  %735 = load %struct.web_client*, %struct.web_client** %5, align 8
  %736 = getelementptr inbounds %struct.web_client, %struct.web_client* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 8
  %739 = sext i32 %738 to i64
  %740 = inttoptr i64 %739 to %struct.TYPE_18__*
  %741 = load i32, i32* %40, align 4
  %742 = call i32 (%struct.TYPE_18__*, i8*, ...) @buffer_sprintf(%struct.TYPE_18__* %740, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 %741)
  %743 = call i32 (...) @now_realtime_sec()
  %744 = load i32, i32* %40, align 4
  %745 = add nsw i32 %743, %744
  %746 = load %struct.web_client*, %struct.web_client** %5, align 8
  %747 = getelementptr inbounds %struct.web_client, %struct.web_client* %746, i32 0, i32 0
  %748 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %747, i32 0, i32 0
  %749 = load %struct.TYPE_18__*, %struct.TYPE_18__** %748, align 8
  %750 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %749, i32 0, i32 0
  store i32 %745, i32* %750, align 4
  br label %757

751:                                              ; preds = %731
  %752 = load %struct.web_client*, %struct.web_client** %5, align 8
  %753 = getelementptr inbounds %struct.web_client, %struct.web_client* %752, i32 0, i32 0
  %754 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %753, i32 0, i32 0
  %755 = load %struct.TYPE_18__*, %struct.TYPE_18__** %754, align 8
  %756 = call i32 @buffer_no_cacheable(%struct.TYPE_18__* %755)
  br label %757

757:                                              ; preds = %751, %734
  br label %758

758:                                              ; preds = %757, %724
  %759 = load %struct.web_client*, %struct.web_client** %5, align 8
  %760 = getelementptr inbounds %struct.web_client, %struct.web_client* %759, i32 0, i32 0
  %761 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %760, i32 0, i32 0
  %762 = load %struct.TYPE_18__*, %struct.TYPE_18__** %761, align 8
  %763 = load i8*, i8** %15, align 8
  %764 = load i32, i32* %44, align 4
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %766, label %768

766:                                              ; preds = %758
  %767 = load i64, i64* @NAN, align 8
  br label %774

768:                                              ; preds = %758
  %769 = load i64, i64* %45, align 8
  %770 = load i64, i64* %34, align 8
  %771 = mul nsw i64 %769, %770
  %772 = load i64, i64* %35, align 8
  %773 = sdiv i64 %771, %772
  br label %774

774:                                              ; preds = %768, %766
  %775 = phi i64 [ %767, %766 ], [ %773, %768 ]
  %776 = load i8*, i8** %16, align 8
  %777 = load i8*, i8** %17, align 8
  %778 = load i8*, i8** %18, align 8
  %779 = load i32, i32* %39, align 4
  %780 = load i32, i32* %31, align 4
  %781 = load i32, i32* %26, align 4
  %782 = load i32, i32* %29, align 4
  %783 = load i32, i32* %30, align 4
  %784 = call i32 @buffer_svg(%struct.TYPE_18__* %762, i8* %763, i64 %775, i8* %776, i8* %777, i8* %778, i32 %779, i32 %780, i32 %781, i32 %782, i32 %783)
  br label %785

785:                                              ; preds = %774, %671
  br label %786

786:                                              ; preds = %785, %339, %313, %276
  %787 = load i32*, i32** %8, align 8
  %788 = call i32 @buffer_free(i32* %787)
  %789 = load i32, i32* %7, align 4
  ret i32 %789
}

declare dso_local i32 @buffer_flush(%struct.TYPE_18__*) #1

declare dso_local i8* @mystrsep(i8**, i8*) #1

declare dso_local i32 @debug(i32, i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @buffer_create(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @web_client_api_request_v1_data_group(i8*, i32) #1

declare dso_local i32 @web_client_api_request_v1_data_options(i8*) #1

declare dso_local i32 @str2i(i8*) #1

declare dso_local i32 @buffer_no_cacheable(%struct.TYPE_18__*) #1

declare dso_local i32 @buffer_sprintf(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @rrdset_find(i32*, i8*) #1

declare dso_local %struct.TYPE_16__* @rrdset_find_byname(i32*, i8*) #1

declare dso_local i32 @buffer_svg(%struct.TYPE_18__*, i8*, i64, i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @now_realtime_sec(...) #1

declare dso_local %struct.TYPE_17__* @rrdcalc_find(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @str2l(i8*) #1

declare dso_local i8* @buffer_tostring(i32*) #1

declare dso_local i64 @isnan(i64) #1

declare dso_local i64 @isinf(i64) #1

declare dso_local i64 @rrdset_last_entry_t(%struct.TYPE_16__*) #1

declare dso_local i32 @rrdset2value_api_v1(%struct.TYPE_16__*, %struct.TYPE_18__*, i64*, i8*, i32, i64, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
