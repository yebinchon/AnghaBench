; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_bury.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_bury.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.fpm_child_s = type { %struct.fpm_worker_pool_s*, i32, i32, i32 (%struct.fpm_child_s*)*, i64 }
%struct.fpm_worker_pool_s = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i8*, i64 }

@WNOHANG = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"with code %d\00", align 1
@FPM_EXIT_OK = common dso_local global i64 0, align 8
@ZLOG_WARNING = common dso_local global i32 0, align 4
@fpm_signal_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"on signal %d (%s%s)\00", align 1
@SIGQUIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"child %d stopped for tracing\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"[pool %s] child %d exited %s after %ld.%06d seconds from start\00", align 1
@.str.5 = private unnamed_addr constant [95 x i8] c"[pool %s] child %d has been killed by the process management after %ld.%06d seconds from start\00", align 1
@last_faults = common dso_local global i8** null, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@fault = common dso_local global i32 0, align 4
@fpm_global_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [72 x i8] c"failed processes threshold (%d in %d sec) is reached, initiating reload\00", align 1
@FPM_PCTL_STATE_RELOADING = common dso_local global i32 0, align 4
@FPM_PCTL_ACTION_SET = common dso_local global i32 0, align 4
@fpm_globals = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ZLOG_ALERT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [85 x i8] c"oops, unknown child (%d) exited %s. Please open a bug report (https://bugs.php.net).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_children_bury() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_child_s*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fpm_worker_pool_s*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  br label %15

