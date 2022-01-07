; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_open_log_files.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_open_log_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.open_log_files.dfile = private unnamed_addr constant [12 x i8] c"nfsddbg.log\00", align 1
@__const.open_log_files.efile = private unnamed_addr constant [12 x i8] c"nfsderr.log\00", align 1
@__const.open_log_files.mode = private unnamed_addr constant [2 x i8] c"w\00", align 1
@g_debug_level = common dso_local global i64 0, align 8
@dlog_file = common dso_local global i32* null, align 8
@SERVICE_STOPPED = common dso_local global i32 0, align 4
@elog_file = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_log_files() #0 {
  %1 = alloca [12 x i8], align 1
  %2 = alloca [12 x i8], align 1
  %3 = alloca [2 x i8], align 1
  %4 = bitcast [12 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.open_log_files.dfile, i32 0, i32 0), i64 12, i1 false)
  %5 = bitcast [12 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.open_log_files.efile, i32 0, i32 0), i64 12, i1 false)
  %6 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.open_log_files.mode, i32 0, i32 0), i64 2, i1 false)
  %7 = load i64, i64* @g_debug_level, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %0
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %12 = call i8* @fopen(i8* %10, i8* %11)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @dlog_file, align 8
  %14 = load i32*, i32** @dlog_file, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load i32, i32* @SERVICE_STOPPED, align 4
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 @ReportStatusToSCMgr(i32 %17, i32 %18, i32 0)
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @exit(i32 %20) #4
  unreachable

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22, %0
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %26 = call i8* @fopen(i8* %24, i8* %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @elog_file, align 8
  %28 = load i32*, i32** @elog_file, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @SERVICE_STOPPED, align 4
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @ReportStatusToSCMgr(i32 %31, i32 %32, i32 0)
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 @exit(i32 %34) #4
  unreachable

36:                                               ; preds = %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @fopen(i8*, i8*) #2

declare dso_local i32 @ReportStatusToSCMgr(i32, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
