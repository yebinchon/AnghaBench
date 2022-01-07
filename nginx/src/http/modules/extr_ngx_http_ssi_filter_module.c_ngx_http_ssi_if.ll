; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_if.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"the \22if\22 command inside the \22if\22 command\00", align 1
@NGX_HTTP_SSI_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_SSI_IF_EXPR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ssi if expr=\22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"left: \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"evaluated left: \22%V\22\00", align 1
@NGX_HTTP_SSI_COND_IF = common dso_local global i8* null, align 8
@NGX_HTTP_SSI_ADD_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"right: \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"evaluated right: \22%V\22\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid expression in \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__**)* @ngx_http_ssi_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_ssi_if(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* @NGX_LOG_ERR, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @NGX_HTTP_SSI_ERROR, align 4
  store i32 %35, i32* %4, align 4
  br label %417

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @NGX_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %417

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %48 = load i64, i64* @NGX_HTTP_SSI_IF_EXPR, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %47, i64 %48
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %10, align 8
  %51 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = call i32 @ngx_log_debug1(i32 %51, i32 %56, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8* %70, i8** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %145, %46
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %148

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sge i32 %80, 65
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sle i32 %85, 90
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = or i32 %90, 32
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  br label %145

93:                                               ; preds = %82, %77
  %94 = load i8*, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 97
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sle i32 %101, 122
  br i1 %102, label %143, label %103

103:                                              ; preds = %98, %93
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sge i32 %106, 48
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sle i32 %111, 57
  br i1 %112, label %143, label %113

113:                                              ; preds = %108, %103
  %114 = load i8*, i8** %8, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 36
  br i1 %117, label %143, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %8, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 123
  br i1 %122, label %143, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 125
  br i1 %127, label %143, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %8, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 95
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 39
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %133, %128, %123, %118, %113, %108, %98
  br label %145

144:                                              ; preds = %138
  br label %148

145:                                              ; preds = %143, %87
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  br label %73

148:                                              ; preds = %144, %73
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = ptrtoint i8* %149 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 %155, i32* %156, align 8
  br label %157

157:                                              ; preds = %168, %148
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = icmp ult i8* %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i8*, i8** %8, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 32
  br label %166

166:                                              ; preds = %161, %157
  %167 = phi i1 [ false, %157 ], [ %165, %161 ]
  br i1 %167, label %168, label %171

168:                                              ; preds = %166
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %8, align 8
  br label %157

171:                                              ; preds = %166
  store i32 0, i32* %16, align 4
  %172 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ngx_log_debug1(i32 %172, i32 %177, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %11)
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @ngx_http_ssi_evaluate_string(%struct.TYPE_20__* %179, %struct.TYPE_19__* %180, %struct.TYPE_18__* %11, i32 %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @NGX_OK, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %171
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %4, align 4
  br label %417

188:                                              ; preds = %171
  %189 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @ngx_log_debug1(i32 %189, i32 %194, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_18__* %11)
  %196 = load i8*, i8** %8, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = icmp eq i8* %196, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %188
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  br label %211

208:                                              ; preds = %199
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  br label %211

211:                                              ; preds = %208, %203
  %212 = load i8*, i8** @NGX_HTTP_SSI_COND_IF, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* @NGX_OK, align 4
  store i32 %215, i32* %4, align 4
  br label %417

216:                                              ; preds = %188
  %217 = load i8*, i8** %8, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = icmp ult i8* %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load i8*, i8** %8, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 61
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  store i32 0, i32* %14, align 4
  %226 = load i8*, i8** %8, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %8, align 8
  br label %249

228:                                              ; preds = %220, %216
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  %231 = load i8*, i8** %9, align 8
  %232 = icmp ult i8* %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %228
  %234 = load i8*, i8** %8, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 33
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 61
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  store i32 1, i32* %14, align 4
  %245 = load i8*, i8** %8, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  store i8* %246, i8** %8, align 8
  br label %248

247:                                              ; preds = %238, %233, %228
  br label %407

248:                                              ; preds = %244
  br label %249

249:                                              ; preds = %248, %225
  br label %250

250:                                              ; preds = %261, %249
  %251 = load i8*, i8** %8, align 8
  %252 = load i8*, i8** %9, align 8
  %253 = icmp ult i8* %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i8*, i8** %8, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 32
  br label %259

259:                                              ; preds = %254, %250
  %260 = phi i1 [ false, %250 ], [ %258, %254 ]
  br i1 %260, label %261, label %264

261:                                              ; preds = %259
  %262 = load i8*, i8** %8, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %8, align 8
  br label %250

264:                                              ; preds = %259
  %265 = load i8*, i8** %8, align 8
  %266 = load i8*, i8** %9, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 -1
  %268 = icmp ult i8* %265, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %264
  %270 = load i8*, i8** %8, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 47
  br i1 %273, label %274, label %287

274:                                              ; preds = %269
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 -1
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 47
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  br label %407

281:                                              ; preds = %274
  store i32 0, i32* %15, align 4
  %282 = load i32, i32* @NGX_HTTP_SSI_ADD_ZERO, align 4
  store i32 %282, i32* %16, align 4
  %283 = load i8*, i8** %9, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 -1
  store i8* %284, i8** %9, align 8
  %285 = load i8*, i8** %8, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %8, align 8
  br label %308

287:                                              ; preds = %269, %264
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %288 = load i8*, i8** %8, align 8
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 -1
  %291 = icmp ult i8* %288, %290
  br i1 %291, label %292, label %307

292:                                              ; preds = %287
  %293 = load i8*, i8** %8, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 0
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 92
  br i1 %297, label %298, label %307

298:                                              ; preds = %292
  %299 = load i8*, i8** %8, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %302, 47
  br i1 %303, label %304, label %307

304:                                              ; preds = %298
  %305 = load i8*, i8** %8, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %8, align 8
  br label %307

307:                                              ; preds = %304, %298, %292, %287
  br label %308

308:                                              ; preds = %307, %281
  %309 = load i8*, i8** %9, align 8
  %310 = load i8*, i8** %8, align 8
  %311 = ptrtoint i8* %309 to i64
  %312 = ptrtoint i8* %310 to i64
  %313 = sub i64 %311, %312
  %314 = trunc i64 %313 to i32
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i32 %314, i32* %315, align 8
  %316 = load i8*, i8** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i8* %316, i8** %317, align 8
  %318 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @ngx_log_debug1(i32 %318, i32 %323, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_18__* %12)
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @ngx_http_ssi_evaluate_string(%struct.TYPE_20__* %325, %struct.TYPE_19__* %326, %struct.TYPE_18__* %12, i32 %327)
  store i32 %328, i32* %13, align 4
  %329 = load i32, i32* %13, align 4
  %330 = load i32, i32* @NGX_OK, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %308
  %333 = load i32, i32* %13, align 4
  store i32 %333, i32* %4, align 4
  br label %417

334:                                              ; preds = %308
  %335 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @ngx_log_debug1(i32 %335, i32 %340, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_18__* %12)
  %342 = load i32, i32* %15, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %360

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %346, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %344
  store i32 -1, i32* %13, align 4
  br label %359

351:                                              ; preds = %344
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %353 = load i8*, i8** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @ngx_strncmp(i8* %353, i8* %355, i32 %357)
  store i32 %358, i32* %13, align 4
  br label %359

359:                                              ; preds = %351, %350
  br label %382

360:                                              ; preds = %334
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %362, i64 %365
  store i8 0, i8* %366, align 1
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %368 = call i32 @ngx_http_ssi_regex_match(%struct.TYPE_20__* %367, %struct.TYPE_18__* %12, %struct.TYPE_18__* %11)
  store i32 %368, i32* %13, align 4
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @NGX_OK, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %360
  store i32 0, i32* %13, align 4
  br label %381

373:                                              ; preds = %360
  %374 = load i32, i32* %13, align 4
  %375 = load i32, i32* @NGX_DECLINED, align 4
  %376 = icmp eq i32 %374, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %373
  store i32 -1, i32* %13, align 4
  br label %380

378:                                              ; preds = %373
  %379 = load i32, i32* %13, align 4
  store i32 %379, i32* %4, align 4
  br label %417

380:                                              ; preds = %377
  br label %381

381:                                              ; preds = %380, %372
  br label %382

382:                                              ; preds = %381, %359
  %383 = load i32, i32* %13, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load i32, i32* %14, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %385, %382
  %389 = load i32, i32* %13, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %399

391:                                              ; preds = %388
  %392 = load i32, i32* %14, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %391, %385
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %395, i32 0, i32 1
  store i32 1, i32* %396, align 4
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 0
  store i32 1, i32* %398, align 8
  br label %402

399:                                              ; preds = %391, %388
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 1
  store i32 0, i32* %401, align 4
  br label %402

402:                                              ; preds = %399, %394
  %403 = load i8*, i8** @NGX_HTTP_SSI_COND_IF, align 8
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 2
  store i8* %403, i8** %405, align 8
  %406 = load i32, i32* @NGX_OK, align 4
  store i32 %406, i32* %4, align 4
  br label %417

407:                                              ; preds = %280, %247
  %408 = load i32, i32* @NGX_LOG_ERR, align 4
  %409 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %415 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %408, i32 %413, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_18__* %414)
  %416 = load i32, i32* @NGX_HTTP_SSI_ERROR, align 4
  store i32 %416, i32* %4, align 4
  br label %417

417:                                              ; preds = %407, %402, %378, %332, %211, %186, %42, %27
  %418 = load i32, i32* %4, align 4
  ret i32 %418
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_ssi_evaluate_string(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_http_ssi_regex_match(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
