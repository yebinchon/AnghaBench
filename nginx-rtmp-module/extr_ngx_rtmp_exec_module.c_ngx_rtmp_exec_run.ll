; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_run.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_15__, %struct.TYPE_18__, %struct.TYPE_16__, i32*, i32, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_21__ = type { %struct.TYPE_14__, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"exec: starting %s child '%V'\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"managed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"unmanaged\00", align 1
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"exec: already active '%V'\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"exec: pipe failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"exec: fcntl failed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"exec: fork failed\00", align 1
@_SC_OPEN_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"execvp error: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ngx_rtmp_exec_child_dead = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"exec: failed to add child control event\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"exec: child '%V' started pid=%i\00", align 1
@PR_SET_PDEATHSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @ngx_rtmp_exec_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_exec_run(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 12
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %14, align 8
  %19 = load i32, i32* @NGX_LOG_INFO, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 11
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %19, i32 %22, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %28, %struct.TYPE_14__* %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 -1, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 -1, i32* %33, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 11
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %99

38:                                               ; preds = %1
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = call i32 @ngx_log_debug1(i32 %44, i32 %47, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_14__* %49)
  %51 = load i32, i32* @NGX_OK, align 4
  store i32 %51, i32* %2, align 4
  br label %351

52:                                               ; preds = %38
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %54 = call i32 @pipe(i32* %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* @NGX_LOG_INFO, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ngx_errno, align 4
  %62 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %57, i32 %60, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @NGX_ERROR, align 4
  store i32 %63, i32* %2, align 4
  br label %351

64:                                               ; preds = %52
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @F_GETFD, align 4
  %68 = call i32 (i32, i32, ...) @fcntl(i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load i32, i32* @FD_CLOEXEC, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @F_SETFD, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i32, i32, ...) @fcntl(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %71, %64
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @close(i32 %86)
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load i32, i32* @NGX_LOG_INFO, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ngx_errno, align 4
  %96 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %91, i32 %94, i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @NGX_ERROR, align 4
  store i32 %97, i32* %2, align 4
  br label %351

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %1
  %100 = call i32 (...) @fork()
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  switch i32 %101, label %254 [
    i32 -1, label %102
    i32 0, label %126
  ]

102:                                              ; preds = %99
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @close(i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* @NGX_LOG_INFO, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ngx_errno, align 4
  %124 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %119, i32 %122, i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* @NGX_ERROR, align 4
  store i32 %125, i32* %2, align 4
  br label %351

126:                                              ; preds = %99
  %127 = load i32, i32* @_SC_OPEN_MAX, align 4
  %128 = call i32 @sysconf(i32 %127)
  store i32 %128, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %142, %126
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = load i32, i32* %4, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %142

139:                                              ; preds = %133
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @close(i32 %140)
  br label %142

142:                                              ; preds = %139, %138
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %129

145:                                              ; preds = %129
  %146 = load i32, i32* @O_RDWR, align 4
  %147 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @STDIN_FILENO, align 4
  %150 = call i32 @dup2(i32 %148, i32 %149)
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @STDOUT_FILENO, align 4
  %153 = call i32 @dup2(i32 %151, i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @STDERR_FILENO, align 4
  %156 = call i32 @dup2(i32 %154, i32 %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i8** @ngx_alloc(i32 %164, i32 %167)
  store i8** %168, i8*** %8, align 8
  %169 = load i8**, i8*** %8, align 8
  %170 = icmp eq i8** %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %145
  %172 = call i32 @exit(i32 1) #4
  unreachable

173:                                              ; preds = %145
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  store %struct.TYPE_19__* %177, %struct.TYPE_19__** %11, align 8
  %178 = load i8**, i8*** %8, align 8
  store i8** %178, i8*** %9, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to i8*
  %184 = load i8**, i8*** %9, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i32 1
  store i8** %185, i8*** %9, align 8
  store i8* %183, i8** %184, align 8
  store i32 0, i32* %13, align 4
  br label %186

186:                                              ; preds = %225, %173
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %187, %191
  br i1 %192, label %193, label %230

193:                                              ; preds = %186
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 8
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %200 = bitcast %struct.TYPE_19__* %12 to i8*
  %201 = bitcast %struct.TYPE_19__* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 8, i1 false)
  br label %214

202:                                              ; preds = %193
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 8
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @ngx_rtmp_eval(i32 %205, %struct.TYPE_19__* %206, i32* %209, %struct.TYPE_19__* %12, i32 %212)
  br label %214

214:                                              ; preds = %202, %198
  %215 = call i32 @ngx_rtmp_eval_streams(%struct.TYPE_19__* %12)
  %216 = load i32, i32* @NGX_DONE, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %225

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to i8*
  %223 = load i8**, i8*** %9, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i32 1
  store i8** %224, i8*** %9, align 8
  store i8* %222, i8** %223, align 8
  br label %225

225:                                              ; preds = %219, %218
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 1
  store %struct.TYPE_19__* %229, %struct.TYPE_19__** %11, align 8
  br label %186

230:                                              ; preds = %186
  %231 = load i8**, i8*** %9, align 8
  store i8* null, i8** %231, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to i8*
  %237 = load i8**, i8*** %8, align 8
  %238 = call i32 @execvp(i8* %236, i8** %237)
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %253

240:                                              ; preds = %230
  %241 = load i32, i32* @errno, align 4
  %242 = call i8* @strerror(i32 %241)
  store i8* %242, i8** %15, align 8
  %243 = load i32, i32* @STDERR_FILENO, align 4
  %244 = call i32 @ngx_write_fd(i32 %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 14)
  %245 = load i32, i32* @STDERR_FILENO, align 4
  %246 = load i8*, i8** %15, align 8
  %247 = load i8*, i8** %15, align 8
  %248 = call i32 @strlen(i8* %247)
  %249 = call i32 @ngx_write_fd(i32 %245, i8* %246, i32 %248)
  %250 = load i32, i32* @STDERR_FILENO, align 4
  %251 = call i32 @ngx_write_fd(i32 %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %252 = call i32 @exit(i32 1) #4
  unreachable

253:                                              ; preds = %230
  br label %349

254:                                              ; preds = %99
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @close(i32 %260)
  br label %262

262:                                              ; preds = %258, %254
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, -1
  br i1 %265, label %266, label %340

266:                                              ; preds = %262
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  %269 = load i32, i32* %10, align 4
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 3
  %278 = load i32*, i32** %277, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %266
  %281 = load i32, i32* %10, align 4
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  store i32 %281, i32* %284, align 4
  br label %285

285:                                              ; preds = %280, %266
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 6
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  store i32 %288, i32* %291, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 6
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 3
  store %struct.TYPE_20__* %292, %struct.TYPE_20__** %295, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 2
  store %struct.TYPE_15__* %297, %struct.TYPE_15__** %300, align 8
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 7
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 6
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 1
  store %struct.TYPE_16__* %302, %struct.TYPE_16__** %305, align 8
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 6
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 2
  store %struct.TYPE_18__* %307, %struct.TYPE_18__** %310, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 6
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 7
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  store %struct.TYPE_18__* %312, %struct.TYPE_18__** %315, align 8
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 1
  store i32 %318, i32* %321, align 4
  %322 = load i32, i32* @ngx_rtmp_exec_child_dead, align 4
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 0
  store i32 %322, i32* %325, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 5
  %328 = load i32, i32* @NGX_READ_EVENT, align 4
  %329 = call i32 @ngx_add_event(%struct.TYPE_15__* %327, i32 %328, i32 0)
  %330 = load i32, i32* @NGX_OK, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %285
  %333 = load i32, i32* @NGX_LOG_INFO, align 4
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @ngx_errno, align 4
  %338 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %333, i32 %336, i32 %337, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %339

339:                                              ; preds = %332, %285
  br label %340

340:                                              ; preds = %339, %262
  %341 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 0
  %347 = load i32, i32* %10, align 4
  %348 = call i32 @ngx_log_debug2(i32 %341, i32 %344, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_14__* %346, i32 %347)
  br label %349

349:                                              ; preds = %340, %253
  %350 = load i32, i32* @NGX_OK, align 4
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %349, %118, %84, %56, %43
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i8** @ngx_alloc(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ngx_rtmp_eval(i32, %struct.TYPE_19__*, i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_rtmp_eval_streams(%struct.TYPE_19__*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @ngx_write_fd(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ngx_add_event(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
