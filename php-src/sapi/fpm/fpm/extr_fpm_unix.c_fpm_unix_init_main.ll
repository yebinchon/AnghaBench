; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_unix.c_fpm_unix_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.fpm_worker_pool_s = type { %struct.fpm_worker_pool_s* }
%struct.rlimit = type { i8*, i8* }
%struct.timeval = type { i32, i32 }

@fpm_global_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [128 x i8] c"failed to set rlimit_core for this pool. Please check your system limits or decrease rlimit_files. setrlimit(RLIMIT_NOFILE, %d)\00", align 1
@RLIM_INFINITY = common dso_local global i64 0, align 8
@RLIMIT_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [125 x i8] c"failed to set rlimit_core for this pool. Please check your system limits or decrease rlimit_core. setrlimit(RLIMIT_CORE, %d)\00", align 1
@fpm_pagesize = common dso_local global i32 0, align 4
@fpm_globals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to create pipe\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to daemonize\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"The calling process is waiting for the master process to ping via fd=%d\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"failed to select\00", align 1
@FPM_EXIT_SOFTWARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to read from pipe\00", align 1
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"no data have been read from pipe\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"I received a valid acknowledge from the master process, I can exit without error\00", align 1
@FPM_CLEANUP_PARENT_EXIT = common dso_local global i32 0, align 4
@FPM_EXIT_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"The master process returned an error !\00", align 1
@.str.10 = private unnamed_addr constant [85 x i8] c"the master process didn't send back its status (via the pipe to the calling process)\00", align 1
@PRIO_PROCESS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"Unable to set priority for the master process\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [72 x i8] c"'process.priority' directive is ignored when FPM is not running as root\00", align 1
@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_unix_init_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit, align 8
  %5 = alloca %struct.rlimit, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 (...) @geteuid()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 3), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 3), align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @RLIMIT_NOFILE, align 4
  %23 = call i64 @setrlimit(i32 %22, %struct.rlimit* %4)
  %24 = icmp sgt i64 0, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @ZLOG_SYSERROR, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 3), align 8
  %28 = call i32 (i32, i8*, ...) @zlog(i32 %26, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i32 -1, i32* %1, align 4
  br label %191

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* @RLIM_INFINITY, align 8
  %38 = inttoptr i64 %37 to i8*
  br label %43

39:                                               ; preds = %33
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i8* [ %38, %36 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @RLIMIT_CORE, align 4
  %48 = call i64 @setrlimit(i32 %47, %struct.rlimit* %5)
  %49 = icmp sgt i64 0, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @ZLOG_SYSERROR, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %53 = call i32 (i32, i8*, ...) @zlog(i32 %51, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 -1, i32* %1, align 4
  br label %191

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %30
  %56 = call i32 (...) @getpagesize()
  store i32 %56, i32* @fpm_pagesize, align 4
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 2), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %150

59:                                               ; preds = %55
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  %61 = call i32 @pipe(i32* %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @ZLOG_SYSERROR, align 4
  %65 = call i32 (i32, i8*, ...) @zlog(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %191

66:                                               ; preds = %59
  %67 = call i32 (...) @fork()
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  switch i32 %68, label %77 [
    i32 -1, label %69
    i32 0, label %72
  ]

69:                                               ; preds = %66
  %70 = load i32, i32* @ZLOG_SYSERROR, align 4
  %71 = call i32 (i32, i8*, ...) @zlog(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %191

72:                                               ; preds = %66
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  br label %149

77:                                               ; preds = %66
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @close(i32 %80)
  %82 = call i32 @FD_ZERO(i32* %7)
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @FD_SET(i32 %85, i32* %7)
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 10, i32* %87, align 4
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* @ZLOG_DEBUG, align 4
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @zlog(i32 %89, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i32 @select(i32 %97, i32* %7, i32* null, i32* null, %struct.timeval* %6)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %77
  %102 = load i32, i32* @ZLOG_SYSERROR, align 4
  %103 = call i32 (i32, i8*, ...) @zlog(i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @FPM_EXIT_SOFTWARE, align 4
  %105 = call i32 @exit(i32 %104) #3
  unreachable

106:                                              ; preds = %77
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %144

109:                                              ; preds = %106
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 1), align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @read(i32 %112, i32* %10, i32 4)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, i32* @ZLOG_SYSERROR, align 4
  %118 = call i32 (i32, i8*, ...) @zlog(i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* @FPM_EXIT_SOFTWARE, align 4
  %120 = call i32 @exit(i32 %119) #3
  unreachable

121:                                              ; preds = %109
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* @ZLOG_ERROR, align 4
  %126 = call i32 (i32, i8*, ...) @zlog(i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %127 = load i32, i32* @FPM_EXIT_SOFTWARE, align 4
  %128 = call i32 @exit(i32 %127) #3
  unreachable

129:                                              ; preds = %121
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* @ZLOG_DEBUG, align 4
  %134 = call i32 (i32, i8*, ...) @zlog(i32 %133, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* @FPM_CLEANUP_PARENT_EXIT, align 4
  %136 = call i32 @fpm_cleanups_run(i32 %135)
  %137 = load i32, i32* @FPM_EXIT_OK, align 4
  %138 = call i32 @exit(i32 %137) #3
  unreachable

139:                                              ; preds = %129
  %140 = load i32, i32* @ZLOG_DEBUG, align 4
  %141 = call i32 (i32, i8*, ...) @zlog(i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i32, i32* @FPM_EXIT_SOFTWARE, align 4
  %143 = call i32 @exit(i32 %142) #3
  unreachable

144:                                              ; preds = %106
  %145 = load i32, i32* @ZLOG_ERROR, align 4
  %146 = call i32 (i32, i8*, ...) @zlog(i32 %145, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0))
  %147 = load i32, i32* @FPM_EXIT_SOFTWARE, align 4
  %148 = call i32 @exit(i32 %147) #3
  unreachable

149:                                              ; preds = %72
  br label %150

150:                                              ; preds = %149, %55
  %151 = call i32 (...) @setsid()
  %152 = call i64 (...) @fpm_clock_init()
  %153 = icmp sgt i64 0, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 -1, i32* %1, align 4
  br label %191

155:                                              ; preds = %150
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 1), align 4
  %157 = icmp ne i32 %156, 64
  br i1 %157, label %158, label %174

158:                                              ; preds = %155
  %159 = load i32, i32* %3, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load i32, i32* @PRIO_PROCESS, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 1), align 4
  %164 = call i64 @setpriority(i32 %162, i32 0, i32 %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @ZLOG_SYSERROR, align 4
  %168 = call i32 (i32, i8*, ...) @zlog(i32 %167, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %191

169:                                              ; preds = %161
  br label %173

170:                                              ; preds = %158
  %171 = load i32, i32* @ZLOG_NOTICE, align 4
  %172 = call i32 (i32, i8*, ...) @zlog(i32 %171, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %169
  br label %174

174:                                              ; preds = %173, %155
  %175 = call i32 (...) @getpid()
  store i32 %175, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 8
  %176 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %176, %struct.fpm_worker_pool_s** %2, align 8
  br label %177

177:                                              ; preds = %186, %174
  %178 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %179 = icmp ne %struct.fpm_worker_pool_s* %178, null
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %182 = call i64 @fpm_unix_conf_wp(%struct.fpm_worker_pool_s* %181)
  %183 = icmp sgt i64 0, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 -1, i32* %1, align 4
  br label %191

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %188 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %187, i32 0, i32 0
  %189 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %188, align 8
  store %struct.fpm_worker_pool_s* %189, %struct.fpm_worker_pool_s** %2, align 8
  br label %177

190:                                              ; preds = %177
  store i32 0, i32* %1, align 4
  br label %191

191:                                              ; preds = %190, %184, %166, %154, %69, %63, %50, %25
  %192 = load i32, i32* %1, align 4
  ret i32 %192
}

declare dso_local i32 @geteuid(...) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @fpm_cleanups_run(i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @fpm_clock_init(...) #1

declare dso_local i64 @setpriority(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @fpm_unix_conf_wp(%struct.fpm_worker_pool_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
