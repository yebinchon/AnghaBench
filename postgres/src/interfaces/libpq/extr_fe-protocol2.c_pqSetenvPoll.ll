; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqSetenvPoll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqSetenvPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i8*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8* }

@CONNECTION_BAD = common dso_local global i64 0, align 8
@PGRES_POLLING_FAILED = common dso_local global i32 0, align 4
@PGRES_POLLING_READING = common dso_local global i32 0, align 4
@PGRES_POLLING_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"invalid setenv state %c, probably indicative of memory corruption\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SET client_encoding = DEFAULT\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"SET client_encoding = '%.60s'\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SET %s = DEFAULT\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SET %s = '%.60s'\00", align 1
@PGRES_COMMAND_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"begin; select version(); end\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"PostgreSQL \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"server_version\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"begin; select pg_catalog.pg_client_encoding(); end\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"select pg_client_encoding()\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"PGCLIENTENCODING\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"SQL_ASCII\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"invalid state %c, probably indicative of memory corruption\0A\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqSetenvPoll(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CONNECTION_BAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %1
  %23 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  store i32 %23, i32* %2, align 4
  br label %369

24:                                               ; preds = %16
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %43 [
    i32 135, label %28
    i32 132, label %28
    i32 130, label %28
    i32 128, label %28
    i32 136, label %40
    i32 133, label %40
    i32 131, label %40
    i32 129, label %40
    i32 134, label %41
  ]

28:                                               ; preds = %24, %24, %24, %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i32 @pqReadData(%struct.TYPE_10__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %365

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %38, i32* %2, align 4
  br label %369

39:                                               ; preds = %34
  br label %51

40:                                               ; preds = %24, %24, %24, %24
  br label %51

41:                                               ; preds = %24
  %42 = load i32, i32* @PGRES_POLLING_OK, align 4
  store i32 %42, i32* %2, align 4
  br label %369

43:                                               ; preds = %24
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = call i32 @libpq_gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @printfPQExpBuffer(i32* %45, i32 %46, i32 %49)
  br label %365

51:                                               ; preds = %40, %39
  br label %52

52:                                               ; preds = %364, %304, %222, %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %356 [
    i32 136, label %56
    i32 133, label %86
    i32 135, label %141
    i32 132, label %167
    i32 131, label %197
    i32 130, label %206
    i32 129, label %266
    i32 128, label %288
  ]

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @pg_strcasecmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %73

69:                                               ; preds = %62
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %76 = call i32 @PQsendQuery(%struct.TYPE_10__* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %365

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32 135, i32* %81, align 8
  br label %85

82:                                               ; preds = %56
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 133, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %364

86:                                               ; preds = %52
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %137

93:                                               ; preds = %86
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @getenv(i8* %98)
  store i8* %99, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %131

101:                                              ; preds = %93
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @pg_strcasecmp(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  br label %122

113:                                              ; preds = %101
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %113, %105
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %125 = call i32 @PQsendQuery(%struct.TYPE_10__* %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  br label %365

128:                                              ; preds = %122
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i32 132, i32* %130, align 8
  br label %136

131:                                              ; preds = %93
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 1
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %133, align 8
  br label %136

136:                                              ; preds = %131, %128
  br label %140

137:                                              ; preds = %86
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i32 131, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %136
  br label %364

141:                                              ; preds = %52
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = call i32 @PQisBusy(%struct.TYPE_10__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %146, i32* %2, align 4
  br label %369

147:                                              ; preds = %141
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = call i32* @PQgetResult(%struct.TYPE_10__* %148)
  store i32* %149, i32** %4, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @PQresultStatus(i32* %153)
  %155 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @PQclear(i32* %158)
  br label %365

160:                                              ; preds = %152
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @PQclear(i32* %161)
  br label %166

163:                                              ; preds = %147
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  store i32 133, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  br label %364

167:                                              ; preds = %52
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = call i32 @PQisBusy(%struct.TYPE_10__* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %172, i32* %2, align 4
  br label %369

173:                                              ; preds = %167
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %175 = call i32* @PQgetResult(%struct.TYPE_10__* %174)
  store i32* %175, i32** %4, align 8
  %176 = load i32*, i32** %4, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @PQresultStatus(i32* %179)
  %181 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @PQclear(i32* %184)
  br label %365

186:                                              ; preds = %178
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @PQclear(i32* %187)
  br label %196

189:                                              ; preds = %173
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 1
  store %struct.TYPE_9__* %193, %struct.TYPE_9__** %191, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32 133, i32* %195, align 8
  br label %196

196:                                              ; preds = %189, %186
  br label %364

197:                                              ; preds = %52
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %199 = call i32 @PQsendQuery(%struct.TYPE_10__* %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  br label %365

202:                                              ; preds = %197
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i32 130, i32* %204, align 8
  %205 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %205, i32* %2, align 4
  br label %369

206:                                              ; preds = %52
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = call i32 @PQisBusy(%struct.TYPE_10__* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %211, i32* %2, align 4
  br label %369

212:                                              ; preds = %206
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = call i32* @PQgetResult(%struct.TYPE_10__* %213)
  store i32* %214, i32** %4, align 8
  %215 = load i32*, i32** %4, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %262

217:                                              ; preds = %212
  %218 = load i32*, i32** %4, align 8
  %219 = call i32 @PQresultStatus(i32* %218)
  %220 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @PQclear(i32* %223)
  br label %52

225:                                              ; preds = %217
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @PQresultStatus(i32* %226)
  %228 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %225
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 @PQntuples(i32* %231)
  %233 = icmp ne i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %230, %225
  %235 = load i32*, i32** %4, align 8
  %236 = call i32 @PQclear(i32* %235)
  br label %365

237:                                              ; preds = %230
  %238 = load i32*, i32** %4, align 8
  %239 = call i8* @PQgetvalue(i32* %238, i32 0, i32 0)
  store i8* %239, i8** %10, align 8
  %240 = load i8*, i8** %10, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %259

242:                                              ; preds = %237
  %243 = load i8*, i8** %10, align 8
  %244 = call i32 @strncmp(i8* %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %242
  %247 = load i8*, i8** %10, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 11
  store i8* %248, i8** %10, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = call i8* @strchr(i8* %249, i8 signext 32)
  store i8* %250, i8** %11, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %246
  %254 = load i8*, i8** %11, align 8
  store i8 0, i8* %254, align 1
  br label %255

255:                                              ; preds = %253, %246
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = call i32 @pqSaveParameterStatus(%struct.TYPE_10__* %256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %255, %242, %237
  %260 = load i32*, i32** %4, align 8
  %261 = call i32 @PQclear(i32* %260)
  br label %265

262:                                              ; preds = %212
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  store i32 129, i32* %264, align 8
  br label %265

265:                                              ; preds = %262, %259
  br label %364

266:                                              ; preds = %52
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = icmp sge i32 %269, 70300
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %274, 70400
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %278

277:                                              ; preds = %271, %266
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %278

278:                                              ; preds = %277, %276
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %280 = load i8*, i8** %12, align 8
  %281 = call i32 @PQsendQuery(%struct.TYPE_10__* %279, i8* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %278
  br label %365

284:                                              ; preds = %278
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  store i32 128, i32* %286, align 8
  %287 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %287, i32* %2, align 4
  br label %369

288:                                              ; preds = %52
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %290 = call i32 @PQisBusy(%struct.TYPE_10__* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* @PGRES_POLLING_READING, align 4
  store i32 %293, i32* %2, align 4
  br label %369

294:                                              ; preds = %288
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %296 = call i32* @PQgetResult(%struct.TYPE_10__* %295)
  store i32* %296, i32** %4, align 8
  %297 = load i32*, i32** %4, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %351

299:                                              ; preds = %294
  %300 = load i32*, i32** %4, align 8
  %301 = call i32 @PQresultStatus(i32* %300)
  %302 = load i32, i32* @PGRES_COMMAND_OK, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load i32*, i32** %4, align 8
  %306 = call i32 @PQclear(i32* %305)
  br label %52

307:                                              ; preds = %299
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @PQresultStatus(i32* %308)
  %310 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %331

312:                                              ; preds = %307
  %313 = load i32*, i32** %4, align 8
  %314 = call i32 @PQntuples(i32* %313)
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %331

316:                                              ; preds = %312
  %317 = load i32*, i32** %4, align 8
  %318 = call i8* @PQgetvalue(i32* %317, i32 0, i32 0)
  store i8* %318, i8** %13, align 8
  %319 = load i8*, i8** %13, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %330

321:                                              ; preds = %316
  %322 = load i8*, i8** %13, align 8
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %328 = load i8*, i8** %13, align 8
  %329 = call i32 @pqSaveParameterStatus(%struct.TYPE_10__* %327, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %328)
  br label %330

330:                                              ; preds = %326, %321, %316
  br label %348

331:                                              ; preds = %312, %307
  %332 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  store i8* %332, i8** %13, align 8
  %333 = load i8*, i8** %13, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %344

335:                                              ; preds = %331
  %336 = load i8*, i8** %13, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %335
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %342 = load i8*, i8** %13, align 8
  %343 = call i32 @pqSaveParameterStatus(%struct.TYPE_10__* %341, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %342)
  br label %347

344:                                              ; preds = %335, %331
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %346 = call i32 @pqSaveParameterStatus(%struct.TYPE_10__* %345, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %347

347:                                              ; preds = %344, %340
  br label %348

348:                                              ; preds = %347, %330
  %349 = load i32*, i32** %4, align 8
  %350 = call i32 @PQclear(i32* %349)
  br label %355

351:                                              ; preds = %294
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 1
  store i32 134, i32* %353, align 8
  %354 = load i32, i32* @PGRES_POLLING_OK, align 4
  store i32 %354, i32* %2, align 4
  br label %369

355:                                              ; preds = %348
  br label %364

356:                                              ; preds = %52
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 4
  %359 = call i32 @libpq_gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @printfPQExpBuffer(i32* %358, i32 %359, i32 %362)
  br label %365

364:                                              ; preds = %355, %265, %196, %166, %140, %85
  br label %52

365:                                              ; preds = %356, %283, %234, %201, %183, %157, %127, %78, %43, %33
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  store i32 134, i32* %367, align 8
  %368 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  store i32 %368, i32* %2, align 4
  br label %369

369:                                              ; preds = %365, %351, %292, %284, %210, %202, %171, %145, %41, %37, %22
  %370 = load i32, i32* %2, align 4
  ret i32 %370
}

declare dso_local i32 @pqReadData(%struct.TYPE_10__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @PQsendQuery(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @PQisBusy(%struct.TYPE_10__*) #1

declare dso_local i32* @PQgetResult(%struct.TYPE_10__*) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pqSaveParameterStatus(%struct.TYPE_10__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
