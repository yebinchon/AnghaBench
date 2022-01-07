; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_request.c_fpm_request_end.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_request.c_fpm_request_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_proc_s = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, %struct.timeval, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.timeval = type { i32 }

@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to acquire proc scoreboard\00", align 1
@FPM_REQUEST_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_request_end() #0 {
  %1 = alloca %struct.fpm_scoreboard_proc_s*, align 8
  %2 = alloca %struct.timeval, align 4
  %3 = alloca i64, align 8
  %4 = call i64 @zend_memory_peak_usage(i32 1)
  store i64 %4, i64* %3, align 8
  %5 = call i32 @fpm_clock_get(%struct.timeval* %2)
  %6 = call %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_acquire(i32* null, i32 -1, i32 0)
  store %struct.fpm_scoreboard_proc_s* %6, %struct.fpm_scoreboard_proc_s** %1, align 8
  %7 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %8 = icmp eq %struct.fpm_scoreboard_proc_s* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @ZLOG_WARNING, align 4
  %11 = call i32 @zlog(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %31

12:                                               ; preds = %0
  %13 = load i32, i32* @FPM_REQUEST_FINISHED, align 4
  %14 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %15 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %17 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %16, i32 0, i32 5
  %18 = bitcast %struct.timeval* %17 to i8*
  %19 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %21 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %20, i32 0, i32 4
  %22 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %23 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %22, i32 0, i32 6
  %24 = call i32 @timersub(%struct.timeval* %2, i32* %21, i32* %23)
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %27 = getelementptr inbounds %struct.fpm_scoreboard_proc_s, %struct.fpm_scoreboard_proc_s* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.fpm_scoreboard_proc_s*, %struct.fpm_scoreboard_proc_s** %1, align 8
  %29 = call i32 @fpm_scoreboard_proc_release(%struct.fpm_scoreboard_proc_s* %28)
  %30 = call i32 (...) @fpm_stdio_flush_child()
  br label %31

31:                                               ; preds = %12, %9
  ret void
}

declare dso_local i64 @zend_memory_peak_usage(i32) #1

declare dso_local i32 @fpm_clock_get(%struct.timeval*) #1

declare dso_local %struct.fpm_scoreboard_proc_s* @fpm_scoreboard_proc_acquire(i32*, i32, i32) #1

declare dso_local i32 @zlog(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timersub(%struct.timeval*, i32*, i32*) #1

declare dso_local i32 @fpm_scoreboard_proc_release(%struct.fpm_scoreboard_proc_s*) #1

declare dso_local i32 @fpm_stdio_flush_child(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
