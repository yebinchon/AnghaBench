; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqBuildErrorMessage3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqBuildErrorMessage3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no error message available\0A\00", align 1
@PG_DIAG_SEVERITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:  \00", align 1
@PQERRORS_SQLSTATE = common dso_local global i64 0, align 8
@PG_DIAG_SQLSTATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PQERRORS_TERSE = common dso_local global i64 0, align 8
@PQERRORS_VERBOSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@PG_DIAG_MESSAGE_PRIMARY = common dso_local global i32 0, align 4
@PG_DIAG_STATEMENT_POSITION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c" at character %s\00", align 1
@PG_DIAG_INTERNAL_POSITION = common dso_local global i32 0, align 4
@PG_DIAG_INTERNAL_QUERY = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_DETAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"DETAIL:  %s\0A\00", align 1
@PG_DIAG_MESSAGE_HINT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"HINT:  %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"QUERY:  %s\0A\00", align 1
@PQSHOW_CONTEXT_ALWAYS = common dso_local global i64 0, align 8
@PQSHOW_CONTEXT_ERRORS = common dso_local global i64 0, align 8
@PGRES_FATAL_ERROR = common dso_local global i64 0, align 8
@PG_DIAG_CONTEXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"CONTEXT:  %s\0A\00", align 1
@PG_DIAG_SCHEMA_NAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"SCHEMA NAME:  %s\0A\00", align 1
@PG_DIAG_TABLE_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"TABLE NAME:  %s\0A\00", align 1
@PG_DIAG_COLUMN_NAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"COLUMN NAME:  %s\0A\00", align 1
@PG_DIAG_DATATYPE_NAME = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"DATATYPE NAME:  %s\0A\00", align 1
@PG_DIAG_CONSTRAINT_NAME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"CONSTRAINT NAME:  %s\0A\00", align 1
@PG_DIAG_SOURCE_FILE = common dso_local global i32 0, align 4
@PG_DIAG_SOURCE_LINE = common dso_local global i32 0, align 4
@PG_DIAG_SOURCE_FUNCTION = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"LOCATION:  \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqBuildErrorMessage3(i32 %0, %struct.TYPE_4__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @appendPQExpBufferStr(i32 %17, i8* %18)
  br label %342

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @appendPQExpBufferStr(i32 %39, i8* %42)
  br label %48

