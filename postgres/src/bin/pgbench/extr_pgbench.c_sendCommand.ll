; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_sendCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_sendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i8**, i64, i64 }
%struct.TYPE_10__ = type { i32, i32*, i64, i32, i32, i32 }

@querymode = common dso_local global i64 0, align 8
@QUERY_SIMPLE = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"client %d sending %s\0A\00", align 1
@QUERY_EXTENDED = common dso_local global i64 0, align 8
@MAX_ARGS = common dso_local global i32 0, align 4
@QUERY_PREPARED = common dso_local global i64 0, align 8
@MAX_PREPARE_NAME = common dso_local global i32 0, align 4
@sql_script = common dso_local global %struct.TYPE_11__* null, align 8
@SQL_COMMAND = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"client %d could not send %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @sendCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendCommand(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %20 = load i64, i64* @querymode, align 8
  %21 = load i64, i64* @QUERY_SIMPLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @pg_strdup(i8* %28)
  store i8* %29, i8** %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @assignVariables(%struct.TYPE_10__* %30, i8* %31)
  store i8* %32, i8** %7, align 8
  %33 = load i64, i64* @debug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %35, %23
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @PQsendQuery(i32 %45, i8* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @free(i8* %48)
  br label %226

50:                                               ; preds = %2
  %51 = load i64, i64* @querymode, align 8
  %52 = load i64, i64* @QUERY_EXTENDED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* @MAX_ARGS, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %9, align 8
  %63 = alloca i8*, i64 %61, align 16
  store i64 %61, i64* %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = call i32 @getQueryParams(%struct.TYPE_10__* %64, %struct.TYPE_9__* %65, i8** %63)
  %67 = load i64, i64* @debug, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %54
  %70 = load i32, i32* @stderr, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %69, %54
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i32 @PQsendQueryParams(i32 %79, i8* %80, i64 %84, i32* null, i8** %63, i32* null, i32* null, i32 0)
  store i32 %85, i32* %6, align 4
  %86 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %225

87:                                               ; preds = %50
  %88 = load i64, i64* @querymode, align 8
  %89 = load i64, i64* @QUERY_PREPARED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %223

91:                                               ; preds = %87
  %92 = load i32, i32* @MAX_PREPARE_NAME, align 4
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %11, align 8
  %95 = alloca i8, i64 %93, align 16
  store i64 %93, i64* %12, align 8
  %96 = load i32, i32* @MAX_ARGS, align 4
  %97 = zext i32 %96 to i64
  %98 = alloca i8*, i64 %97, align 16
  store i64 %97, i64* %13, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %194, label %108

108:                                              ; preds = %91
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sql_script, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %114, align 8
  store %struct.TYPE_9__** %115, %struct.TYPE_9__*** %15, align 8
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %183, %108
  %117 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %117, i64 %119
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = icmp ne %struct.TYPE_9__* %121, null
  br i1 %122, label %123, label %186

123:                                              ; preds = %116
  %124 = load i32, i32* @MAX_PREPARE_NAME, align 4
  %125 = zext i32 %124 to i64
  %126 = call i8* @llvm.stacksave()
  store i8* %126, i8** %17, align 8
  %127 = alloca i8, i64 %125, align 16
  store i64 %125, i64* %18, align 8
  %128 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %128, i64 %130
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SQL_COMMAND, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %123
  store i32 4, i32* %19, align 4
  br label %179

138:                                              ; preds = %123
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @preparedStatementName(i8* %127, i64 %141, i32 %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %147, i64 %149
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %156, i64 %158
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %162, 1
  %164 = call i32* @PQprepare(i32 %146, i8* %127, i8* %155, i64 %163, i32* null)
  store i32* %164, i32** %16, align 8
  %165 = load i32*, i32** %16, align 8
  %166 = call i64 @PQresultStatus(i32* %165)
  %167 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %138
  %170 = load i32, i32* @stderr, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @PQerrorMessage(i32 %173)
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %169, %138
  %177 = load i32*, i32** %16, align 8
  %178 = call i32 @PQclear(i32* %177)
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %176, %137
  %180 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %19, align 4
  switch i32 %181, label %251 [
    i32 0, label %182
    i32 4, label %183
  ]

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182, %179
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %116

186:                                              ; preds = %116
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 1, i32* %193, align 4
  br label %194

194:                                              ; preds = %186, %91
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = call i32 @getQueryParams(%struct.TYPE_10__* %195, %struct.TYPE_9__* %196, i8** %98)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @preparedStatementName(i8* %95, i64 %200, i32 %203)
  %205 = load i64, i64* @debug, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %194
  %208 = load i32, i32* @stderr, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %211, i8* %95)
  br label %213

213:                                              ; preds = %207, %194
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %219, 1
  %221 = call i32 @PQsendQueryPrepared(i32 %216, i8* %95, i64 %220, i8** %98, i32* null, i32* null, i32 0)
  store i32 %221, i32* %6, align 4
  %222 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %222)
  br label %224

223:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %223, %213
  br label %225

225:                                              ; preds = %224, %76
  br label %226

226:                                              ; preds = %225, %42
  %227 = load i32, i32* %6, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %226
  %230 = load i64, i64* @debug, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load i32, i32* @stderr, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i8**, i8*** %238, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 (i32, i8*, ...) @fprintf(i32 %233, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %236, i8* %241)
  br label %243

243:                                              ; preds = %232, %229
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  store i32 0, i32* %3, align 4
  br label %249

248:                                              ; preds = %226
  store i32 1, i32* %3, align 4
  br label %249

249:                                              ; preds = %248, %243
  %250 = load i32, i32* %3, align 4
  ret i32 %250

251:                                              ; preds = %179
  unreachable
}

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i8* @assignVariables(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @PQsendQuery(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getQueryParams(%struct.TYPE_10__*, %struct.TYPE_9__*, i8**) #1

declare dso_local i32 @PQsendQueryParams(i32, i8*, i64, i32*, i8**, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @preparedStatementName(i8*, i64, i32) #1

declare dso_local i32* @PQprepare(i32, i8*, i8*, i64, i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @PQerrorMessage(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQsendQueryPrepared(i32, i8*, i64, i8**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
