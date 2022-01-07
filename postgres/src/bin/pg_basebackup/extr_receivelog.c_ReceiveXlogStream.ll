; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ReceiveXlogStream.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ReceiveXlogStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32, %struct.TYPE_7__*, i64 (i32, i32, i32)*, i32*, i64 }
%struct.TYPE_7__ = type { i64 (i32*, i32)*, i32 (...)* }

@reportFlushPosition = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SLOT \22%s\22 \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IDENTIFY_SYSTEM\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"could not send replication command \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"system identifier does not match between base backup and streaming connection\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"starting timeline %u is not present in the server\00", align 1
@lastFlushPosition = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"TIMELINE_HISTORY %u\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"TIMELINE_HISTORY\00", align 1
@.str.8 = private unnamed_addr constant [107 x i8] c"unexpected response to TIMELINE_HISTORY command: got %d rows and %d fields, expected %d rows and %d fields\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"START_REPLICATION %s%X/%X TIMELINE %u\00", align 1
@PGRES_COPY_BOTH = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"START_REPLICATION\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"server reported unexpected next timeline %u, following timeline %u\00", align 1
@.str.12 = private unnamed_addr constant [95 x i8] c"server stopped streaming timeline %u at %X/%X, but reported next timeline %u to begin at %X/%X\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"unexpected termination of replication stream: %s\00", align 1
@WalSegSz = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [52 x i8] c"replication stream was terminated before stop point\00", align 1
@walfile = common dso_local global i32* null, align 8
@CLOSE_NO_RENAME = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %s\00", align 1
@current_walfile_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReceiveXlogStream(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @CheckServerVersionForStreaming(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %332

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  store i32 1, i32* @reportFlushPosition, align 4
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %36

27:                                               ; preds = %16
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* @reportFlushPosition, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* @reportFlushPosition, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %35, align 16
  br label %36

36:                                               ; preds = %34, %21
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %100

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @PQexec(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @PQresultStatus(i32* %44)
  %46 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @PQerrorMessage(i32* %49)
  %51 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @PQclear(i32* %52)
  store i32 0, i32* %3, align 4
  br label %332

54:                                               ; preds = %41
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @PQntuples(i32* %55)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @PQnfields(i32* %59)
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @PQntuples(i32* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @PQnfields(i32* %65)
  %67 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %66, i32 1, i32 3)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @PQclear(i32* %68)
  store i32 0, i32* %3, align 4
  br label %332

70:                                               ; preds = %58
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @PQgetvalue(i32* %74, i32 0, i32 0)
  %76 = call i64 @strcmp(i32* %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @PQclear(i32* %80)
  store i32 0, i32* %3, align 4
  br label %332

82:                                               ; preds = %70
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @PQgetvalue(i32* %86, i32 0, i32 1)
  %88 = call i64 @atoi(i32 %87)
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @PQclear(i32* %95)
  store i32 0, i32* %3, align 4
  br label %332

97:                                               ; preds = %82
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @PQclear(i32* %98)
  br label %100

100:                                              ; preds = %97, %36
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* @lastFlushPosition, align 4
  br label %104

104:                                              ; preds = %100, %264
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = call i32 @existsTimeLineHistoryFile(%struct.TYPE_8__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %151, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %109, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %117 = call i32* @PQexec(i32* %115, i8* %116)
  store i32* %117, i32** %8, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i64 @PQresultStatus(i32* %118)
  %120 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %108
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @PQresultErrorMessage(i32* %123)
  %125 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @PQclear(i32* %126)
  store i32 0, i32* %3, align 4
  br label %332

128:                                              ; preds = %108
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @PQnfields(i32* %129)
  %131 = icmp ne i32 %130, 2
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @PQntuples(i32* %133)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %142

136:                                              ; preds = %132, %128
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @PQntuples(i32* %137)
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @PQnfields(i32* %139)
  %141 = call i32 @pg_log_warning(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.8, i64 0, i64 0), i32 %138, i32 %140, i32 1, i32 2)
  br label %142

142:                                              ; preds = %136, %132
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @PQgetvalue(i32* %144, i32 0, i32 0)
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @PQgetvalue(i32* %146, i32 0, i32 1)
  %148 = call i32 @writeTimeLineHistoryFile(%struct.TYPE_8__* %143, i32 %145, i32 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @PQclear(i32* %149)
  br label %151

151:                                              ; preds = %142, %104
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  %154 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i64 %154(i32 %157, i32 %161, i32 0)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %332

165:                                              ; preds = %151
  %166 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = ashr i32 %170, 32
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %166, i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %167, i32 %171, i32 %174, i64 %177)
  %179 = load i32*, i32** %4, align 8
  %180 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %181 = call i32* @PQexec(i32* %179, i8* %180)
  store i32* %181, i32** %8, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = call i64 @PQresultStatus(i32* %182)
  %184 = load i64, i64* @PGRES_COPY_BOTH, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %165
  %187 = load i32*, i32** %8, align 8
  %188 = call i32 @PQresultErrorMessage(i32* %187)
  %189 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %188)
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @PQclear(i32* %190)
  store i32 0, i32* %3, align 4
  br label %332

192:                                              ; preds = %165
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 @PQclear(i32* %193)
  %195 = load i32*, i32** %4, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = call i32* @HandleCopyStream(i32* %195, %struct.TYPE_8__* %196, i32* %9)
  store i32* %197, i32** %8, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %309

201:                                              ; preds = %192
  %202 = load i32*, i32** %8, align 8
  %203 = call i64 @PQresultStatus(i32* %202)
  %204 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %282

206:                                              ; preds = %201
  %207 = load i32*, i32** %8, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = call i32 @ReadEndOfStreamingResult(i32* %207, i32* %209, i32* %10)
  store i32 %210, i32* %11, align 4
  %211 = load i32*, i32** %8, align 8
  %212 = call i32 @PQclear(i32* %211)
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %206
  br label %309

216:                                              ; preds = %206
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp sle i64 %218, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i32 %224, i64 %227)
  br label %309

229:                                              ; preds = %216
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = icmp sgt i32 %232, %233
  br i1 %234, label %235, label %251

235:                                              ; preds = %229
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = ashr i32 %239, 32
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = ashr i32 %245, 32
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.12, i64 0, i64 0), i64 %238, i32 %240, i32 %241, i32 %242, i32 %246, i32 %249)
  br label %309

