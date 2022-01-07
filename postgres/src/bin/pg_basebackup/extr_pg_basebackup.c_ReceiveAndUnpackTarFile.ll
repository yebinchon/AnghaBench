; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_ReceiveAndUnpackTarFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_basebackup.c_ReceiveAndUnpackTarFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@basedir = common dso_local global i8* null, align 8
@PGRES_COPY_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"could not get COPY data stream: %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not read COPY data: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid tar block header size: %d\00", align 1
@totaldone = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@pg_dir_create_mode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"/pg_wal\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"/pg_xlog\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"/archive_status\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"could not create directory \22%s\22: %m\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"could not set permissions on directory \22%s\22: %m\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"could not create symbolic link from \22%s\22 to \22%s\22: %m\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"unrecognized link indicator \22%c\22\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"could not set permissions on file \22%s\22: %m\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"could not write to file \22%s\22: %m\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"COPY stream ended before last file was finished\00", align 1
@writerecoveryconf = common dso_local global i64 0, align 8
@recoveryconfcontents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @ReceiveAndUnpackTarFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReceiveAndUnpackTarFile(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @MAXPGPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %14, align 8
  store i32* null, i32** %15, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @PQgetisnull(i32* %25, i32 %26, i32 0)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i8*, i8** @basedir, align 8
  %32 = trunc i64 %19 to i32
  %33 = call i32 @strlcpy(i8* %21, i8* %31, i32 %32)
  br label %41

34:                                               ; preds = %3
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @PQgetvalue(i32* %35, i32 %36, i32 1)
  %38 = call i8* @get_tablespace_mapping(i8* %37)
  %39 = trunc i64 %19 to i32
  %40 = call i32 @strlcpy(i8* %21, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @PQgetResult(i32* %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @PQresultStatus(i32* %44)
  %46 = load i64, i64* @PGRES_COPY_OUT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @PQerrorMessage(i32* %49)
  %51 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %245, %241, %212, %201, %184, %53
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @PQfreemem(i8* %59)
  store i8* null, i8** %14, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @PQgetCopyData(i32* %62, i8** %14, i32 0)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32*, i32** %15, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @fclose(i32* %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %246

73:                                               ; preds = %61
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %74, -2
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @PQerrorMessage(i32* %77)
  %79 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = call i32 @exit(i32 1) #4
  unreachable

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %15, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %205

85:                                               ; preds = %82
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 512
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = call i32 @exit(i32 1) #4
  unreachable

92:                                               ; preds = %85
  %93 = load i32, i32* @totaldone, align 4
  %94 = add nsw i32 %93, 512
  store i32 %94, i32* @totaldone, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 124
  %97 = call i32 @read_tar_number(i8* %96, i32 12)
  store i32 %97, i32* %11, align 4
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 100
  %100 = call i32 @read_tar_number(i8* %99, i32 8)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 511
  %103 = and i32 %102, -512
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %12, align 4
  %106 = trunc i64 %23 to i32
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @snprintf(i8* %24, i32 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %21, i8* %107)
  %109 = call i32 @strlen(i8* %24)
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %24, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 47
  br i1 %115, label %116, label %185

116:                                              ; preds = %92
  %117 = load i8*, i8** %14, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 156
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 53
  br i1 %121, label %122, label %154

122:                                              ; preds = %116
  %123 = call i32 @strlen(i8* %24)
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %24, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* @pg_dir_create_mode, align 4
  %128 = call i64 @mkdir(i8* %24, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %122
  %131 = call i64 @pg_str_endswith(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %130
  %134 = call i64 @pg_str_endswith(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = call i64 @pg_str_endswith(i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136, %133, %130
  %140 = load i64, i64* @errno, align 8
  %141 = load i64, i64* @EEXIST, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %139, %136
  %144 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %24)
  %145 = call i32 @exit(i32 1) #4
  unreachable

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %122
  %148 = load i32, i32* %17, align 4
  %149 = call i64 @chmod(i8* %24, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %24)
  br label %153

153:                                              ; preds = %151, %147
  br label %184

154:                                              ; preds = %116
  %155 = load i8*, i8** %14, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 156
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 50
  br i1 %159, label %160, label %176

160:                                              ; preds = %154
  %161 = call i32 @strlen(i8* %24)
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %24, i64 %163
  store i8 0, i8* %164, align 1
  %165 = load i8*, i8** %14, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 157
  %167 = call i8* @get_tablespace_mapping(i8* %166)
  store i8* %167, i8** %10, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = call i64 @symlink(i8* %168, i8* %24)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %160
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* %24, i8* %172)
  %174 = call i32 @exit(i32 1) #4
  unreachable

175:                                              ; preds = %160
  br label %183

176:                                              ; preds = %154
  %177 = load i8*, i8** %14, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 156
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %180)
  %182 = call i32 @exit(i32 1) #4
  unreachable

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %153
  br label %54

185:                                              ; preds = %92
  %186 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32* %186, i32** %15, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %24)
  %191 = call i32 @exit(i32 1) #4
  unreachable

192:                                              ; preds = %185
  %193 = load i32, i32* %17, align 4
  %194 = call i64 @chmod(i8* %24, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %24)
  br label %198

198:                                              ; preds = %196, %192
  %199 = load i32, i32* %11, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32*, i32** %15, align 8
  %203 = call i32 @fclose(i32* %202)
  store i32* null, i32** %15, align 8
  br label %54

204:                                              ; preds = %198
  br label %245

205:                                              ; preds = %82
  %206 = load i32, i32* %11, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i32*, i32** %15, align 8
  %214 = call i32 @fclose(i32* %213)
  store i32* null, i32** %15, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* @totaldone, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* @totaldone, align 4
  br label %54

218:                                              ; preds = %208, %205
  %219 = load i8*, i8** %14, align 8
  %220 = load i32, i32* %16, align 4
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @fwrite(i8* %219, i32 %220, i32 1, i32* %221)
  %223 = icmp ne i32 %222, 1
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* %24)
  %226 = call i32 @exit(i32 1) #4
  unreachable

227:                                              ; preds = %218
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* @totaldone, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* @totaldone, align 4
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @progress_report(i32 %231, i8* %24, i32 0)
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* %11, align 4
  %235 = sub nsw i32 %234, %233
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %227
  %239 = load i32, i32* %12, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32*, i32** %15, align 8
  %243 = call i32 @fclose(i32* %242)
  store i32* null, i32** %15, align 8
  br label %54

244:                                              ; preds = %238, %227
  br label %245

245:                                              ; preds = %244, %204
  br label %54

246:                                              ; preds = %72
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @progress_report(i32 %247, i8* %24, i32 1)
  %249 = load i32*, i32** %15, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %253 = call i32 @exit(i32 1) #4
  unreachable

254:                                              ; preds = %246
  %255 = load i8*, i8** %14, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i8*, i8** %14, align 8
  %259 = call i32 @PQfreemem(i8* %258)
  br label %260

260:                                              ; preds = %257, %254
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %260
  %264 = load i64, i64* @writerecoveryconf, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load i32*, i32** %4, align 8
  %268 = load i8*, i8** @basedir, align 8
  %269 = load i32, i32* @recoveryconfcontents, align 4
  %270 = call i32 @WriteRecoveryConfig(i32* %267, i8* %268, i32 %269)
  br label %271

271:                                              ; preds = %266, %263, %260
  %272 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %272)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @get_tablespace_mapping(i8*) #2

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #2

declare dso_local i32* @PQgetResult(i32*) #2

declare dso_local i64 @PQresultStatus(i32*) #2

declare dso_local i32 @pg_log_error(i8*, ...) #2

declare dso_local i32 @PQerrorMessage(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @PQfreemem(i8*) #2

declare dso_local i32 @PQgetCopyData(i32*, i8**, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @read_tar_number(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i64 @pg_str_endswith(i8*, i8*) #2

declare dso_local i64 @chmod(i8*, i32) #2

declare dso_local i64 @symlink(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @progress_report(i32, i8*, i32) #2

declare dso_local i32 @WriteRecoveryConfig(i32*, i8*, i32) #2

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