44:                                               ; preds = %30, %25
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @libpq_gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @appendPQExpBufferStr(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %342

49:                                               ; preds = %20
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = load i32, i32* @PG_DIAG_SEVERITY, align 4
  %52 = call i8* @PQresultErrorField(%struct.TYPE_4__* %50, i32 %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @PQERRORS_SQLSTATE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %66 = call i8* @PQresultErrorField(%struct.TYPE_4__* %64, i32 %65)
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %342

73:                                               ; preds = %63
  %74 = load i64, i64* @PQERRORS_TERSE, align 8
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %73, %59
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @PQERRORS_VERBOSE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %82 = call i8* @PQresultErrorField(%struct.TYPE_4__* %80, i32 %81)
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %75
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = load i32, i32* @PG_DIAG_MESSAGE_PRIMARY, align 4
  %93 = call i8* @PQresultErrorField(%struct.TYPE_4__* %91, i32 %92)
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @appendPQExpBufferStr(i32 %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = load i32, i32* @PG_DIAG_STATEMENT_POSITION, align 4
  %103 = call i8* @PQresultErrorField(%struct.TYPE_4__* %101, i32 %102)
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @PQERRORS_TERSE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %10, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @atoi(i8* %119)
  store i32 %120, i32* %11, align 4
  br label %126

121:                                              ; preds = %110, %106
  %122 = load i32, i32* %5, align 4
  %123 = call i8* @libpq_gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %122, i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %121, %115
  br label %153

127:                                              ; preds = %100
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = load i32, i32* @PG_DIAG_INTERNAL_POSITION, align 4
  %130 = call i8* @PQresultErrorField(%struct.TYPE_4__* %128, i32 %129)
  store i8* %130, i8** %9, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %152

133:                                              ; preds = %127
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = load i32, i32* @PG_DIAG_INTERNAL_QUERY, align 4
  %136 = call i8* @PQresultErrorField(%struct.TYPE_4__* %134, i32 %135)
  store i8* %136, i8** %10, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @PQERRORS_TERSE, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i8*, i8** %10, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @atoi(i8* %144)
  store i32 %145, i32* %11, align 4
  br label %151

146:                                              ; preds = %140, %133
  %147 = load i32, i32* %5, align 4
  %148 = call i8* @libpq_gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %147, i8* %148, i8* %149)
  br label %151

151:                                              ; preds = %146, %143
  br label %152

152:                                              ; preds = %151, %127
  br label %153

153:                                              ; preds = %152, %126
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @appendPQExpBufferChar(i32 %154, i8 signext 10)
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* @PQERRORS_TERSE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %233

159:                                              ; preds = %153
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i32, i32* %11, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @reportErrorPosition(i32 %166, i8* %167, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %165, %162, %159
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %175 = load i32, i32* @PG_DIAG_MESSAGE_DETAIL, align 4
  %176 = call i8* @PQresultErrorField(%struct.TYPE_4__* %174, i32 %175)
  store i8* %176, i8** %9, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load i32, i32* %5, align 4
  %181 = call i8* @libpq_gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %180, i8* %181, i8* %182)
  br label %184

184:                                              ; preds = %179, %173
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %186 = load i32, i32* @PG_DIAG_MESSAGE_HINT, align 4
  %187 = call i8* @PQresultErrorField(%struct.TYPE_4__* %185, i32 %186)
  store i8* %187, i8** %9, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load i32, i32* %5, align 4
  %192 = call i8* @libpq_gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %191, i8* %192, i8* %193)
  br label %195

195:                                              ; preds = %190, %184
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %197 = load i32, i32* @PG_DIAG_INTERNAL_QUERY, align 4
  %198 = call i8* @PQresultErrorField(%struct.TYPE_4__* %196, i32 %197)
  store i8* %198, i8** %9, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load i32, i32* %5, align 4
  %203 = call i8* @libpq_gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %204 = load i8*, i8** %9, align 8
  %205 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %202, i8* %203, i8* %204)
  br label %206

206:                                              ; preds = %201, %195
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* @PQSHOW_CONTEXT_ALWAYS, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %220, label %210

210:                                              ; preds = %206
  %211 = load i64, i64* %8, align 8
  %212 = load i64, i64* @PQSHOW_CONTEXT_ERRORS, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %232

214:                                              ; preds = %210
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @PGRES_FATAL_ERROR, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %214, %206
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %222 = load i32, i32* @PG_DIAG_CONTEXT, align 4
  %223 = call i8* @PQresultErrorField(%struct.TYPE_4__* %221, i32 %222)
  store i8* %223, i8** %9, align 8
  %224 = load i8*, i8** %9, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %220
  %227 = load i32, i32* %5, align 4
  %228 = call i8* @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %229 = load i8*, i8** %9, align 8
  %230 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %227, i8* %228, i8* %229)
  br label %231

231:                                              ; preds = %226, %220
  br label %232

232:                                              ; preds = %231, %214, %210
  br label %233

233:                                              ; preds = %232, %153
  %234 = load i64, i64* %7, align 8
  %235 = load i64, i64* @PQERRORS_VERBOSE, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %293

237:                                              ; preds = %233
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %239 = load i32, i32* @PG_DIAG_SCHEMA_NAME, align 4
  %240 = call i8* @PQresultErrorField(%struct.TYPE_4__* %238, i32 %239)
  store i8* %240, i8** %9, align 8
  %241 = load i8*, i8** %9, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load i32, i32* %5, align 4
  %245 = call i8* @libpq_gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %246 = load i8*, i8** %9, align 8
  %247 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %244, i8* %245, i8* %246)
  br label %248

248:                                              ; preds = %243, %237
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %250 = load i32, i32* @PG_DIAG_TABLE_NAME, align 4
  %251 = call i8* @PQresultErrorField(%struct.TYPE_4__* %249, i32 %250)
  store i8* %251, i8** %9, align 8
  %252 = load i8*, i8** %9, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %248
  %255 = load i32, i32* %5, align 4
  %256 = call i8* @libpq_gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %257 = load i8*, i8** %9, align 8
  %258 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %255, i8* %256, i8* %257)
  br label %259

