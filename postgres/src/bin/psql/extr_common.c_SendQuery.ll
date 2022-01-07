; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_SendQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_SendQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i64, i32, i32, i64, i32, i32**, i32*, i32*, i32, %struct.TYPE_5__, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SendQuery.on_error_rollback_warning = internal global i32 0, align 4
@pset = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"You are currently not connected to a database.\00", align 1
@stderr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [166 x i8] c"***(Single step mode: verify command)*******************************************\0A%s\0A***(press return to proceed or enter x and return to cancel)********************\0A\00", align 1
@stdout = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@cancel_pressed = common dso_local global i64 0, align 8
@PSQL_ECHO_QUERIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"********* QUERY **********\0A%s\0A**************************\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PSQL_ERROR_ROLLBACK_OFF = common dso_local global i64 0, align 8
@PSQL_ERROR_ROLLBACK_ON = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [75 x i8] c"The server (version %s) does not support savepoints for ON_ERROR_ROLLBACK.\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"SAVEPOINT pg_psql_temporary_savepoint\00", align 1
@PSQL_ECHO_ERRORS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"STATEMENT:  %s\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"ROLLBACK TO pg_psql_temporary_savepoint\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SAVEPOINT\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"RELEASE pg_psql_temporary_savepoint\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"unexpected transaction status (%d)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ENCODING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendQuery(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %300

19:                                               ; preds = %1
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 19), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i64, i64* @stderr, align 8
  %24 = call i32 @fflush(i64 %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @printf(i8* %25, i8* %26)
  %28 = load i64, i64* @stdout, align 8
  %29 = call i32 @fflush(i64 %28)
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %31 = load i32, i32* @stdin, align 4
  %32 = call i32* @fgets(i8* %30, i32 3, i32 %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 120
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %300

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i64, i64* @cancel_pressed, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %300

45:                                               ; preds = %41
  br label %56

46:                                               ; preds = %19
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 8
  %48 = load i64, i64* @PSQL_ECHO_QUERIES, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @puts(i8* %51)
  %53 = load i64, i64* @stdout, align 8
  %54 = call i32 @fflush(i64 %53)
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 18), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 18), align 8
  %61 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 @fprintf(i64 %60, i8* %61, i8* %62)
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 18), align 8
  %65 = call i32 @fflush(i64 %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = call i32 (...) @SetCancelConn()
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %69 = call i32 @PQtransactionStatus(i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 131
  br i1 %71, label %72, label %98

72:                                               ; preds = %66
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 17), align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @command_no_begin(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %81 = call i32* @PQexec(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32* %81, i32** %3, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @PQresultStatus(i32* %82)
  %84 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %88 = call i8* @PQerrorMessage(i32 %87)
  %89 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @ClearOrSaveResult(i32* %90)
  %92 = call i32 (...) @ResetCancelConn()
  br label %300

93:                                               ; preds = %79
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @ClearOrSaveResult(i32* %94)
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %97 = call i32 @PQtransactionStatus(i32 %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %75, %72, %66
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 129
  br i1 %100, label %101, label %141

101:                                              ; preds = %98
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 8
  %103 = load i64, i64* @PSQL_ERROR_ROLLBACK_OFF, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %141

105:                                              ; preds = %101
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 16), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 8
  %110 = load i64, i64* @PSQL_ERROR_ROLLBACK_ON, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %141

112:                                              ; preds = %108, %105
  %113 = load i32, i32* @SendQuery.on_error_rollback_warning, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 8
  %117 = icmp slt i32 %116, 80000
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 8
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %121 = call i32 @formatPGVersionNumber(i32 %119, i32 0, i8* %120, i32 32)
  %122 = call i32 @pg_log_warning(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  store i32 1, i32* @SendQuery.on_error_rollback_warning, align 4
  br label %140

123:                                              ; preds = %115, %112
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %125 = call i32* @PQexec(i32 %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32* %125, i32** %3, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = call i64 @PQresultStatus(i32* %126)
  %128 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %132 = call i8* @PQerrorMessage(i32 %131)
  %133 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %132)
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @ClearOrSaveResult(i32* %134)
  %136 = call i32 (...) @ResetCancelConn()
  br label %300

137:                                              ; preds = %123
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @ClearOrSaveResult(i32* %138)
  store i32 1, i32* %8, align 4
  br label %140

140:                                              ; preds = %137, %118
  br label %141

141:                                              ; preds = %140, %108, %101, %98
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3), align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i8*, i8** %2, align 8
  %146 = call i32 @DescribeQuery(i8* %145, double* %5)
  store i32 %146, i32* %6, align 4
  %147 = call i32 (...) @ResetCancelConn()
  store i32* null, i32** %3, align 8
  br label %198

148:                                              ; preds = %141
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 8
  %150 = icmp sle i64 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 5), align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 6), align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = load i8*, i8** %2, align 8
  %159 = call i32 @is_select_command(i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %193, label %161

161:                                              ; preds = %157, %154, %151, %148
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 15), align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @INSTR_TIME_SET_CURRENT(i32 %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %169 = load i8*, i8** %2, align 8
  %170 = call i32* @PQexec(i32 %168, i8* %169)
  store i32* %170, i32** %3, align 8
  %171 = call i32 (...) @ResetCancelConn()
  %172 = call i32 @ProcessResult(i32** %3)
  store i32 %172, i32* %6, align 4
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 15), align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %167
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @INSTR_TIME_SET_CURRENT(i32 %176)
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @INSTR_TIME_SUBTRACT(i32 %178, i32 %179)
  %181 = load i32, i32* %12, align 4
  %182 = call double @INSTR_TIME_GET_MILLISEC(i32 %181)
  store double %182, double* %5, align 8
  br label %183

183:                                              ; preds = %175, %167
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i32*, i32** %3, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 @PrintQueryResults(i32* %190)
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %189, %186, %183
  br label %197

193:                                              ; preds = %157
  %194 = load i8*, i8** %2, align 8
  %195 = call i32 @ExecQueryUsingCursor(i8* %194, double* %5)
  store i32 %195, i32* %6, align 4
  %196 = call i32 (...) @ResetCancelConn()
  store i32* null, i32** %3, align 8
  br label %197

197:                                              ; preds = %193, %192
  br label %198

198:                                              ; preds = %197, %144
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %198
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 8
  %203 = load i64, i64* @PSQL_ECHO_ERRORS, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i8*, i8** %2, align 8
  %207 = call i32 @pg_log_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %205, %201, %198
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %273

211:                                              ; preds = %208
  store i8* null, i8** %13, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %213 = call i32 @PQtransactionStatus(i32 %212)
  store i32 %213, i32* %4, align 4
  %214 = load i32, i32* %4, align 4
  switch i32 %214, label %239 [
    i32 130, label %215
    i32 131, label %216
    i32 129, label %217
    i32 132, label %238
    i32 128, label %238
  ]

215:                                              ; preds = %211
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %249

216:                                              ; preds = %211
  br label %249

217:                                              ; preds = %211
  %218 = load i32*, i32** %3, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %236

220:                                              ; preds = %217
  %221 = load i32*, i32** %3, align 8
  %222 = call i32 @PQcmdStatus(i32* %221)
  %223 = call i32 @strcmp(i32 %222, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %235, label %225

225:                                              ; preds = %220
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @PQcmdStatus(i32* %226)
  %228 = call i32 @strcmp(i32 %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %225
  %231 = load i32*, i32** %3, align 8
  %232 = call i32 @PQcmdStatus(i32* %231)
  %233 = call i32 @strcmp(i32 %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230, %225, %220
  store i8* null, i8** %13, align 8
  br label %237

236:                                              ; preds = %230, %217
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %237

237:                                              ; preds = %236, %235
  br label %249

238:                                              ; preds = %211, %211
  br label %239

239:                                              ; preds = %211, %238
  store i32 0, i32* %6, align 4
  %240 = load i32, i32* %4, align 4
  %241 = icmp ne i32 %240, 128
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = call i32 (...) @ConnectionUp()
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242, %239
  %246 = load i32, i32* %4, align 4
  %247 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %245, %242
  br label %249

249:                                              ; preds = %248, %237, %216, %215
  %250 = load i8*, i8** %13, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %272

252:                                              ; preds = %249
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %254 = load i8*, i8** %13, align 8
  %255 = call i32* @PQexec(i32 %253, i8* %254)
  store i32* %255, i32** %14, align 8
  %256 = load i32*, i32** %14, align 8
  %257 = call i64 @PQresultStatus(i32* %256)
  %258 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %269

260:                                              ; preds = %252
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %262 = call i8* @PQerrorMessage(i32 %261)
  %263 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %262)
  %264 = load i32*, i32** %14, align 8
  %265 = call i32 @ClearOrSaveResult(i32* %264)
  store i32 0, i32* %6, align 4
  %266 = load i32*, i32** %3, align 8
  %267 = call i32 @PQclear(i32* %266)
  %268 = call i32 (...) @ResetCancelConn()
  br label %300

269:                                              ; preds = %252
  %270 = load i32*, i32** %14, align 8
  %271 = call i32 @PQclear(i32* %270)
  br label %272

272:                                              ; preds = %269, %249
  br label %273

273:                                              ; preds = %272, %208
  %274 = load i32*, i32** %3, align 8
  %275 = call i32 @ClearOrSaveResult(i32* %274)
  %276 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 15), align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = load double, double* %5, align 8
  %280 = call i32 @PrintTiming(double %279)
  br label %281

281:                                              ; preds = %278, %273
  %282 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 7), align 8
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %284 = call i64 @PQclientEncoding(i32 %283)
  %285 = icmp ne i64 %282, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %281
  %287 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %288 = call i64 @PQclientEncoding(i32 %287)
  %289 = icmp sge i64 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %286
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 14), align 8
  %292 = call i64 @PQclientEncoding(i32 %291)
  store i64 %292, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 7), align 8
  %293 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 7), align 8
  store i64 %293, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 13, i32 0, i32 0), align 8
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 12), align 8
  %295 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 7), align 8
  %296 = call i32 @pg_encoding_to_char(i64 %295)
  %297 = call i32 @SetVariable(i32 %294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %290, %286, %281
  %299 = call i32 (...) @PrintNotifications()
  br label %300

300:                                              ; preds = %298, %260, %130, %86, %44, %39, %17
  %301 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 11), align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 11), align 8
  %305 = call i32 @free(i32* %304)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 11), align 8
  br label %306