15:                                               ; preds = %256, %113, %0
  %16 = load i32, i32* @WNOHANG, align 4
  %17 = load i32, i32* @WUNTRACED, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @waitpid(i32 -1, i32* %1, i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %257

21:                                               ; preds = %15
  %22 = load i32, i32* @ZLOG_NOTICE, align 4
  store i32 %22, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call %struct.fpm_child_s* @fpm_child_find(i32 %23)
  store %struct.fpm_child_s* %24, %struct.fpm_child_s** %3, align 8
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @WIFEXITED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @WEXITSTATUS(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %29, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %35 = icmp ne %struct.fpm_child_s* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %38 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %36, %28
  %43 = load i32, i32* %1, align 4
  %44 = call i64 @WEXITSTATUS(i32 %43)
  %45 = load i64, i64* @FPM_EXIT_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ZLOG_WARNING, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %42
  br label %116

50:                                               ; preds = %21
  %51 = load i32, i32* %1, align 4
  %52 = call i64 @WIFSIGNALED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  %55 = load i8**, i8*** @fpm_signal_names, align 8
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @WTERMSIG(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %64

64:                                               ; preds = %63, %54
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @WTERMSIG(i32 %66)
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %65, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* %68, i8* %69)
  %71 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %72 = icmp ne %struct.fpm_child_s* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %64
  %74 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %75 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @WTERMSIG(i32 %79)
  %81 = load i32, i32* @SIGQUIT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %78, %73, %64
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @WTERMSIG(i32 %85)
  %87 = load i32, i32* @SIGQUIT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @ZLOG_WARNING, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %84
  br label %115

92:                                               ; preds = %50
  %93 = load i32, i32* %1, align 4
  %94 = call i64 @WIFSTOPPED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load i32, i32* @ZLOG_NOTICE, align 4
  %98 = load i32, i32* %2, align 4
  %99 = call i32 (i32, i8*, i32, ...) @zlog(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %101 = icmp ne %struct.fpm_child_s* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %104 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %103, i32 0, i32 3
  %105 = load i32 (%struct.fpm_child_s*)*, i32 (%struct.fpm_child_s*)** %104, align 8
  %106 = icmp ne i32 (%struct.fpm_child_s*)* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %109 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %108, i32 0, i32 3
  %110 = load i32 (%struct.fpm_child_s*)*, i32 (%struct.fpm_child_s*)** %109, align 8
  %111 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %112 = call i32 %110(%struct.fpm_child_s* %111)
  br label %113

113:                                              ; preds = %107, %102, %96
  br label %15

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %114, %91
  br label %116

116:                                              ; preds = %115, %49
  %117 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %118 = icmp ne %struct.fpm_child_s* %117, null
  br i1 %118, label %119, label %251

119:                                              ; preds = %116
  %120 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %121 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %120, i32 0, i32 0
  %122 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %121, align 8
  store %struct.fpm_worker_pool_s* %122, %struct.fpm_worker_pool_s** %9, align 8
  %123 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %124 = call i32 @fpm_child_unlink(%struct.fpm_child_s* %123)
  %125 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %9, align 8
  %126 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %129 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @fpm_scoreboard_proc_free(i32 %127, i32 %130)
  %132 = call i32 @fpm_clock_get(%struct.timeval* %10)
  %133 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %134 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %133, i32 0, i32 1
  %135 = call i32 @timersub(%struct.timeval* %10, i32* %134, %struct.timeval* %11)
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %119
  %139 = call i32 (...) @fpm_pctl_can_spawn_children()
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @ZLOG_DEBUG, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %146 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %145, i32 0, i32 0
  %147 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %146, align 8
  %148 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %2, align 4
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %154 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 (i32, i8*, i32, ...) @zlog(i32 %144, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %152, i8* %153, i8* %155, i32 %158)
  br label %176

160:                                              ; preds = %119
  %161 = load i32, i32* @ZLOG_DEBUG, align 4
  %162 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %163 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %162, i32 0, i32 0
  %164 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %163, align 8
  %165 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %2, align 4
  %170 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 (i32, i8*, i32, ...) @zlog(i32 %161, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169, i8* %171, i32 %174)
  br label %176

176:                                              ; preds = %160, %143
  %177 = load %struct.fpm_child_s*, %struct.fpm_child_s** %3, align 8
  %178 = call i32 @fpm_child_close(%struct.fpm_child_s* %177, i32 1)
  %179 = call i32 (...) @fpm_pctl_child_exited()
  %180 = load i8**, i8*** @last_faults, align 8
  %181 = icmp ne i8** %180, null
  br i1 %181, label %182, label %240

182:                                              ; preds = %176
  %183 = load i32, i32* %1, align 4
  %184 = call i32 @WTERMSIG(i32 %183)
  %185 = load i32, i32* @SIGSEGV, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %1, align 4
  %189 = call i32 @WTERMSIG(i32 %188)
  %190 = load i32, i32* @SIGBUS, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %240

192:                                              ; preds = %187, %182
  %193 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  store i8* %194, i8** %12, align 8
  store i32 1, i32* %13, align 4
  %195 = load i8*, i8** %12, align 8
  %196 = load i8**, i8*** @last_faults, align 8
  %197 = load i32, i32* @fault, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* @fault, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8*, i8** %196, i64 %199
  store i8* %195, i8** %200, align 8
  %201 = load i32, i32* @fault, align 4
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 8
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  store i32 0, i32* @fault, align 4
  br label %205

205:                                              ; preds = %204, %192
  store i32 0, i32* %14, align 4
  br label %206

206:                                              ; preds = %225, %205
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 8
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %228

210:                                              ; preds = %206
  %211 = load i8*, i8** %12, align 8
  %212 = load i8**, i8*** @last_faults, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = ptrtoint i8* %211 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = inttoptr i64 %219 to i8*
  %221 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 1), align 8
  %222 = icmp ugt i8* %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %210
  store i32 0, i32* %13, align 4
  br label %228

224:                                              ; preds = %210
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %206

228:                                              ; preds = %223, %206
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load i32, i32* @ZLOG_WARNING, align 4
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 8
  %234 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 1), align 8
  %235 = call i32 (i32, i8*, i32, ...) @zlog(i32 %232, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %233, i8* %234)
  %236 = load i32, i32* @FPM_PCTL_STATE_RELOADING, align 4
  %237 = load i32, i32* @FPM_PCTL_ACTION_SET, align 4
  %238 = call i32 @fpm_pctl(i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %231, %228
  br label %240

240:                                              ; preds = %239, %187, %176
  %241 = load i32, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %9, align 8
  %245 = call i32 @fpm_children_make(%struct.fpm_worker_pool_s* %244, i32 1, i32 1, i32 0)
  %246 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpm_globals, i32 0, i32 0), align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  br label %257

249:                                              ; preds = %243
  br label %250

250:                                              ; preds = %249, %240
  br label %256

251:                                              ; preds = %116
  %252 = load i32, i32* @ZLOG_ALERT, align 4
  %253 = load i32, i32* %2, align 4
  %254 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %255 = call i32 (i32, i8*, i32, ...) @zlog(i32 %252, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i32 %253, i8* %254)
  br label %256

256:                                              ; preds = %251, %250
  br label %15

257:                                              ; preds = %248, %15
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local %struct.fpm_child_s* @fpm_child_find(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @zlog(i32, i8*, i32, ...) #1

declare dso_local i32 @fpm_child_unlink(%struct.fpm_child_s*) #1

declare dso_local i32 @fpm_scoreboard_proc_free(i32, i32) #1

declare dso_local i32 @fpm_clock_get(%struct.timeval*) #1

declare dso_local i32 @timersub(%struct.timeval*, i32*, %struct.timeval*) #1

declare dso_local i32 @fpm_pctl_can_spawn_children(...) #1

declare dso_local i32 @fpm_child_close(%struct.fpm_child_s*, i32) #1

declare dso_local i32 @fpm_pctl_child_exited(...) #1

declare dso_local i32 @fpm_pctl(i32, i32) #1

declare dso_local i32 @fpm_children_make(%struct.fpm_worker_pool_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