259:                                              ; preds = %254, %248
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %261 = load i32, i32* @PG_DIAG_COLUMN_NAME, align 4
  %262 = call i8* @PQresultErrorField(%struct.TYPE_4__* %260, i32 %261)
  store i8* %262, i8** %9, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %270

265:                                              ; preds = %259
  %266 = load i32, i32* %5, align 4
  %267 = call i8* @libpq_gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %268 = load i8*, i8** %9, align 8
  %269 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %266, i8* %267, i8* %268)
  br label %270

270:                                              ; preds = %265, %259
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %272 = load i32, i32* @PG_DIAG_DATATYPE_NAME, align 4
  %273 = call i8* @PQresultErrorField(%struct.TYPE_4__* %271, i32 %272)
  store i8* %273, i8** %9, align 8
  %274 = load i8*, i8** %9, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %281

276:                                              ; preds = %270
  %277 = load i32, i32* %5, align 4
  %278 = call i8* @libpq_gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %279 = load i8*, i8** %9, align 8
  %280 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %277, i8* %278, i8* %279)
  br label %281

281:                                              ; preds = %276, %270
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %283 = load i32, i32* @PG_DIAG_CONSTRAINT_NAME, align 4
  %284 = call i8* @PQresultErrorField(%struct.TYPE_4__* %282, i32 %283)
  store i8* %284, i8** %9, align 8
  %285 = load i8*, i8** %9, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %292

287:                                              ; preds = %281
  %288 = load i32, i32* %5, align 4
  %289 = call i8* @libpq_gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %290 = load i8*, i8** %9, align 8
  %291 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %288, i8* %289, i8* %290)
  br label %292

292:                                              ; preds = %287, %281
  br label %293

293:                                              ; preds = %292, %233
  %294 = load i64, i64* %7, align 8
  %295 = load i64, i64* @PQERRORS_VERBOSE, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %342

297:                                              ; preds = %293
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %299 = load i32, i32* @PG_DIAG_SOURCE_FILE, align 4
  %300 = call i8* @PQresultErrorField(%struct.TYPE_4__* %298, i32 %299)
  store i8* %300, i8** %12, align 8
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %302 = load i32, i32* @PG_DIAG_SOURCE_LINE, align 4
  %303 = call i8* @PQresultErrorField(%struct.TYPE_4__* %301, i32 %302)
  store i8* %303, i8** %13, align 8
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %305 = load i32, i32* @PG_DIAG_SOURCE_FUNCTION, align 4
  %306 = call i8* @PQresultErrorField(%struct.TYPE_4__* %304, i32 %305)
  store i8* %306, i8** %9, align 8
  %307 = load i8*, i8** %9, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %297
  %310 = load i8*, i8** %12, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %315, label %312

312:                                              ; preds = %309
  %313 = load i8*, i8** %13, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %341

315:                                              ; preds = %312, %309, %297
  %316 = load i32, i32* %5, align 4
  %317 = call i8* @libpq_gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %318 = call i32 @appendPQExpBufferStr(i32 %316, i8* %317)
  %319 = load i8*, i8** %9, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %326

321:                                              ; preds = %315
  %322 = load i32, i32* %5, align 4
  %323 = call i8* @libpq_gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %324 = load i8*, i8** %9, align 8
  %325 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %322, i8* %323, i8* %324)
  br label %326

326:                                              ; preds = %321, %315
  %327 = load i8*, i8** %12, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load i8*, i8** %13, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load i32, i32* %5, align 4
  %334 = call i8* @libpq_gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %335 = load i8*, i8** %12, align 8
  %336 = load i8*, i8** %13, align 8
  %337 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %333, i8* %334, i8* %335, i8* %336)
  br label %338

338:                                              ; preds = %332, %329, %326
  %339 = load i32, i32* %5, align 4
  %340 = call i32 @appendPQExpBufferChar(i32 %339, i8 signext 10)
  br label %341

341:                                              ; preds = %338, %312
  br label %342

342:                                              ; preds = %16, %48, %69, %341, %293
  ret void
}

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i8* @PQresultErrorField(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @appendPQExpBufferChar(i32, i8 signext) #1

declare dso_local i32 @reportErrorPosition(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