251:                                              ; preds = %229
  %252 = load i32*, i32** %4, align 8
  %253 = call i32* @PQgetResult(i32* %252)
  store i32* %253, i32** %8, align 8
  %254 = load i32*, i32** %8, align 8
  %255 = call i64 @PQresultStatus(i32* %254)
  %256 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load i32*, i32** %8, align 8
  %260 = call i32 @PQresultErrorMessage(i32* %259)
  %261 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %260)
  %262 = load i32*, i32** %8, align 8
  %263 = call i32 @PQclear(i32* %262)
  br label %309

264:                                              ; preds = %251
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @PQclear(i32* %265)
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  store i64 %268, i64* %270, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @WalSegSz, align 4
  %278 = call i32 @XLogSegmentOffset(i32 %276, i32 %277)
  %279 = sub nsw i32 %273, %278
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  br label %104

282:                                              ; preds = %201
  %283 = load i32*, i32** %8, align 8
  %284 = call i64 @PQresultStatus(i32* %283)
  %285 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %282
  %288 = load i32*, i32** %8, align 8
  %289 = call i32 @PQclear(i32* %288)
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 4
  %292 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = call i64 %292(i32 %293, i32 %297, i32 0)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %287
  store i32 1, i32* %3, align 4
  br label %332

301:                                              ; preds = %287
  %302 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  br label %309

303:                                              ; preds = %282
  %304 = load i32*, i32** %8, align 8
  %305 = call i32 @PQresultErrorMessage(i32* %304)
  %306 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %305)
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @PQclear(i32* %307)
  br label %309

309:                                              ; preds = %303, %301, %258, %235, %223, %215, %200
  %310 = load i32*, i32** @walfile, align 8
  %311 = icmp ne i32* %310, null
  br i1 %311, label %312, label %331

312:                                              ; preds = %309
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i64 (i32*, i32)*, i64 (i32*, i32)** %316, align 8
  %318 = load i32*, i32** @walfile, align 8
  %319 = load i32, i32* @CLOSE_NO_RENAME, align 4
  %320 = call i64 %317(i32* %318, i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %312
  %323 = load i32, i32* @current_walfile_name, align 4
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  %328 = load i32 (...)*, i32 (...)** %327, align 8
  %329 = call i32 (...) %328()
  %330 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %323, i32 %329)
  br label %331

331:                                              ; preds = %322, %312, %309
  store i32* null, i32** @walfile, align 8
  store i32 0, i32* %3, align 4
  br label %332

332:                                              ; preds = %331, %300, %186, %164, %122, %90, %78, %62, %48, %15
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i32 @CheckServerVersionForStreaming(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @existsTimeLineHistoryFile(%struct.TYPE_8__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @pg_log_warning(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @writeTimeLineHistoryFile(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @HandleCopyStream(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ReadEndOfStreamingResult(i32*, i32*, i32*) #1

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i32 @XLogSegmentOffset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