306:                                              ; preds = %303, %300
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 8), align 8
  %307 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 10), align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 10), align 8
  %311 = call i32 @free(i32* %310)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 10), align 8
  br label %312

312:                                              ; preds = %309, %306
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 5), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 6), align 4
  store i32 0, i32* %7, align 4
  br label %313

313:                                              ; preds = %329, %312
  %314 = load i32, i32* %7, align 4
  %315 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 9), align 8
  %316 = call i32 @lengthof(i32** %315)
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %318, label %332

318:                                              ; preds = %313
  %319 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 9), align 8
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = call i32 @pg_free(i32* %323)
  %325 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 9), align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  store i32* null, i32** %328, align 8
  br label %329

329:                                              ; preds = %318
  %330 = load i32, i32* %7, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %7, align 4
  br label %313

332:                                              ; preds = %313
  %333 = load i32, i32* %6, align 4
  ret i32 %333
}

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @SetCancelConn(...) #1

declare dso_local i32 @PQtransactionStatus(i32) #1

declare dso_local i32 @command_no_begin(i8*) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_info(i8*, i8*) #1

declare dso_local i8* @PQerrorMessage(i32) #1

declare dso_local i32 @ClearOrSaveResult(i32*) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32 @pg_log_warning(i8*, i32) #1

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #1

declare dso_local i32 @DescribeQuery(i8*, double*) #1

declare dso_local i32 @is_select_command(i8*) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @ProcessResult(i32**) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local double @INSTR_TIME_GET_MILLISEC(i32) #1

declare dso_local i32 @PrintQueryResults(i32*) #1

declare dso_local i32 @ExecQueryUsingCursor(i8*, double*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @PQcmdStatus(i32*) #1

declare dso_local i32 @ConnectionUp(...) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PrintTiming(double) #1

declare dso_local i64 @PQclientEncoding(i32) #1

declare dso_local i32 @SetVariable(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_to_char(i64) #1

declare dso_local i32 @PrintNotifications(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @lengthof(i32**) #1

declare dso_local i32 @pg_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
