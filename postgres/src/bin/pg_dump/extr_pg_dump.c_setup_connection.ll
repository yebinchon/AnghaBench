; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_setup_connection.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_setup_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, i32, i32*, i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i8* }

@ALWAYS_SECURE_SEARCH_PATH_SQL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid client encoding \22%s\22 specified\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"standard_conforming_strings\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"SET ROLE %s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SET DATESTYLE = ISO\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"SET INTERVALSTYLE = POSTGRES\00", align 1
@have_extra_float_digits = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"SET extra_float_digits TO %d\00", align 1
@extra_float_digits = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"SET extra_float_digits TO 3\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"SET extra_float_digits TO 2\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"SET synchronize_seqscans TO off\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"SET statement_timeout = 0\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"SET lock_timeout = 0\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"SET idle_in_transaction_session_timeout = 0\00", align 1
@quote_all_identifiers = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"SET quote_all_identifiers = true\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"SET row_security = on\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"SET row_security = off\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"SET TRANSACTION ISOLATION LEVEL SERIALIZABLE, READ ONLY, DEFERRABLE\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"SET TRANSACTION ISOLATION LEVEL REPEATABLE READ, READ ONLY\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"SET TRANSACTION ISOLATION LEVEL SERIALIZABLE, READ ONLY\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"SET TRANSACTION SNAPSHOT \00", align 1
@.str.21 = private unnamed_addr constant [172 x i8] c"Synchronized snapshots on standby servers are not supported by this server version.\0ARun with --no-synchronized-snapshots instead if you do not need\0Asynchronized snapshots.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i8*, i8*, i8*)* @setup_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_connection(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %9, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = call i32* @GetConnection(%struct.TYPE_16__* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = load i32, i32* @ALWAYS_SECURE_SEARCH_PATH_SQL, align 4
  %22 = call i32 @ExecuteSqlQueryForSingleRow(%struct.TYPE_16__* %20, i32 %21)
  %23 = call i32 @PQclear(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load i32*, i32** %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @PQsetClientEncoding(i32* %27, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @PQclientEncoding(i32* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i8* @PQparameterStatus(i32* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %44, %35
  %49 = phi i1 [ false, %35 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %60, %55, %48
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %64
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 80100
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = call %struct.TYPE_14__* (...) @createPQExpBuffer()
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %12, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @fmtId(i8* %75)
  %77 = call i32 @appendPQExpBuffer(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %78, i8* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = call i32 @destroyPQExpBuffer(%struct.TYPE_14__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %72
  %90 = load i8*, i8** %8, align 8
  %91 = call i8* @pg_strdup(i8* %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %72
  br label %95

95:                                               ; preds = %94, %67, %64
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 80400
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %95
  %106 = load i64, i64* @have_extra_float_digits, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = call %struct.TYPE_14__* (...) @createPQExpBuffer()
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %13, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = load i32, i32* @extra_float_digits, align 4
  %112 = call i32 @appendPQExpBuffer(%struct.TYPE_14__* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %113, i8* %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %119 = call i32 @destroyPQExpBuffer(%struct.TYPE_14__* %118)
  br label %132

120:                                              ; preds = %105
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %123, 90000
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %131

128:                                              ; preds = %120
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %108
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %135, 80300
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp sge i32 %145, 90300
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %140
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %153, 90600
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %156, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i64, i64* @quote_all_identifiers, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp sge i32 %164, 90100
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %161, %158
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp sge i32 %172, 90500
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %181 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %185

182:                                              ; preds = %174
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %185, %169
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp sge i32 %191, 90100
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %205 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %204, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0))
  br label %209

206:                                              ; preds = %198, %193
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %208 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %207, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %203
  br label %213

210:                                              ; preds = %186
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %212 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %211, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %209
  %214 = load i8*, i8** %7, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i8*, i8** %7, align 8
  %218 = call i8* @pg_strdup(i8* %217)
  %219 = bitcast i8* %218 to i32*
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 3
  store i32* %219, i32** %221, align 8
  br label %222

222:                                              ; preds = %216, %213
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %244

227:                                              ; preds = %222
  %228 = call %struct.TYPE_14__* (...) @createPQExpBuffer()
  store %struct.TYPE_14__* %228, %struct.TYPE_14__** %14, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %230 = call i32 @appendPQExpBufferStr(%struct.TYPE_14__* %229, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load i32*, i32** %10, align 8
  %236 = call i32 @appendStringLiteralConn(%struct.TYPE_14__* %231, i32* %234, i32* %235)
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @ExecuteSqlStatement(%struct.TYPE_16__* %237, i8* %240)
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %243 = call i32 @destroyPQExpBuffer(%struct.TYPE_14__* %242)
  br label %277

244:                                              ; preds = %222
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 1
  br i1 %248, label %249, label %276

249:                                              ; preds = %244
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %252, 90200
  br i1 %253, label %254, label %276

254:                                              ; preds = %249
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %276, label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %267, 100000
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.21, i64 0, i64 0))
  br label %271

271:                                              ; preds = %269, %264, %259
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %273 = call i32* @get_synchronized_snapshot(%struct.TYPE_16__* %272)
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 3
  store i32* %273, i32** %275, align 8
  br label %276

276:                                              ; preds = %271, %254, %249, %244
  br label %277

277:                                              ; preds = %276, %227
  ret void
}

declare dso_local i32* @GetConnection(%struct.TYPE_16__*) #1

declare dso_local i32 @PQclear(i32) #1

declare dso_local i32 @ExecuteSqlQueryForSingleRow(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @PQsetClientEncoding(i32*, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @PQclientEncoding(i32*) #1

declare dso_local i8* @PQparameterStatus(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_14__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i32 @ExecuteSqlStatement(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_14__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32* @get_synchronized_snapshot(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
