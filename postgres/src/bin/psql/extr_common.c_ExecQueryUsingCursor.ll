; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_ExecQueryUsingCursor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_ExecQueryUsingCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i64, i32, i64, i32*, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i8* }

@pset = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PQTRANS_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"DECLARE _psql_cursor NO SCROLL CURSOR FOR\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"FETCH FORWARD %d FROM _psql_cursor\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@stdout = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@cancel_pressed = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SQLSTATE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"00000\00", align 1
@INT64_FORMAT = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"ROW_COUNT\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"CLOSE _psql_cursor\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*)* @ExecQueryUsingCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecQueryUsingCursor(i8* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [64 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [32 x i8], align 16
  store i8* %0, i8** %4, align 8
  store double* %1, double** %5, align 8
  store i32 1, i32* %6, align 4
  %22 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 9) to i8*), i64 24, i1 false)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 1), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @INSTR_TIME_SET_CURRENT(i32 %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 2), align 8
  %37 = call i64 @PQtransactionStatus(i32 %36)
  %38 = load i64, i64* @PQTRANS_IDLE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 2), align 8
  %42 = call i32* @PQexec(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @AcceptResult(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @PQresultStatus(i32* %47)
  %49 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi i1 [ false, %40 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ClearOrSaveResult(i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %361

59:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %35
  %61 = call i32 @initPQExpBuffer(%struct.TYPE_10__* %8)
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 2), align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32* @PQexec(i32 %64, i8* %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @AcceptResult(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @PQresultStatus(i32* %72)
  %74 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %71, %60
  %77 = phi i1 [ false, %60 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @SetResultVariables(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @ClearOrSaveResult(i32* %86)
  %88 = call i32 @termPQExpBuffer(%struct.TYPE_10__* %8)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %291

92:                                               ; preds = %85
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 1), align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @INSTR_TIME_SET_CURRENT(i32 %96)
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @INSTR_TIME_SUBTRACT(i32 %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %101)
  %103 = sitofp i64 %102 to double
  %104 = load double*, double** %5, align 8
  %105 = load double, double* %104, align 8
  %106 = fadd double %105, %103
  store double %106, double* %104, align 8
  br label %107

107:                                              ; preds = %95, %92
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 6), align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 2, i32* %16, align 4
  br label %113

111:                                              ; preds = %107
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 0), align 8
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @snprintf(i8* %114, i32 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 8), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 4), align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 4), align 8
  %127 = call i32 @openQueryOutputFile(i64 %126, i32** %10, i32* %11)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %291

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (...) @disable_sigpipe_trap()
  br label %135

135:                                              ; preds = %133, %130
  br label %138

136:                                              ; preds = %122
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 7), align 8
  store i32* %137, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @clearerr(i32* %139)
  br label %141

141:                                              ; preds = %253, %138
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 1), align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @INSTR_TIME_SET_CURRENT(i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 2), align 8
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %150 = call i32* @PQexec(i32 %148, i8* %149)
  store i32* %150, i32** %7, align 8
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 1), align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @INSTR_TIME_SET_CURRENT(i32 %154)
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @INSTR_TIME_SUBTRACT(i32 %156, i32 %157)
  %159 = load i32, i32* %19, align 4
  %160 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %159)
  %161 = sitofp i64 %160 to double
  %162 = load double*, double** %5, align 8
  %163 = load double, double* %162, align 8
  %164 = fadd double %163, %161
  store double %164, double* %162, align 8
  br label %165

165:                                              ; preds = %153, %147
  %166 = load i32*, i32** %7, align 8
  %167 = call i64 @PQresultStatus(i32* %166)
  %168 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %10, align 8
  %175 = call i32 @ClosePager(i32* %174)
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @AcceptResult(i32* %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 @Assert(i32 %182)
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @SetResultVariables(i32* %184, i32 %185)
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @ClearOrSaveResult(i32* %187)
  br label %254

189:                                              ; preds = %165
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 6), align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @StoreQueryTuple(i32* %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @ClearOrSaveResult(i32* %195)
  br label %254

197:                                              ; preds = %189
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @PQntuples(i32* %198)
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  store i32 1, i32* %208, align 4
  br label %221

209:                                              ; preds = %197
  %210 = load i32*, i32** %10, align 8
  %211 = load i32*, i32** @stdout, align 8
  %212 = icmp eq i32* %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @INT_MAX, align 4
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %219 = call i32* @PageOutput(i32 %217, %struct.TYPE_12__* %218)
  store i32* %219, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %220

220:                                              ; preds = %216, %213, %209
  br label %221

221:                                              ; preds = %220, %206
  %222 = load i32*, i32** %7, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 5), align 8
  %226 = call i32 @printQuery(i32* %222, %struct.TYPE_9__* %9, i32* %223, i32 %224, i32 %225)
  %227 = load i32*, i32** %7, align 8
  %228 = call i32 @ClearOrSaveResult(i32* %227)
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  store i32 0, i32* %230, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = call i32 @fflush(i32* %237)
  store i32 %238, i32* %20, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %252, label %242

242:                                              ; preds = %221
  %243 = load i64, i64* @cancel_pressed, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %20, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load i32*, i32** %10, align 8
  %250 = call i64 @ferror(i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %248, %245, %242, %221
  br label %254

253:                                              ; preds = %248
  br label %141

254:                                              ; preds = %252, %192, %176
  %255 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 4), align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %254
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load i32*, i32** %10, align 8
  %262 = call i32 @pclose(i32* %261)
  %263 = call i32 (...) @restore_sigpipe_trap()
  br label %267

