; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_subprocess-posix.c_mp_subprocess.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_subprocess-posix.c_mp_subprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cancel = type { i32 }
%struct.pollfd = type { i32, i64, i32 }

@__const.mp_subprocess.p_stdout = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@__const.mp_subprocess.p_stderr = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@environ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"killed\00", align 1
@MP_SUBPROCESS_EKILLED_BY_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_subprocess(i8** %0, %struct.mp_cancel* %1, i8* %2, i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)* %4, i8** %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca %struct.mp_cancel*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*, i64)*, align 8
  %11 = alloca i32 (i8*, i8*, i64)*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32*], align 16
  %23 = alloca [2 x i32 (i8*, i8*, i64)*], align 16
  %24 = alloca [3 x %struct.pollfd], align 16
  %25 = alloca i32, align 4
  %26 = alloca [4096 x i8], align 16
  %27 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.mp_cancel* %1, %struct.mp_cancel** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)** %10, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %11, align 8
  store i8** %5, i8*** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %28 = bitcast [2 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast ([2 x i32]* @__const.mp_subprocess.p_stdout to i8*), i64 8, i1 false)
  %29 = bitcast [2 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast ([2 x i32]* @__const.mp_subprocess.p_stderr to i8*), i64 8, i1 false)
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %30 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %31 = icmp ne i32 (i8*, i8*, i64)* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %6
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %34 = call i64 @mp_make_cloexec_pipe(i32* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %240

37:                                               ; preds = %32, %6
  %38 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  %39 = icmp ne i32 (i8*, i8*, i64)* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %42 = call i64 @mp_make_cloexec_pipe(i32* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %240

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = load i32, i32* @O_CLOEXEC, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %240

53:                                               ; preds = %45
  %54 = call i64 @posix_spawn_file_actions_init(i32* %13)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %240

57:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i64 @posix_spawn_file_actions_adddup2(i32* %13, i32 %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %240

62:                                               ; preds = %57
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @posix_spawn_file_actions_adddup2(i32* %13, i32 %68, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %240

72:                                               ; preds = %66, %62
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @posix_spawn_file_actions_adddup2(i32* %13, i32 %78, i32 2)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %240

82:                                               ; preds = %76, %72
  %83 = load i8**, i8*** %7, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* @environ, align 4
  %88 = call i64 @posix_spawnp(i32* %19, i8* %85, i32* %13, i32* null, i8** %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 -1, i32* %19, align 4
  br label %240

91:                                               ; preds = %82
  store i32 1, i32* %20, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SAFE_CLOSE(i32 %93)
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SAFE_CLOSE(i32 %96)
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @SAFE_CLOSE(i32 %98)
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %22, i64 0, i64 0
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32* %101, i32** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 1
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32* %103, i32** %102, align 8
  %104 = getelementptr inbounds [2 x i32 (i8*, i8*, i64)*], [2 x i32 (i8*, i8*, i64)*]* %23, i64 0, i64 0
  %105 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  store i32 (i8*, i8*, i64)* %105, i32 (i8*, i8*, i64)** %104, align 8
  %106 = getelementptr inbounds i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %104, i64 1
  %107 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  store i32 (i8*, i8*, i64)* %107, i32 (i8*, i8*, i64)** %106, align 8
  br label %108

108:                                              ; preds = %226, %91
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 0
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ true, %108 ], [ %115, %112 ]
  br i1 %117, label %118, label %227

118:                                              ; preds = %116
  %119 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %24, i64 0, i64 0
  %120 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x i32*], [2 x i32*]* %22, i64 0, i64 0
  %122 = load i32*, i32** %121, align 16
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %120, align 8
  %124 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %119, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %119, i32 0, i32 2
  %126 = load i32, i32* @POLLIN, align 4
  store i32 %126, i32* %125, align 8
  %127 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %119, i64 1
  %128 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %127, i32 0, i32 0
  %129 = getelementptr inbounds [2 x i32*], [2 x i32*]* %22, i64 0, i64 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %128, align 8
  %132 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %127, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %127, i32 0, i32 2
  %134 = load i32, i32* @POLLIN, align 4
  store i32 %134, i32* %133, align 8
  %135 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %127, i64 1
  %136 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %135, i32 0, i32 0
  %137 = load %struct.mp_cancel*, %struct.mp_cancel** %8, align 8
  %138 = icmp ne %struct.mp_cancel* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %118
  %140 = load %struct.mp_cancel*, %struct.mp_cancel** %8, align 8
  %141 = call i32 @mp_cancel_get_fd(%struct.mp_cancel* %140)
  br label %143

142:                                              ; preds = %118
  br label %143

143:                                              ; preds = %142, %139
  %144 = phi i32 [ %141, %139 ], [ -1, %142 ]
  store i32 %144, i32* %136, align 8
  %145 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %135, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %135, i32 0, i32 2
  %147 = load i32, i32* @POLLIN, align 4
  store i32 %147, i32* %146, align 8
  %148 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %24, i64 0, i64 0
  %149 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %24, i64 0, i64 0
  %150 = call i32 @MP_ARRAY_SIZE(%struct.pollfd* %149)
  %151 = call i64 @sparse_poll(%struct.pollfd* %148, i32 %150, i32 -1)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %143
  %154 = load i64, i64* @errno, align 8
  %155 = load i64, i64* @EINTR, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %227

158:                                              ; preds = %153, %143
  store i32 0, i32* %25, align 4
  br label %159

159:                                              ; preds = %214, %158
  %160 = load i32, i32* %25, align 4
  %161 = icmp slt i32 %160, 2
  br i1 %161, label %162, label %217

162:                                              ; preds = %159
  %163 = load i32, i32* %25, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %24, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %213

169:                                              ; preds = %162
  %170 = load i32, i32* %25, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [2 x i32*], [2 x i32*]* %22, i64 0, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds [4096 x i8], [4096 x i8]* %26, i64 0, i64 0
  %176 = call i64 @read(i32 %174, i8* %175, i32 4096)
  store i64 %176, i64* %27, align 8
  %177 = load i64, i64* %27, align 8
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %169
  %180 = load i64, i64* @errno, align 8
  %181 = load i64, i64* @EINTR, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %214

184:                                              ; preds = %179, %169
  %185 = load i64, i64* %27, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %184
  %188 = load i32, i32* %25, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x i32 (i8*, i8*, i64)*], [2 x i32 (i8*, i8*, i64)*]* %23, i64 0, i64 %189
  %191 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %190, align 8
  %192 = icmp ne i32 (i8*, i8*, i64)* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load i32, i32* %25, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [2 x i32 (i8*, i8*, i64)*], [2 x i32 (i8*, i8*, i64)*]* %23, i64 0, i64 %195
  %197 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %196, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds [4096 x i8], [4096 x i8]* %26, i64 0, i64 0
  %200 = load i64, i64* %27, align 8
  %201 = call i32 %197(i8* %198, i8* %199, i64 %200)
  br label %202

202:                                              ; preds = %193, %187, %184
  %203 = load i64, i64* %27, align 8
  %204 = icmp sle i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [2 x i32*], [2 x i32*]* %22, i64 0, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @SAFE_CLOSE(i32 %210)
  br label %212

212:                                              ; preds = %205, %202
  br label %213

213:                                              ; preds = %212, %162
  br label %214

214:                                              ; preds = %213, %183
  %215 = load i32, i32* %25, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %25, align 4
  br label %159

217:                                              ; preds = %159
  %218 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %24, i64 0, i64 2
  %219 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @SIGKILL, align 4
  %225 = call i32 @kill(i32 %223, i32 %224)
  store i32 1, i32* %21, align 4
  br label %227

226:                                              ; preds = %217
  br label %108

227:                                              ; preds = %222, %157, %116
  br label %228

228:                                              ; preds = %238, %227
  %229 = load i32, i32* %19, align 4
  %230 = call i64 @waitpid(i32 %229, i32* %15, i32 0)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i64, i64* @errno, align 8
  %234 = load i64, i64* @EINTR, align 8
  %235 = icmp eq i64 %233, %234
  br label %236

236:                                              ; preds = %232, %228
  %237 = phi i1 [ false, %228 ], [ %235, %232 ]
  br i1 %237, label %238, label %239

238:                                              ; preds = %236
  br label %228

239:                                              ; preds = %236
  br label %240

240:                                              ; preds = %239, %90, %81, %71, %61, %56, %52, %44, %36
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = call i32 @posix_spawn_file_actions_destroy(i32* %13)
  br label %245

245:                                              ; preds = %243, %240
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @SAFE_CLOSE(i32 %247)
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @SAFE_CLOSE(i32 %250)
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @SAFE_CLOSE(i32 %253)
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @SAFE_CLOSE(i32 %256)
  %258 = load i32, i32* %18, align 4
  %259 = call i32 @SAFE_CLOSE(i32 %258)
  %260 = load i32, i32* %20, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %245
  %263 = load i32, i32* %15, align 4
  %264 = call i64 @WIFEXITED(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @WEXITSTATUS(i32 %267)
  %269 = icmp eq i32 %268, 127
  br i1 %269, label %270, label %272

270:                                              ; preds = %266, %245
  %271 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %271, align 8
  store i32 -1, i32* %15, align 4
  br label %290

272:                                              ; preds = %266, %262
  %273 = load i32, i32* %15, align 4
  %274 = call i64 @WIFEXITED(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i8**, i8*** %12, align 8
  store i8* null, i8** %277, align 8
  %278 = load i32, i32* %15, align 4
  %279 = call i32 @WEXITSTATUS(i32 %278)
  store i32 %279, i32* %15, align 4
  br label %289

280:                                              ; preds = %272
  %281 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %281, align 8
  %282 = load i32, i32* %21, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32, i32* @MP_SUBPROCESS_EKILLED_BY_US, align 4
  br label %287

286:                                              ; preds = %280
  br label %287

287:                                              ; preds = %286, %284
  %288 = phi i32 [ %285, %284 ], [ -1, %286 ]
  store i32 %288, i32* %15, align 4
  br label %289

289:                                              ; preds = %287, %276
  br label %290

290:                                              ; preds = %289, %270
  %291 = load i32, i32* %15, align 4
  ret i32 %291
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @mp_make_cloexec_pipe(i32*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @posix_spawn_file_actions_init(i32*) #2

declare dso_local i64 @posix_spawn_file_actions_adddup2(i32*, i32, i32) #2

declare dso_local i64 @posix_spawnp(i32*, i8*, i32*, i32*, i8**, i32) #2

declare dso_local i32 @SAFE_CLOSE(i32) #2

declare dso_local i32 @mp_cancel_get_fd(%struct.mp_cancel*) #2

declare dso_local i64 @sparse_poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @MP_ARRAY_SIZE(%struct.pollfd*) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i64 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @posix_spawn_file_actions_destroy(i32*) #2

declare dso_local i64 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
