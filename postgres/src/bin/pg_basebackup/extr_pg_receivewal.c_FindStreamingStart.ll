; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_receivewal.c_FindStreamingStart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_receivewal.c_FindStreamingStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@basedir = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@WalSegSz = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"segment file \22%s\22 has incorrect size %d, skipping\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"could not open compressed file \22%s\22: %m\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"could not seek in compressed file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"could not read compressed file \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"could not read compressed file \22%s\22: read %d of %zu\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"compressed segment file \22%s\22 has incorrect uncompressed size %d, skipping\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"could not read directory \22%s\22: %m\00", align 1
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @FindStreamingStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindStreamingStart(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load i8*, i8** @basedir, align 8
  %25 = call i32* @get_destination_dir(i8* %24)
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %225, %190, %103, %58, %1
  store i32 0, i32* @errno, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.dirent* @readdir(i32* %27)
  store %struct.dirent* %28, %struct.dirent** %5, align 8
  %29 = icmp ne %struct.dirent* %28, null
  br i1 %29, label %30, label %226

30:                                               ; preds = %26
  %31 = load %struct.dirent*, %struct.dirent** %5, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IsXLogFileName(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %62

37:                                               ; preds = %30
  %38 = load %struct.dirent*, %struct.dirent** %5, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IsPartialXLogFileName(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %61

44:                                               ; preds = %37
  %45 = load %struct.dirent*, %struct.dirent** %5, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IsCompressXLogFileName(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %60

51:                                               ; preds = %44
  %52 = load %struct.dirent*, %struct.dirent** %5, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IsPartialCompressXLogFileName(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %59

58:                                               ; preds = %51
  br label %26

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.dirent*, %struct.dirent** %5, align 8
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @WalSegSz, align 4
  %67 = call i32 @XLogFromFileName(i8* %65, i64* %9, i64* %10, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %107, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %107, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @MAXPGPATH, align 4
  %75 = mul nsw i32 %74, 2
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %14, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %15, align 8
  %79 = trunc i64 %76 to i32
  %80 = load i8*, i8** @basedir, align 8
  %81 = load %struct.dirent*, %struct.dirent** %5, align 8
  %82 = getelementptr inbounds %struct.dirent, %struct.dirent* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @snprintf(i8* %78, i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %83)
  %85 = call i64 @stat(i8* %78, %struct.stat* %13)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %89 = call i32 @exit(i32 1) #4
  unreachable

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @WalSegSz, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.dirent*, %struct.dirent** %5, align 8
  %97 = getelementptr inbounds %struct.dirent, %struct.dirent* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pg_log_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %98, i32 %100)
  store i32 2, i32* %16, align 4
  br label %103

102:                                              ; preds = %90
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %16, align 4
  switch i32 %105, label %257 [
    i32 0, label %106
    i32 2, label %26
  ]

106:                                              ; preds = %103
  br label %195

107:                                              ; preds = %70, %62
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %194, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %194

113:                                              ; preds = %110
  %114 = load i32, i32* @MAXPGPATH, align 4
  %115 = mul nsw i32 %114, 2
  %116 = zext i32 %115 to i64
  %117 = call i8* @llvm.stacksave()
  store i8* %117, i8** %20, align 8
  %118 = alloca i8, i64 %116, align 16
  store i64 %116, i64* %21, align 8
  %119 = trunc i64 %116 to i32
  %120 = load i8*, i8** @basedir, align 8
  %121 = load %struct.dirent*, %struct.dirent** %5, align 8
  %122 = getelementptr inbounds %struct.dirent, %struct.dirent* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @snprintf(i8* %118, i32 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %120, i8* %123)
  %125 = load i32, i32* @O_RDONLY, align 4
  %126 = load i32, i32* @PG_BINARY, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @open(i8* %118, i32 %127, i32 0)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %113
  %132 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  %133 = call i32 @exit(i32 1) #4
  unreachable

134:                                              ; preds = %113
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @SEEK_END, align 4
  %137 = call i64 @lseek(i32 %135, i32 -4, i32 %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  %141 = call i32 @exit(i32 1) #4
  unreachable

142:                                              ; preds = %134
  %143 = load i32, i32* %17, align 4
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %145 = call i32 @read(i32 %143, i8* %144, i32 4)
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ne i64 %147, 4
  br i1 %148, label %149, label %159

149:                                              ; preds = %142
  %150 = load i32, i32* %22, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %22, align 4
  %156 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %118, i32 %155, i64 4)
  br label %157

157:                                              ; preds = %154, %152
  %158 = call i32 @exit(i32 1) #4
  unreachable

159:                                              ; preds = %142
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @close(i32 %160)
  %162 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 3
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = shl i32 %164, 24
  %166 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = shl i32 %168, 16
  %170 = or i32 %165, %169
  %171 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = shl i32 %173, 8
  %175 = or i32 %170, %174
  %176 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = or i32 %175, %178
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* @WalSegSz, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %159
  %184 = load %struct.dirent*, %struct.dirent** %5, align 8
  %185 = getelementptr inbounds %struct.dirent, %struct.dirent* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @pg_log_warning(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i8* %186, i32 %187)
  store i32 2, i32* %16, align 4
  br label %190

189:                                              ; preds = %159
  store i32 0, i32* %16, align 4
  br label %190

190:                                              ; preds = %189, %183
  %191 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %16, align 4
  switch i32 %192, label %257 [
    i32 0, label %193
    i32 2, label %26
  ]

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %193, %110, %107
  br label %195

195:                                              ; preds = %194, %106
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %6, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %221, label %199

199:                                              ; preds = %195
  %200 = load i64, i64* %10, align 8
  %201 = load i64, i64* %6, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i64, i64* %9, align 8
  %205 = load i64, i64* %7, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %221, label %207

207:                                              ; preds = %203, %199
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* %6, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %225

211:                                              ; preds = %207
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218, %203, %195
  %222 = load i64, i64* %10, align 8
  store i64 %222, i64* %6, align 8
  %223 = load i64, i64* %9, align 8
  store i64 %223, i64* %7, align 8
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %221, %218, %215, %211, %207
  br label %26

226:                                              ; preds = %26
  %227 = load i32, i32* @errno, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i8*, i8** @basedir, align 8
  %231 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %230)
  %232 = call i32 @exit(i32 1) #4
  unreachable

233:                                              ; preds = %226
  %234 = load i32*, i32** %4, align 8
  %235 = load i8*, i8** @basedir, align 8
  %236 = call i32 @close_destination_dir(i32* %234, i8* %235)
  %237 = load i64, i64* %6, align 8
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %233
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i64, i64* %6, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %6, align 8
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i64, i64* %6, align 8
  %247 = load i32, i32* @WalSegSz, align 4
  %248 = load i32, i32* %23, align 4
  %249 = call i32 @XLogSegNoOffsetToRecPtr(i64 %246, i32 0, i32 %247, i32 %248)
  %250 = load i64, i64* %7, align 8
  %251 = load i64*, i64** %3, align 8
  store i64 %250, i64* %251, align 8
  %252 = load i32, i32* %23, align 4
  store i32 %252, i32* %2, align 4
  br label %255

253:                                              ; preds = %233
  %254 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %254, i32* %2, align 4
  br label %255

255:                                              ; preds = %253, %245
  %256 = load i32, i32* %2, align 4
  ret i32 %256

257:                                              ; preds = %190, %103
  unreachable
}

declare dso_local i32* @get_destination_dir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @IsXLogFileName(i8*) #1

declare dso_local i64 @IsPartialXLogFileName(i8*) #1

declare dso_local i64 @IsCompressXLogFileName(i8*) #1

declare dso_local i64 @IsPartialCompressXLogFileName(i8*) #1

declare dso_local i32 @XLogFromFileName(i8*, i64*, i64*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @pg_log_warning(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @close_destination_dir(i32*, i8*) #1

declare dso_local i32 @XLogSegNoOffsetToRecPtr(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