264:                                              ; preds = %257
  %265 = load i32*, i32** %10, align 8
  %266 = call i32 @fclose(i32* %265)
  br label %267

267:                                              ; preds = %264, %260
  br label %275

268:                                              ; preds = %254
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32*, i32** %10, align 8
  %273 = call i32 @ClosePager(i32* %272)
  br label %274

274:                                              ; preds = %271, %268
  br label %275

275:                                              ; preds = %274, %267
  %276 = load i32, i32* %6, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 3), align 4
  %280 = call i32 @SetVariable(i32 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 3), align 4
  %282 = call i32 @SetVariable(i32 %281, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %283 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %284 = load i8*, i8** @INT64_FORMAT, align 8
  %285 = load i32, i32* %14, align 4
  %286 = call i32 @snprintf(i8* %283, i32 32, i8* %284, i32 %285)
  %287 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 3), align 4
  %288 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %289 = call i32 @SetVariable(i32 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %288)
  br label %290

290:                                              ; preds = %278, %275
  br label %291

291:                                              ; preds = %290, %129, %91
  %292 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 1), align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* %18, align 4
  %296 = call i32 @INSTR_TIME_SET_CURRENT(i32 %295)
  br label %297

297:                                              ; preds = %294, %291
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 2), align 8
  %299 = call i32* @PQexec(i32 %298, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i32* %299, i32** %7, align 8
  %300 = load i32, i32* %6, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %297
  %303 = load i32*, i32** %7, align 8
  %304 = call i32 @AcceptResult(i32* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i32*, i32** %7, align 8
  %308 = call i64 @PQresultStatus(i32* %307)
  %309 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %310 = icmp eq i64 %308, %309
  br label %311

311:                                              ; preds = %306, %302
  %312 = phi i1 [ false, %302 ], [ %310, %306 ]
  %313 = zext i1 %312 to i32
  store i32 %313, i32* %6, align 4
  %314 = load i32*, i32** %7, align 8
  %315 = call i32 @ClearOrSaveResult(i32* %314)
  br label %319

316:                                              ; preds = %297
  %317 = load i32*, i32** %7, align 8
  %318 = call i32 @PQclear(i32* %317)
  br label %319

319:                                              ; preds = %316, %311
  %320 = load i32, i32* %13, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %344

322:                                              ; preds = %319
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 2), align 8
  %324 = load i32, i32* %6, align 4
  %325 = icmp ne i32 %324, 0
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)
  %328 = call i32* @PQexec(i32 %323, i8* %327)
  store i32* %328, i32** %7, align 8
  %329 = load i32*, i32** %7, align 8
  %330 = call i32 @AcceptResult(i32* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %322
  %333 = load i32*, i32** %7, align 8
  %334 = call i64 @PQresultStatus(i32* %333)
  %335 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %336 = icmp eq i64 %334, %335
  br label %337

337:                                              ; preds = %332, %322
  %338 = phi i1 [ false, %322 ], [ %336, %332 ]
  %339 = zext i1 %338 to i32
  %340 = load i32, i32* %6, align 4
  %341 = and i32 %340, %339
  store i32 %341, i32* %6, align 4
  %342 = load i32*, i32** %7, align 8
  %343 = call i32 @ClearOrSaveResult(i32* %342)
  br label %344

344:                                              ; preds = %337, %319
  %345 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pset, i32 0, i32 1), align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %344
  %348 = load i32, i32* %19, align 4
  %349 = call i32 @INSTR_TIME_SET_CURRENT(i32 %348)
  %350 = load i32, i32* %19, align 4
  %351 = load i32, i32* %18, align 4
  %352 = call i32 @INSTR_TIME_SUBTRACT(i32 %350, i32 %351)
  %353 = load i32, i32* %19, align 4
  %354 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %353)
  %355 = sitofp i64 %354 to double
  %356 = load double*, double** %5, align 8
  %357 = load double, double* %356, align 8
  %358 = fadd double %357, %355
  store double %358, double* %356, align 8
  br label %359

359:                                              ; preds = %347, %344
  %360 = load i32, i32* %6, align 4
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %359, %58
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #2

declare dso_local i64 @PQtransactionStatus(i32) #2

declare dso_local i32* @PQexec(i32, i8*) #2

declare dso_local i32 @AcceptResult(i32*) #2

declare dso_local i64 @PQresultStatus(i32*) #2

declare dso_local i32 @ClearOrSaveResult(i32*) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_10__*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @SetResultVariables(i32*, i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_10__*) #2

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #2

declare dso_local i64 @INSTR_TIME_GET_MILLISEC(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @openQueryOutputFile(i64, i32**, i32*) #2

declare dso_local i32 @disable_sigpipe_trap(...) #2

declare dso_local i32 @clearerr(i32*) #2

declare dso_local i32 @ClosePager(i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @StoreQueryTuple(i32*) #2

declare dso_local i32 @PQntuples(i32*) #2

declare dso_local i32* @PageOutput(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_9__*, i32*, i32, i32) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @restore_sigpipe_trap(...) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @SetVariable(i32, i8*, i8*) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
