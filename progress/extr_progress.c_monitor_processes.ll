; ModuleID = '/home/carl/AnghaBench/progress/extr_progress.c_monitor_processes.c'
source_filename = "/home/carl/AnghaBench/progress/extr_progress.c_monitor_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32*, i32*, %struct.TYPE_12__, %struct.TYPE_11__ }

@MAX_PIDS = common dso_local global i32 0, align 4
@MAX_FD_PER_PID = common dso_local global i32 0, align 4
@MAX_RESULTS = common dso_local global i32 0, align 4
@monitor_processes.first_pass = internal global i8 1, align 1
@flag_monitor = common dso_local global i64 0, align 8
@flag_monitor_continuous = common dso_local global i64 0, align 8
@proc_specifiq_name_cnt = common dso_local global i32 0, align 4
@proc_specifiq_name = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Found too much procs (max = %d)\0A\00", align 1
@proc_specifiq_pid = common dso_local global i32* null, align 8
@proc_specifiq_pid_cnt = common dso_local global i32 0, align 4
@proc_names_cnt = common dso_local global i32 0, align 4
@proc_names = common dso_local global i32* null, align 8
@flag_quiet = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"No such pid: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"No such command(s) running: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"No command currently running: \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"or wrong permissions.\0A\00", align 1
@flag_open_mode = common dso_local global i64 0, align 8
@PM_READ = common dso_local global i64 0, align 8
@PM_READWRITE = common dso_local global i64 0, align 8
@PM_WRITE = common dso_local global i64 0, align 8
@flag_throughput = common dso_local global i64 0, align 8
@throughput_wait_secs = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"[%5d] %s %s\0A\09%.1f%% (%s / %s)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %s/s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"No PID(s) currently monitored\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @monitor_processes(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca [64 x i8], align 16
  %18 = alloca float, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %26 = load i32, i32* @MAX_PIDS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %9, align 8
  %29 = alloca %struct.TYPE_11__, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  %30 = load i32, i32* @MAX_FD_PER_PID, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %33 = load i32, i32* @MAX_RESULTS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca %struct.TYPE_10__, i64 %34, align 16
  store i64 %34, i64* %19, align 8
  store i8 1, i8* %21, align 1
  store i32 0, i32* %4, align 4
  %36 = load i64, i64* @flag_monitor, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load i64, i64* @flag_monitor_continuous, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i8 0, i8* @monitor_processes.first_pass, align 1
  br label %42

42:                                               ; preds = %41, %38, %1
  %43 = load i32, i32* @proc_specifiq_name_cnt, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %42
  store i8 0, i8* %21, align 1
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @proc_specifiq_name_cnt, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i32*, i32** @proc_specifiq_name, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %57
  %59 = load i32, i32* @MAX_PIDS, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i64 @find_pids_by_binary_name(i32 %55, %struct.TYPE_11__* %58, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @MAX_PIDS, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %50
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* @MAX_PIDS, align 4
  %73 = call i32 (i32, i8*, ...) @nfprintf(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %615

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %46

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78, %42
  %80 = load i32*, i32** @proc_specifiq_pid, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %79
  store i8 0, i8* %21, align 1
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %109, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @proc_specifiq_pid_cnt, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %83
  %88 = load i32*, i32** @proc_specifiq_pid, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %94
  %96 = call i64 @find_pid_by_id(i32 %92, %struct.TYPE_11__* %95)
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MAX_PIDS, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %87
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* @MAX_PIDS, align 4
  %107 = call i32 (i32, i8*, ...) @nfprintf(i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %106)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %615

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %83

112:                                              ; preds = %83
  br label %113

113:                                              ; preds = %112, %79
  %114 = load i8, i8* %21, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %146, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @proc_names_cnt, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = load i32*, i32** @proc_names, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %128
  %130 = load i32, i32* @MAX_PIDS, align 4
  %131 = load i32, i32* %4, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i64 @find_pids_by_binary_name(i32 %126, %struct.TYPE_11__* %129, i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @MAX_PIDS, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %121
  %142 = load i32, i32* @stderr, align 4
  %143 = load i32, i32* @MAX_PIDS, align 4
  %144 = call i32 (i32, i8*, ...) @nfprintf(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %143)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %615

145:                                              ; preds = %121
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %117

149:                                              ; preds = %117
  br label %150

150:                                              ; preds = %149, %113
  %151 = load i32, i32* %4, align 4
  %152 = load i32*, i32** %3, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %240, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* @flag_quiet, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %615

159:                                              ; preds = %155
  %160 = load i64, i64* @flag_monitor, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* @flag_monitor_continuous, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %159
  %166 = call i32 (...) @clear()
  %167 = call i32 (...) @refresh()
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* @proc_specifiq_pid_cnt, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %168
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @nfprintf(i32 %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %174

174:                                              ; preds = %186, %171
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @proc_specifiq_pid_cnt, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i32, i32* @stderr, align 4
  %180 = load i32*, i32** @proc_specifiq_pid, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @nfprintf(i32 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %174

189:                                              ; preds = %174
  br label %190

190:                                              ; preds = %189, %168
  %191 = load i32, i32* @proc_specifiq_name_cnt, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %190
  %194 = load i32, i32* @stderr, align 4
  %195 = call i32 (i32, i8*, ...) @nfprintf(i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %208, %193
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @proc_specifiq_name_cnt, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %196
  %201 = load i32, i32* @stderr, align 4
  %202 = load i32*, i32** @proc_specifiq_name, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32, i8*, ...) @nfprintf(i32 %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %200
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %196

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %211, %190
  %213 = load i32*, i32** @proc_specifiq_pid, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %237, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* @proc_specifiq_name_cnt, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %237, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* @stderr, align 4
  %220 = call i32 (i32, i8*, ...) @nfprintf(i32 %219, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %233, %218
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @proc_names_cnt, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %221
  %226 = load i32, i32* @stderr, align 4
  %227 = load i32*, i32** @proc_names, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i8*, ...) @nfprintf(i32 %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %221

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236, %215, %212
  %238 = load i32, i32* @stderr, align 4
  %239 = call i32 (i32, i8*, ...) @nfprintf(i32 %238, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i8 0, i8* @monitor_processes.first_pass, align 1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %615

240:                                              ; preds = %150
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %345, %240
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %4, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %348

245:                                              ; preds = %241
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @MAX_FD_PER_PID, align 4
  %252 = call i32 @find_fd_for_pid(i32 %250, i32* %32, i32 %251)
  store i32 %252, i32* %5, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %8, align 4
  br label %253

253:                                              ; preds = %308, %245
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* %5, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %311

257:                                              ; preds = %253
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %32, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call signext i8 @get_fdinfo(i32 %262, i32 %266, %struct.TYPE_12__* %11)
  %268 = load i64, i64* @flag_open_mode, align 8
  %269 = load i64, i64* @PM_READ, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %282

271:                                              ; preds = %257
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @PM_READ, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @PM_READWRITE, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %308

282:                                              ; preds = %276, %271, %257
  %283 = load i64, i64* @flag_open_mode, align 8
  %284 = load i64, i64* @PM_WRITE, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %297

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @PM_WRITE, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @PM_READWRITE, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %308

297:                                              ; preds = %291, %286, %282
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* %14, align 8
  %301 = icmp sgt i64 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = bitcast %struct.TYPE_12__* %12 to i8*
  %304 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 8 %304, i64 56, i1 false)
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %14, align 8
  br label %307

307:                                              ; preds = %302, %297
  br label %308

308:                                              ; preds = %307, %296, %281
  %309 = load i32, i32* %8, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %8, align 4
  br label %253

311:                                              ; preds = %253
  %312 = load i64, i64* %14, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %311
  br label %345

315:                                              ; preds = %311
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 4
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %321
  %323 = bitcast %struct.TYPE_11__* %319 to i8*
  %324 = bitcast %struct.TYPE_11__* %322 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %323, i8* align 8 %324, i64 8, i1 false)
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 3
  %329 = bitcast %struct.TYPE_12__* %328 to i8*
  %330 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %329, i8* align 8 %330, i64 56, i1 false)
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 1
  store i32* null, i32** %334, align 8
  %335 = load i32, i32* %6, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 2
  store i32* null, i32** %338, align 8
  %339 = load i32, i32* %6, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  store i64 0, i64* %342, align 8
  %343 = load i32, i32* %6, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %6, align 4
  br label %345

345:                                              ; preds = %315, %314
  %346 = load i32, i32* %7, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %7, align 4
  br label %241

348:                                              ; preds = %241
  %349 = load i64, i64* @flag_throughput, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %348
  %352 = load i8, i8* @monitor_processes.first_pass, align 1
  %353 = icmp ne i8 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* @throughput_wait_secs, align 4
  %356 = mul nsw i32 1000000, %355
  %357 = call i32 @usleep(i32 %356)
  br label %358

358:                                              ; preds = %354, %351, %348
  %359 = load i64, i64* @flag_monitor, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %358
  %362 = load i64, i64* @flag_monitor_continuous, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %361, %358
  %365 = call i32 (...) @clear()
  br label %366

366:                                              ; preds = %364, %361
  %367 = load i32, i32* %6, align 4
  %368 = call i32 @copy_and_clean_results(%struct.TYPE_10__* %35, i32 %367, i32 1)
  store i32 0, i32* %7, align 4
  br label %369

369:                                              ; preds = %596, %366
  %370 = load i32, i32* %7, align 4
  %371 = load i32, i32* %6, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %599

373:                                              ; preds = %369
  %374 = load i64, i64* @flag_throughput, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %409

376:                                              ; preds = %373
  %377 = load i8, i8* @monitor_processes.first_pass, align 1
  %378 = icmp ne i8 %377, 0
  br i1 %378, label %409, label %379

379:                                              ; preds = %376
  %380 = load i32, i32* %7, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %7, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = call signext i8 @get_fdinfo(i32 %385, i32 %391, %struct.TYPE_12__* %11)
  store i8 %392, i8* %20, align 1
  %393 = load i8, i8* %20, align 1
  %394 = sext i8 %393 to i32
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %408

396:                                              ; preds = %379
  %397 = load i32, i32* %7, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  %404 = load i32, i32* %403, align 8
  %405 = call i64 @strcmp(i32 %402, i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %396
  store i8 0, i8* %20, align 1
  br label %408

408:                                              ; preds = %407, %396, %379
  br label %410

409:                                              ; preds = %376, %373
  store i8 0, i8* %20, align 1
  br label %410

410:                                              ; preds = %409, %408
  %411 = load i8, i8* %20, align 1
  %412 = icmp ne i8 %411, 0
  br i1 %412, label %447, label %413

413:                                              ; preds = %410
  %414 = load i32, i32* %7, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %421 = call i32 @format_size(i64 %419, i8* %420)
  %422 = load i32, i32* %7, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 3
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %429 = call i32 @format_size(i64 %427, i8* %428)
  %430 = load i32, i32* %7, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = sitofp i64 %435 to double
  %437 = fdiv double 1.000000e+02, %436
  %438 = load i32, i32* %7, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 3
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = sitofp i64 %443 to double
  %445 = fmul double %437, %444
  %446 = fptrunc double %445 to float
  store float %446, float* %18, align 4
  br label %465

447:                                              ; preds = %410
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %451 = call i32 @format_size(i64 %449, i8* %450)
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %455 = call i32 @format_size(i64 %453, i8* %454)
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = sitofp i64 %457 to double
  %459 = fdiv double 1.000000e+02, %458
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = sitofp i64 %461 to double
  %463 = fmul double %459, %462
  %464 = fptrunc double %463 to float
  store float %464, float* %18, align 4
  br label %465

465:                                              ; preds = %447, %413
  %466 = load i32, i32* %7, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 4
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %7, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i32 0, i32 4
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* %7, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 5
  %483 = load i32, i32* %482, align 8
  %484 = load float, float* %18, align 4
  %485 = fpext float %484 to double
  %486 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %487 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %488 = call i32 (i8*, ...) @nprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %471, i32 %477, i32 %483, double %485, i8* %486, i8* %487)
  %489 = load i64, i64* @flag_throughput, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %594

491:                                              ; preds = %465
  %492 = load i8, i8* %20, align 1
  %493 = sext i8 %492 to i32
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %594

495:                                              ; preds = %491
  %496 = load i8, i8* @monitor_processes.first_pass, align 1
  %497 = icmp ne i8 %496, 0
  br i1 %497, label %594, label %498

498:                                              ; preds = %495
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %500 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = load i32, i32* %7, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 3
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 4
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = sub nsw i64 %501, %508
  %510 = mul nsw i64 %509, 1000000
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = load i32, i32* %7, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 3
  %518 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %517, i32 0, i32 4
  %519 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = sub nsw i64 %513, %520
  %522 = add nsw i64 %510, %521
  store i64 %522, i64* %23, align 8
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %524 = load i64, i64* %523, align 8
  %525 = load i32, i32* %7, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 3
  %529 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %528, i32 0, i32 3
  %530 = load i64, i64* %529, align 8
  %531 = sub nsw i64 %524, %530
  store i64 %531, i64* %24, align 8
  %532 = load i32, i32* %7, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %534, i32 0, i32 1
  %536 = load i32, i32* %7, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 2
  %540 = load i32, i32* %7, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = load i64, i64* %24, align 8
  %546 = sitofp i64 %545 to double
  %547 = load i64, i64* %23, align 8
  %548 = sitofp i64 %547 to double
  %549 = fdiv double %548, 1.000000e+06
  %550 = fdiv double %546, %549
  %551 = fptosi double %550 to i64
  %552 = call i64 @add_to_hlist(i32** %535, i32** %539, i64 %544, i64 %551)
  %553 = load i32, i32* %7, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = add nsw i64 %557, %552
  store i64 %558, i64* %556, align 8
  %559 = load i32, i32* %7, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %7, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = call i64 @get_hlist_average(i32* %563, i64 %568)
  store i64 %569, i64* %25, align 8
  %570 = load i64, i64* %25, align 8
  %571 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %572 = call i32 @format_size(i64 %570, i8* %571)
  %573 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %574 = call i32 (i8*, ...) @nprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %573)
  %575 = load i64, i64* %25, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %593

577:                                              ; preds = %498
  %578 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %579 = load i64, i64* %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %581 = load i64, i64* %580, align 8
  %582 = sub nsw i64 %579, %581
  %583 = icmp sge i64 %582, 0
  br i1 %583, label %584, label %593

584:                                              ; preds = %577
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %586 = load i64, i64* %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %588 = load i64, i64* %587, align 8
  %589 = sub nsw i64 %586, %588
  %590 = load i64, i64* %25, align 8
  %591 = sdiv i64 %589, %590
  %592 = call i32 @print_eta(i64 %591)
  br label %593

593:                                              ; preds = %584, %577, %498
  br label %594

594:                                              ; preds = %593, %495, %491, %465
  %595 = call i32 (i8*, ...) @nprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %596

596:                                              ; preds = %594
  %597 = load i32, i32* %7, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %7, align 4
  br label %369

599:                                              ; preds = %369
  %600 = load i64, i64* @flag_monitor, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %605, label %602

602:                                              ; preds = %599
  %603 = load i64, i64* @flag_monitor_continuous, align 8
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %612

605:                                              ; preds = %602, %599
  %606 = load i32, i32* %6, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %605
  %609 = call i32 (i8*, ...) @nprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %610

610:                                              ; preds = %608, %605
  %611 = call i32 (...) @refresh()
  br label %612

612:                                              ; preds = %610, %602
  %613 = load i32, i32* %6, align 4
  %614 = call i32 @copy_and_clean_results(%struct.TYPE_10__* %35, i32 %613, i32 0)
  store i8 0, i8* @monitor_processes.first_pass, align 1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %615

615:                                              ; preds = %612, %237, %158, %141, %104, %70
  %616 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %616)
  %617 = load i32, i32* %2, align 4
  ret i32 %617
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @find_pids_by_binary_name(i32, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @nfprintf(i32, i8*, ...) #2

declare dso_local i64 @find_pid_by_id(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @clear(...) #2

declare dso_local i32 @refresh(...) #2

declare dso_local i32 @find_fd_for_pid(i32, i32*, i32) #2

declare dso_local signext i8 @get_fdinfo(i32, i32, %struct.TYPE_12__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @copy_and_clean_results(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i32 @format_size(i64, i8*) #2

declare dso_local i32 @nprintf(i8*, ...) #2

declare dso_local i64 @add_to_hlist(i32**, i32**, i64, i64) #2

declare dso_local i64 @get_hlist_average(i32*, i64) #2

declare dso_local i32 @print_eta(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
