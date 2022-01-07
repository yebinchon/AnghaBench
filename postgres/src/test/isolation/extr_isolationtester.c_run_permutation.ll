; ModuleID = '/home/carl/AnghaBench/postgres/src/test/isolation/extr_isolationtester.c_run_permutation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/isolation/extr_isolationtester.c_run_permutation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, %struct.TYPE_15__**, i64* }
%struct.TYPE_15__ = type { i8*, i64, i64 }
%struct.TYPE_17__ = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"\0Astarting permutation:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@conns = common dso_local global i32** null, align 8
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"setup failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"setup of session %s failed: %s\00", align 1
@STEP_RETRY = common dso_local global i32 0, align 4
@STEP_NONBLOCK = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to send query for step %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"teardown of session %s failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"teardown failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, %struct.TYPE_17__**)* @run_permutation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_permutation(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__**, align 8
  %13 = alloca %struct.TYPE_17__**, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_17__** @pg_malloc(i32 %23)
  store %struct.TYPE_17__** %24, %struct.TYPE_17__*** %12, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_17__** @pg_malloc(i32 %30)
  store %struct.TYPE_17__** %31, %struct.TYPE_17__*** %13, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %52, %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %38, i64 %40
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %44, i64 %46
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %33

55:                                               ; preds = %33
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %99, %55
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %57
  %64 = load i32**, i32*** @conns, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32* @PQexec(i32* %66, i64 %73)
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i64 @PQresultStatus(i32* %75)
  %77 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @printResultSet(i32* %80)
  br label %96

82:                                               ; preds = %63
  %83 = load i32*, i32** %7, align 8
  %84 = call i64 @PQresultStatus(i32* %83)
  %85 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32**, i32*** @conns, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i8* @PQerrorMessage(i32* %91)
  %93 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @PQclear(i32* %97)
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %57

102:                                              ; preds = %57
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %174, %102
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %177

109:                                              ; preds = %103
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %112, i64 %114
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %173

120:                                              ; preds = %109
  %121 = load i32**, i32*** @conns, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %121, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %129, i64 %131
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32* @PQexec(i32* %126, i64 %135)
  store i32* %136, i32** %7, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i64 @PQresultStatus(i32* %137)
  %139 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %120
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @printResultSet(i32* %142)
  br label %170

144:                                              ; preds = %120
  %145 = load i32*, i32** %7, align 8
  %146 = call i64 @PQresultStatus(i32* %145)
  %147 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load i32, i32* @stderr, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %153, i64 %155
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i32**, i32*** @conns, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %160, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = call i8* @PQerrorMessage(i32* %165)
  %167 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %159, i8* %166)
  %168 = call i32 @exit(i32 1) #3
  unreachable

169:                                              ; preds = %144
  br label %170

170:                                              ; preds = %169, %141
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @PQclear(i32* %171)
  br label %173

173:                                              ; preds = %170, %109
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %103

177:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %408, %177
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %411

182:                                              ; preds = %178
  %183 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %183, i64 %185
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  store %struct.TYPE_17__* %187, %struct.TYPE_17__** %14, align 8
  %188 = load i32**, i32*** @conns, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 1, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %188, i64 %193
  %195 = load i32*, i32** %194, align 8
  store i32* %195, i32** %15, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %248, %182
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %251

200:                                              ; preds = %196
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %204, i64 %206
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %203, %210
  br i1 %211, label %212, label %247

212:                                              ; preds = %200
  %213 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %213, i64 %215
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  store %struct.TYPE_17__* %217, %struct.TYPE_17__** %16, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %220 = load i32, i32* @STEP_RETRY, align 4
  %221 = call i32 @try_complete_step(%struct.TYPE_16__* %218, %struct.TYPE_17__* %219, i32 %220)
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %244

226:                                              ; preds = %212
  %227 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %227, i64 %229
  %231 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %231, i64 %234
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  %239 = sub nsw i32 %236, %238
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 8
  %242 = trunc i64 %241 to i32
  %243 = call i32 @memmove(%struct.TYPE_17__** %230, %struct.TYPE_17__** %235, i32 %242)
  br label %244

244:                                              ; preds = %226, %212
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %10, align 4
  br label %251

247:                                              ; preds = %200
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  br label %196

251:                                              ; preds = %244, %196
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %253 = icmp ne %struct.TYPE_17__* %252, null
  br i1 %253, label %254, label %316

254:                                              ; preds = %251
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %255

255:                                              ; preds = %310, %254
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %311

