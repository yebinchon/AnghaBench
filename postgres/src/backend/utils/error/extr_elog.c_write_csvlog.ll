; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_write_csvlog.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_write_csvlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i32*, i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_14__ = type { i32*, i32 }

@write_csvlog.log_line_number = internal global i64 0, align 8
@write_csvlog.log_my_pid = internal global i32 0, align 4
@MyProcPid = common dso_local global i32 0, align 4
@formatted_start_time = common dso_local global i8* null, align 8
@formatted_log_time = common dso_local global i8* null, align 8
@MyProcPort = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%lx.%x\00", align 1
@MyStartTime = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@MyProc = common dso_local global %struct.TYPE_13__* null, align 8
@InvalidBackendId = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%d/%u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@log_min_error_statement = common dso_local global i32 0, align 4
@debug_query_string = common dso_local global i32* null, align 8
@Log_error_verbosity = common dso_local global i64 0, align 8
@PGERROR_VERBOSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s, %s:%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@application_name = common dso_local global i32* null, align 8
@am_syslogger = common dso_local global i64 0, align 8
@LOG_DESTINATION_CSVLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @write_csvlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_csvlog(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @write_csvlog.log_my_pid, align 4
  %10 = load i32, i32* @MyProcPid, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  store i64 0, i64* @write_csvlog.log_line_number, align 8
  %13 = load i32, i32* @MyProcPid, align 4
  store i32 %13, i32* @write_csvlog.log_my_pid, align 4
  %14 = load i8*, i8** @formatted_start_time, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i64, i64* @write_csvlog.log_line_number, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @write_csvlog.log_line_number, align 8
  %19 = call i32 @initStringInfo(%struct.TYPE_14__* %3)
  %20 = load i8*, i8** @formatted_log_time, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 (...) @setup_formatted_log_time()
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i8*, i8** @formatted_log_time, align 8
  %29 = call i32 @appendStringInfoString(%struct.TYPE_14__* %3, i8* %28)
  %30 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %36)
  br label %38

38:                                               ; preds = %33, %27
  %39 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %45)
  br label %47

47:                                               ; preds = %42, %38
  %48 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %49 = load i32, i32* @MyProcPid, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @MyProcPid, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 34)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @appendStringInfoString(%struct.TYPE_14__* %3, i8* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %64
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 58)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @appendStringInfoString(%struct.TYPE_14__* %3, i8* %86)
  br label %88

88:                                               ; preds = %82, %74, %64
  %89 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 34)
  br label %90

90:                                               ; preds = %88, %59, %55
  %91 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %92 = load i64, i64* @MyStartTime, align 8
  %93 = load i32, i32* @MyProcPid, align 4
  %94 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %93)
  %95 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %96 = load i64, i64* @write_csvlog.log_line_number, align 8
  %97 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %96)
  %98 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyProcPort, align 8
  %100 = icmp ne %struct.TYPE_12__* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %90
  %102 = call i32 @initStringInfo(%struct.TYPE_14__* %5)
  %103 = call i8* @get_ps_display(i32* %7)
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @appendBinaryStringInfo(%struct.TYPE_14__* %5, i8* %104, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @pfree(i32* %111)
  br label %113

113:                                              ; preds = %101, %90
  %114 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %115 = load i8*, i8** @formatted_start_time, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = call i32 (...) @setup_formatted_start_time()
  br label %122

122:                                              ; preds = %120, %113
  %123 = load i8*, i8** @formatted_start_time, align 8
  %124 = call i32 @appendStringInfoString(%struct.TYPE_14__* %3, i8* %123)
  %125 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyProc, align 8
  %127 = icmp ne %struct.TYPE_13__* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyProc, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @InvalidBackendId, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyProc, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyProc, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %137, i32 %140)
  br label %142

142:                                              ; preds = %134, %128, %122
  %143 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %144 = call i32 (...) @GetTopTransactionIdIfAny()
  %145 = sext i32 %144 to i64
  %146 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %145)
  %147 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @error_severity(i32 %150)
  %152 = call i8* @_(i32 %151)
  %153 = call i32 @appendStringInfoString(%struct.TYPE_14__* %3, i8* %152)
  %154 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @unpack_sql_state(i32 %157)
  %159 = call i32 @appendStringInfoString(%struct.TYPE_14__* %3, i8* %158)
  %160 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 13
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %163)
  %165 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 12
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %142
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 12
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %173)
  br label %180

175:                                              ; preds = %142
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 11
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %178)
  br label %180

180:                                              ; preds = %175, %170
  %181 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %184)
  %186 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 9
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %189)
  %191 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %180
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 9
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %205)
  br label %207

207:                                              ; preds = %201, %196, %180
  %208 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %207
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %216)
  br label %218

218:                                              ; preds = %213, %207
  %219 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @log_min_error_statement, align 4
  %224 = call i64 @is_log_level_output(i32 %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %218
  %227 = load i32*, i32** @debug_query_string, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %229
  store i32 1, i32* %4, align 4
  br label %235

235:                                              ; preds = %234, %229, %226, %218
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32*, i32** @debug_query_string, align 8
  %240 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %243 = load i32, i32* %4, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %241
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %254)
  br label %256

256:                                              ; preds = %250, %245, %241
  %257 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %258 = load i64, i64* @Log_error_verbosity, align 8
  %259 = load i64, i64* @PGERROR_VERBOSE, align 8
  %260 = icmp sge i64 %258, %259
  br i1 %260, label %261, label %306

261:                                              ; preds = %256
  %262 = call i32 @initStringInfo(%struct.TYPE_14__* %8)
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %284

267:                                              ; preds = %261
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %267
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %276, i32 %279, i32 %282)
  br label %299

284:                                              ; preds = %267, %261
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %293, i32 %296)
  br label %298

298:                                              ; preds = %289, %284
  br label %299

299:                                              ; preds = %298, %272
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %301)
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @pfree(i32* %304)
  br label %306

306:                                              ; preds = %299, %256
  %307 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 44)
  %308 = load i32*, i32** @application_name, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load i32*, i32** @application_name, align 8
  %312 = call i32 @appendCSVLiteral(%struct.TYPE_14__* %3, i32* %311)
  br label %313

313:                                              ; preds = %310, %306
  %314 = call i32 @appendStringInfoChar(%struct.TYPE_14__* %3, i8 signext 10)
  %315 = load i64, i64* @am_syslogger, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %323 = call i32 @write_syslogger_file(i32* %319, i32 %321, i32 %322)
  br label %331

324:                                              ; preds = %313
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %330 = call i32 @write_pipe_chunks(i32* %326, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %324, %317
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = call i32 @pfree(i32* %333)
  ret void
}

declare dso_local i32 @initStringInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @setup_formatted_log_time(...) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_14__*, i8 signext) #1

declare dso_local i32 @appendCSVLiteral(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_14__*, i8*, i64, ...) #1

declare dso_local i8* @get_ps_display(i32*) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @setup_formatted_start_time(...) #1

declare dso_local i32 @GetTopTransactionIdIfAny(...) #1

declare dso_local i8* @_(i32) #1

declare dso_local i32 @error_severity(i32) #1

declare dso_local i8* @unpack_sql_state(i32) #1

declare dso_local i64 @is_log_level_output(i32, i32) #1

declare dso_local i32 @write_syslogger_file(i32*, i32, i32) #1

declare dso_local i32 @write_pipe_chunks(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
