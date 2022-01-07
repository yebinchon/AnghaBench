; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_fetch_row_buffered.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_fetch_row_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i64, i32, i32, i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 (i32*, i32*, i32, %struct.TYPE_14__*, i32, i32)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32*, i32* }

@.str = private unnamed_addr constant [32 x i8] c"mysqlnd_stmt_fetch_row_buffered\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"stmt=%lu\00", align 1
@MYSQLND_BUFFERED_TYPE_ZVAL = common dso_local global i64 0, align 8
@PASS = common dso_local global i64 0, align 8
@FAIL = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"i=%u type=%u\00", align 1
@STAT_ROWS_FETCHED_FROM_CLIENT_PS_BUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"row fetched\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"no more data\00", align 1
@MYSQLND_BUFFERED_TYPE_C = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_stmt_fetch_row_buffered(%struct.TYPE_13__* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %10, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %24 = icmp ne %struct.TYPE_21__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi %struct.TYPE_20__* [ %28, %25 ], [ null, %29 ]
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %11, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %12, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @FALSE, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %42 = icmp ne %struct.TYPE_20__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %48

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i64 [ %46, %43 ], [ 0, %47 ]
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, i32, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MYSQLND_BUFFERED_TYPE_ZVAL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %277

59:                                               ; preds = %48
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = bitcast %struct.TYPE_19__* %62 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %14, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %272

68:                                               ; preds = %59
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = ptrtoint i32* %71 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = mul i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = icmp slt i64 %78, %86
  br i1 %87, label %88, label %272

88:                                               ; preds = %68
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = icmp ne %struct.TYPE_18__* %91, null
  br i1 %92, label %93, label %260

93:                                               ; preds = %88
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %16, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @Z_ISUNDEF(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %215

102:                                              ; preds = %93
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = ptrtoint i32* %105 to i64
  %110 = ptrtoint i32* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 4
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = sdiv i64 %112, %114
  store i64 %115, i64* %17, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64 (i32*, i32*, i32, %struct.TYPE_14__*, i32, i32)*, i64 (i32*, i32*, i32, %struct.TYPE_14__*, i32, i32)** %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32*, i32** %16, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 %121(i32* %128, i32* %129, i32 %132, %struct.TYPE_14__* %135, i32 %142, i32 %147)
  store i64 %148, i64* %18, align 8
  %149 = load i64, i64* @PASS, align 8
  %150 = load i64, i64* %18, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %102
  %153 = load i64, i64* @FAIL, align 8
  %154 = call i32 @DBG_RETURN(i64 %153)
  br label %155

155:                                              ; preds = %152, %102
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %214

166:                                              ; preds = %155
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %210, %166
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ult i32 %168, %171
  br i1 %172, label %173, label %213

173:                                              ; preds = %167
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* %15, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @Z_TYPE(i32 %178)
  %180 = load i64, i64* @IS_STRING, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %173
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %15, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @Z_STRLEN(i32 %187)
  store i64 %188, i64* %19, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %19, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %182
  %200 = load i64, i64* %19, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = load i32, i32* %15, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  store i64 %200, i64* %207, align 8
  br label %208

208:                                              ; preds = %199, %182
  br label %209

209:                                              ; preds = %208, %173
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %15, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %15, align 4
  br label %167

213:                                              ; preds = %167
  br label %214

214:                                              ; preds = %213, %155
  br label %215

215:                                              ; preds = %214, %93
  store i32 0, i32* %15, align 4
  br label %216

216:                                              ; preds = %256, %215
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ult i32 %217, %220
  br i1 %221, label %222, label %259

222:                                              ; preds = %216
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  store i32* %229, i32** %20, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @TRUE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %255

240:                                              ; preds = %222
  %241 = load i32, i32* %15, align 4
  %242 = load i32*, i32** %16, align 8
  %243 = load i32, i32* %15, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @Z_TYPE(i32 %246)
  %248 = call i32 (i8*, i32, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %241, i64 %247)
  %249 = load i32*, i32** %20, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load i32, i32* %15, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = call i32 @ZEND_TRY_ASSIGN_COPY_EX(i32* %249, i32* %253, i32 0)
  br label %255

255:                                              ; preds = %240, %222
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %15, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %15, align 4
  br label %216

259:                                              ; preds = %216
  br label %260

260:                                              ; preds = %259, %88
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = zext i32 %261 to i64
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32* %266, i32** %263, align 8
  %267 = load i64, i64* @TRUE, align 8
  %268 = load i64*, i64** %9, align 8
  store i64 %267, i64* %268, align 8
  %269 = load i32, i32* @STAT_ROWS_FETCHED_FROM_CLIENT_PS_BUF, align 4
  %270 = call i32 @MYSQLND_INC_GLOBAL_STATISTIC(i32 %269)
  %271 = call i32 @DBG_INF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %276

272:                                              ; preds = %68, %59
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 0
  store i32* null, i32** %274, align 8
  %275 = call i32 @DBG_INF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %276

276:                                              ; preds = %272, %260
  br label %287

277:                                              ; preds = %48
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @MYSQLND_BUFFERED_TYPE_C, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  br label %286

286:                                              ; preds = %285, %277
  br label %287

287:                                              ; preds = %286, %276
  %288 = call i32 @DBG_INF(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %289 = load i64, i64* @PASS, align 8
  %290 = call i32 @DBG_RETURN(i64 %289)
  %291 = load i64, i64* %5, align 8
  ret i64 %291
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32, ...) #1

declare dso_local i64 @Z_ISUNDEF(i32) #1

declare dso_local i32 @DBG_RETURN(i64) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i64 @Z_STRLEN(i32) #1

declare dso_local i32 @ZEND_TRY_ASSIGN_COPY_EX(i32*, i32*, i32) #1

declare dso_local i32 @MYSQLND_INC_GLOBAL_STATISTIC(i32) #1

declare dso_local i32 @DBG_INF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