259:                                              ; preds = %255
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %261 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %261, i64 %263
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = load i32, i32* @STEP_NONBLOCK, align 4
  %267 = load i32, i32* @STEP_RETRY, align 4
  %268 = or i32 %266, %267
  %269 = call i32 @try_complete_step(%struct.TYPE_16__* %260, %struct.TYPE_17__* %265, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %259
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %310

274:                                              ; preds = %259
  %275 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %275, i64 %277
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %278, align 8
  %280 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %11, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %280, i64 %283
  store %struct.TYPE_17__* %279, %struct.TYPE_17__** %284, align 8
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  %287 = load i32, i32* %10, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %274
  %290 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %290, i64 %292
  %294 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %294, i64 %297
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  %302 = sub nsw i32 %299, %301
  %303 = sext i32 %302 to i64
  %304 = mul i64 %303, 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @memmove(%struct.TYPE_17__** %293, %struct.TYPE_17__** %298, i32 %305)
  br label %307

307:                                              ; preds = %289, %274
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %10, align 4
  br label %310

310:                                              ; preds = %307, %271
  br label %255

311:                                              ; preds = %255
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  %315 = call i32 @report_multiple_error_messages(%struct.TYPE_17__* %312, i32 %313, %struct.TYPE_17__** %314)
  br label %316

316:                                              ; preds = %311, %251
  %317 = load i32*, i32** %15, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @PQsendQuery(i32* %317, i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %332, label %323

323:                                              ; preds = %316
  %324 = load i32, i32* @stdout, align 4
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  %328 = load i32*, i32** %15, align 8
  %329 = call i8* @PQerrorMessage(i32* %328)
  %330 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %324, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %327, i8* %329)
  %331 = call i32 @exit(i32 1) #3
  unreachable

332:                                              ; preds = %316
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %335 = load i32, i32* @STEP_NONBLOCK, align 4
  %336 = call i32 @try_complete_step(%struct.TYPE_16__* %333, %struct.TYPE_17__* %334, i32 %335)
  store i32 %336, i32* %17, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %337

337:                                              ; preds = %392, %332
  %338 = load i32, i32* %9, align 4
  %339 = load i32, i32* %10, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %393

341:                                              ; preds = %337
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %343 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %343, i64 %345
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %346, align 8
  %348 = load i32, i32* @STEP_NONBLOCK, align 4
  %349 = load i32, i32* @STEP_RETRY, align 4
  %350 = or i32 %348, %349
  %351 = call i32 @try_complete_step(%struct.TYPE_16__* %342, %struct.TYPE_17__* %347, i32 %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %341
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  br label %392

356:                                              ; preds = %341
  %357 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %357, i64 %359
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %360, align 8
  %362 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  %363 = load i32, i32* %11, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %11, align 4
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %362, i64 %365
  store %struct.TYPE_17__* %361, %struct.TYPE_17__** %366, align 8
  %367 = load i32, i32* %9, align 4
  %368 = add nsw i32 %367, 1
  %369 = load i32, i32* %10, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %389

371:                                              ; preds = %356
  %372 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %372, i64 %374
  %376 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %377 = load i32, i32* %9, align 4
  %378 = add nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %376, i64 %379
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* %9, align 4
  %383 = add nsw i32 %382, 1
  %384 = sub nsw i32 %381, %383
  %385 = sext i32 %384 to i64
  %386 = mul i64 %385, 8
  %387 = trunc i64 %386 to i32
  %388 = call i32 @memmove(%struct.TYPE_17__** %375, %struct.TYPE_17__** %380, i32 %387)
  br label %389

389:                                              ; preds = %371, %356
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %10, align 4
  br label %392

392:                                              ; preds = %389, %353
  br label %337

393:                                              ; preds = %337
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %395 = load i32, i32* %11, align 4
  %396 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  %397 = call i32 @report_multiple_error_messages(%struct.TYPE_17__* %394, i32 %395, %struct.TYPE_17__** %396)
  %398 = load i32, i32* %17, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %407

400:                                              ; preds = %393
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %402 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %403 = load i32, i32* %10, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %10, align 4
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %402, i64 %405
  store %struct.TYPE_17__* %401, %struct.TYPE_17__** %406, align 8
  br label %407

407:                                              ; preds = %400, %393
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %8, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %8, align 4
  br label %178

411:                                              ; preds = %178
  store i32 0, i32* %9, align 4
  br label %412

412:                                              ; preds = %431, %411
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %10, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %434

416:                                              ; preds = %412
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %418 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %419 = load i32, i32* %9, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %418, i64 %420
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %421, align 8
  %423 = load i32, i32* @STEP_RETRY, align 4
  %424 = call i32 @try_complete_step(%struct.TYPE_16__* %417, %struct.TYPE_17__* %422, i32 %423)
  %425 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %425, i64 %427
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %428, align 8
  %430 = call i32 @report_error_message(%struct.TYPE_17__* %429)
  br label %431

431:                                              ; preds = %416
  %432 = load i32, i32* %9, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %9, align 4
  br label %412

434:                                              ; preds = %412
  store i32 0, i32* %8, align 4
  br label %435

435:                                              ; preds = %505, %434
  %436 = load i32, i32* %8, align 4
  %437 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = icmp slt i32 %436, %439
  br i1 %440, label %441, label %508

441:                                              ; preds = %435
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 3
  %444 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %443, align 8
  %445 = load i32, i32* %8, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %444, i64 %446
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %504

452:                                              ; preds = %441
  %453 = load i32**, i32*** @conns, align 8
  %454 = load i32, i32* %8, align 4
  %455 = add nsw i32 %454, 1
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %453, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i32 0, i32 3
  %461 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %460, align 8
  %462 = load i32, i32* %8, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %461, i64 %463
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = call i32* @PQexec(i32* %458, i64 %467)
  store i32* %468, i32** %7, align 8
  %469 = load i32*, i32** %7, align 8
  %470 = call i64 @PQresultStatus(i32* %469)
  %471 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %476

473:                                              ; preds = %452
  %474 = load i32*, i32** %7, align 8
  %475 = call i32 @printResultSet(i32* %474)
  br label %501

476:                                              ; preds = %452
  %477 = load i32*, i32** %7, align 8
  %478 = call i64 @PQresultStatus(i32* %477)
  %479 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %480 = icmp ne i64 %478, %479
  br i1 %480, label %481, label %500

481:                                              ; preds = %476
  %482 = load i32, i32* @stderr, align 4
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 3
  %485 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %484, align 8
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %485, i64 %487
  %489 = load %struct.TYPE_15__*, %struct.TYPE_15__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %489, i32 0, i32 0
  %491 = load i8*, i8** %490, align 8
  %492 = load i32**, i32*** @conns, align 8
  %493 = load i32, i32* %8, align 4
  %494 = add nsw i32 %493, 1
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32*, i32** %492, i64 %495
  %497 = load i32*, i32** %496, align 8
  %498 = call i8* @PQerrorMessage(i32* %497)
  %499 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %482, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %491, i8* %498)
  br label %500

500:                                              ; preds = %481, %476
  br label %501

501:                                              ; preds = %500, %473
  %502 = load i32*, i32** %7, align 8
  %503 = call i32 @PQclear(i32* %502)
  br label %504

504:                                              ; preds = %501, %441
  br label %505

505:                                              ; preds = %504
  %506 = load i32, i32* %8, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %8, align 4
  br label %435

508:                                              ; preds = %435
  %509 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %510 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %509, i32 0, i32 2
  %511 = load i64, i64* %510, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %544

513:                                              ; preds = %508
  %514 = load i32**, i32*** @conns, align 8
  %515 = getelementptr inbounds i32*, i32** %514, i64 0
  %516 = load i32*, i32** %515, align 8
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i32 0, i32 2
  %519 = load i64, i64* %518, align 8
  %520 = call i32* @PQexec(i32* %516, i64 %519)
  store i32* %520, i32** %7, align 8
  %521 = load i32*, i32** %7, align 8
  %522 = call i64 @PQresultStatus(i32* %521)
  %523 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %524 = icmp eq i64 %522, %523
  br i1 %524, label %525, label %528

525:                                              ; preds = %513
  %526 = load i32*, i32** %7, align 8
  %527 = call i32 @printResultSet(i32* %526)
  br label %541

528:                                              ; preds = %513
  %529 = load i32*, i32** %7, align 8
  %530 = call i64 @PQresultStatus(i32* %529)
  %531 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %532 = icmp ne i64 %530, %531
  br i1 %532, label %533, label %540

533:                                              ; preds = %528
  %534 = load i32, i32* @stderr, align 4
  %535 = load i32**, i32*** @conns, align 8
  %536 = getelementptr inbounds i32*, i32** %535, i64 0
  %537 = load i32*, i32** %536, align 8
  %538 = call i8* @PQerrorMessage(i32* %537)
  %539 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %534, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %538)
  br label %540

540:                                              ; preds = %533, %528
  br label %541

541:                                              ; preds = %540, %525
  %542 = load i32*, i32** %7, align 8
  %543 = call i32 @PQclear(i32* %542)
  br label %544

544:                                              ; preds = %541, %508
  %545 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %546 = call i32 @free(%struct.TYPE_17__** %545)
  %547 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  %548 = call i32 @free(%struct.TYPE_17__** %547)
  ret void
}

declare dso_local %struct.TYPE_17__** @pg_malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @PQexec(i32*, i64) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @printResultSet(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @try_complete_step(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_17__**, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @report_multiple_error_messages(%struct.TYPE_17__*, i32, %struct.TYPE_17__**) #1

declare dso_local i32 @PQsendQuery(i32*, i32) #1

declare dso_local i32 @report_error_message(%struct.TYPE_17__*) #1

declare dso_local i32 @free(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
