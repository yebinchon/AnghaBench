; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_ReceiveTarFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_ReceiveTarFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@MINIMUM_VERSION_FOR_RECOVERY_GUC = common dso_local global i64 0, align 8
@basedir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/base.tar\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s/%s.tar\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1
@PGRES_COPY_OUT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"could not get COPY data stream: %s\00", align 1
@writerecoveryconf = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"postgresql.auto.conf\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"recovery.conf\00", align 1
@recoveryconfcontents = common dso_local global %struct.TYPE_2__* null, align 8
@pg_file_create_mode = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"standby.signal\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"could not read COPY data: %s\00", align 1
@totaldone = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@_O_BINARY = common dso_local global i32 0, align 4
@compresslevel = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @ReceiveTarFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReceiveTarFile(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [1024 x i8], align 16
  %23 = alloca [512 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [512 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [512 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %34 = load i32, i32* @MAXPGPATH, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %7, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @PQgetisnull(i32* %38, i32 %39, i32 0)
  store i32 %40, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @PQserverVersion(i32* %41)
  %43 = load i64, i64* @MINIMUM_VERSION_FOR_RECOVERY_GUC, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i8*, i8** @basedir, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** @stdout, align 8
  store i32* %54, i32** %10, align 8
  %55 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %61

56:                                               ; preds = %49
  %57 = trunc i64 %35 to i32
  %58 = load i8*, i8** @basedir, align 8
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %37, i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %60, i32** %10, align 8
  br label %61

61:                                               ; preds = %56, %53
  br label %70

62:                                               ; preds = %46
  %63 = trunc i64 %35 to i32
  %64 = load i8*, i8** @basedir, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i8* @PQgetvalue(i32* %65, i32 %66, i32 0)
  %68 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %37, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %67)
  %69 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %69, i32** %10, align 8
  br label %70

70:                                               ; preds = %62, %61
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %75 = call i32 @exit(i32 1) #4
  unreachable

76:                                               ; preds = %70
  %77 = load i32*, i32** %4, align 8
  %78 = call i32* @PQgetResult(i32* %77)
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @PQresultStatus(i32* %79)
  %81 = load i64, i64* @PGRES_COPY_OUT, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32*, i32** %4, align 8
  %85 = call i8* @PQerrorMessage(i32* %84)
  %86 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = call i32 @exit(i32 1) #4
  unreachable

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %375, %88
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @PQfreemem(i8* %94)
  store i8* null, i8** %9, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @PQgetCopyData(i32* %97, i8** %9, i32 0)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %180

101:                                              ; preds = %96
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %103 = call i32 @MemSet(i8* %102, i32 0, i32 1024)
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %165

106:                                              ; preds = %101
  %107 = load i64, i64* @writerecoveryconf, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %165

109:                                              ; preds = %106
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %152, label %115

115:                                              ; preds = %112, %109
  %116 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i64 0, i64 0
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @pg_file_create_mode, align 4
  %125 = call i32 @time(i32* null)
  %126 = call i32 @tarCreateHeader(i8* %116, i8* %120, i32* null, i32 %123, i32 %124, i32 2048, i32 1024, i32 %125)
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 511
  %131 = and i32 %130, -512
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %131, %134
  store i32 %135, i32* %24, align 4
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i64 0, i64 0
  %137 = call i32 @WRITE_TAR_DATA(i8* %136, i32 512)
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @WRITE_TAR_DATA(i8* %140, i32 %143)
  %145 = load i32, i32* %24, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %115
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %149 = load i32, i32* %24, align 4
  %150 = call i32 @WRITE_TAR_DATA(i8* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %115
  br label %152

152:                                              ; preds = %151, %112
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i64 0, i64 0
  %157 = load i32, i32* @pg_file_create_mode, align 4
  %158 = call i32 @time(i32* null)
  %159 = call i32 @tarCreateHeader(i8* %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 0, i32 %157, i32 2048, i32 1024, i32 %158)
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i64 0, i64 0
  %161 = call i32 @WRITE_TAR_DATA(i8* %160, i32 512)
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %163 = call i32 @WRITE_TAR_DATA(i8* %162, i32 511)
  br label %164

164:                                              ; preds = %155, %152
  br label %165

165:                                              ; preds = %164, %106, %101
  %166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %167 = call i32 @WRITE_TAR_DATA(i8* %166, i32 1024)
  %168 = load i8*, i8** @basedir, align 8
  %169 = call i64 @strcmp(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = load i32*, i32** %10, align 8
  %173 = call i64 @fclose(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  %177 = call i32 @exit(i32 1) #4
  unreachable

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %165
  br label %381

180:                                              ; preds = %96
  %181 = load i32, i32* %21, align 4
  %182 = icmp eq i32 %181, -2
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32*, i32** %4, align 8
  %185 = call i8* @PQerrorMessage(i32* %184)
  %186 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %185)
  %187 = call i32 @exit(i32 1) #4
  unreachable

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* @writerecoveryconf, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192, %189
  %196 = load i8*, i8** %9, align 8
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @WRITE_TAR_DATA(i8* %196, i32 %197)
  br label %375

199:                                              ; preds = %192
  %200 = load i32, i32* %21, align 4
  store i32 %200, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %201

201:                                              ; preds = %373, %199
  %202 = load i32, i32* %25, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %374

204:                                              ; preds = %201
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %298

207:                                              ; preds = %204
  %208 = load i64, i64* %19, align 8
  %209 = icmp ult i64 %208, 512
  br i1 %209, label %210, label %241

210:                                              ; preds = %207
  %211 = load i64, i64* %19, align 8
  %212 = sub i64 512, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %27, align 4
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %27, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = load i32, i32* %27, align 4
  br label %221

219:                                              ; preds = %210
  %220 = load i32, i32* %25, align 4
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %220, %219 ]
  store i32 %222, i32* %28, align 4
  %223 = load i64, i64* %19, align 8
  %224 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 %223
  %225 = load i8*, i8** %9, align 8
  %226 = load i32, i32* %26, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i32, i32* %28, align 4
  %230 = call i32 @memcpy(i8* %224, i8* %228, i32 %229)
  %231 = load i32, i32* %28, align 4
  %232 = load i32, i32* %25, align 4
  %233 = sub nsw i32 %232, %231
  store i32 %233, i32* %25, align 4
  %234 = load i32, i32* %28, align 4
  %235 = load i32, i32* %26, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %26, align 4
  %237 = load i32, i32* %28, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %19, align 8
  %240 = add i64 %239, %238
  store i64 %240, i64* %19, align 8
  br label %297

241:                                              ; preds = %207
  %242 = load i32, i32* %15, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  %248 = zext i1 %247 to i32
  store i32 %248, i32* %14, align 4
  %249 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %250 = call i64 @strcmp(i8* %249, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %251 = icmp eq i64 %250, 0
  %252 = zext i1 %251 to i32
  store i32 %252, i32* %16, align 4
  br label %258

253:                                              ; preds = %241
  %254 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %255 = call i64 @strcmp(i8* %254, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %256 = icmp eq i64 %255, 0
  %257 = zext i1 %256 to i32
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %253, %244
  %259 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 124
  %260 = call i32 @read_tar_number(i8* %259, i32 12)
  store i32 %260, i32* %20, align 4
  %261 = load i32, i32* %20, align 4
  %262 = add nsw i32 %261, 511
  %263 = and i32 %262, -512
  %264 = load i32, i32* %20, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* %18, align 4
  %266 = load i32, i32* %15, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %286

268:                                              ; preds = %258
  %269 = load i32, i32* %16, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %286

271:                                              ; preds = %268
  %272 = load i64, i64* @writerecoveryconf, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %271
  %275 = getelementptr inbounds [512 x i8], [512 x i8]* %29, i64 0, i64 0
  %276 = load i32, i32* %20, align 4
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %276, %279
  %281 = load i32, i32* @pg_file_create_mode, align 4
  %282 = call i32 @time(i32* null)
  %283 = call i32 @tarCreateHeader(i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %280, i32 %281, i32 2048, i32 1024, i32 %282)
  %284 = getelementptr inbounds [512 x i8], [512 x i8]* %29, i64 0, i64 0
  %285 = call i32 @WRITE_TAR_DATA(i8* %284, i32 512)
  br label %296

286:                                              ; preds = %271, %268, %258
  %287 = load i32, i32* %18, align 4
  %288 = load i32, i32* %20, align 4
  %289 = add nsw i32 %288, %287
  store i32 %289, i32* %20, align 4
  %290 = load i32, i32* %14, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %286
  %293 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %294 = call i32 @WRITE_TAR_DATA(i8* %293, i32 512)
  br label %295

295:                                              ; preds = %292, %286
  br label %296

296:                                              ; preds = %295, %274
  store i32 0, i32* %13, align 4
  br label %297

297:                                              ; preds = %296, %221
  br label %373

298:                                              ; preds = %204
  %299 = load i32, i32* %20, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %330

301:                                              ; preds = %298
  %302 = load i32, i32* %20, align 4
  %303 = load i32, i32* %25, align 4
  %304 = icmp sgt i32 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = load i32, i32* %25, align 4
  br label %309

307:                                              ; preds = %301
  %308 = load i32, i32* %20, align 4
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi i32 [ %306, %305 ], [ %308, %307 ]
  store i32 %310, i32* %30, align 4
  %311 = load i32, i32* %14, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %309
  %314 = load i8*, i8** %9, align 8
  %315 = load i32, i32* %26, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = load i32, i32* %30, align 4
  %319 = call i32 @WRITE_TAR_DATA(i8* %317, i32 %318)
  br label %320

320:                                              ; preds = %313, %309
  %321 = load i32, i32* %30, align 4
  %322 = load i32, i32* %25, align 4
  %323 = sub nsw i32 %322, %321
  store i32 %323, i32* %25, align 4
  %324 = load i32, i32* %30, align 4
  %325 = load i32, i32* %26, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %26, align 4
  %327 = load i32, i32* %30, align 4
  %328 = load i32, i32* %20, align 4
  %329 = sub nsw i32 %328, %327
  store i32 %329, i32* %20, align 4
  br label %372

330:                                              ; preds = %298
  %331 = load i32, i32* %15, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %370

333:                                              ; preds = %330
  %334 = load i32, i32* %16, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %370

336:                                              ; preds = %333
  %337 = load i64, i64* @writerecoveryconf, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %370

339:                                              ; preds = %336
  %340 = load i32, i32* %18, align 4
  %341 = sub nsw i32 512, %340
  %342 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %341, %344
  store i32 %345, i32* %32, align 4
  %346 = load i32, i32* %32, align 4
  %347 = add nsw i32 %346, 511
  %348 = and i32 %347, -512
  %349 = load i32, i32* %32, align 4
  %350 = sub nsw i32 %348, %349
  store i32 %350, i32* %31, align 4
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** @recoveryconfcontents, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @WRITE_TAR_DATA(i8* %353, i32 %356)
  %358 = load i32, i32* %31, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %339
  %361 = getelementptr inbounds [512 x i8], [512 x i8]* %33, i64 0, i64 0
  %362 = call i32 @MemSet(i8* %361, i32 0, i32 512)
  %363 = getelementptr inbounds [512 x i8], [512 x i8]* %33, i64 0, i64 0
  %364 = load i32, i32* %31, align 4
  %365 = call i32 @WRITE_TAR_DATA(i8* %363, i32 %364)
  br label %366

366:                                              ; preds = %360, %339
  store i32 0, i32* %16, align 4
  store i32 1, i32* %14, align 4
  %367 = load i32, i32* %18, align 4
  %368 = load i32, i32* %20, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %20, align 4
  store i32 1, i32* %17, align 4
  br label %371

370:                                              ; preds = %336, %333, %330
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  br label %371

371:                                              ; preds = %370, %366
  br label %372

372:                                              ; preds = %371, %320
  br label %373

373:                                              ; preds = %372, %297
  br label %201

374:                                              ; preds = %201
  br label %375

375:                                              ; preds = %374, %195
  %376 = load i32, i32* %21, align 4
  %377 = load i32, i32* @totaldone, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* @totaldone, align 4
  %379 = load i32, i32* %6, align 4
  %380 = call i32 @progress_report(i32 %379, i8* %37, i32 0)
  br label %89

381:                                              ; preds = %179
  %382 = load i32, i32* %6, align 4
  %383 = call i32 @progress_report(i32 %382, i8* %37, i32 1)
  %384 = load i8*, i8** %9, align 8
  %385 = icmp ne i8* %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = load i8*, i8** %9, align 8
  %388 = call i32 @PQfreemem(i8* %387)
  br label %389

389:                                              ; preds = %386, %381
  %390 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %390)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #2

declare dso_local i64 @PQserverVersion(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #2

declare dso_local i32 @pg_log_error(i8*, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @PQgetResult(i32*) #2

declare dso_local i64 @PQresultStatus(i32*) #2

declare dso_local i8* @PQerrorMessage(i32*) #2

declare dso_local i32 @PQfreemem(i8*) #2

declare dso_local i32 @PQgetCopyData(i32*, i8**, i32) #2

declare dso_local i32 @MemSet(i8*, i32, i32) #2

declare dso_local i32 @tarCreateHeader(i8*, i8*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @WRITE_TAR_DATA(i8*, i32) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @read_tar_number(i8*, i32) #2

declare dso_local i32 @progress_report(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
