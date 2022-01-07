; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_log.c_mp_msg_av_log_callback.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_log.c_mp_msg_av_log_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i8*)* }
%struct.mp_log = type { i32 }

@log_lock = common dso_local global i32 0, align 4
@log_mpv_instance = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@log_print_prefix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @mp_msg_av_log_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_msg_av_log_callback(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_log*, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__**
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi %struct.TYPE_2__* [ %20, %17 ], [ null, %21 ]
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @av_log_level_to_mp_level(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = call i32 @pthread_mutex_lock(i32* @log_lock)
  %27 = load i32, i32* @log_mpv_instance, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = call i32 @pthread_mutex_unlock(i32* @log_lock)
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @vfprintf(i32 %31, i8* %32, i32 %33)
  br label %95

35:                                               ; preds = %22
  %36 = load i8*, i8** %5, align 8
  %37 = call %struct.mp_log* @get_av_log(i8* %36)
  store %struct.mp_log* %37, %struct.mp_log** %11, align 8
  %38 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @mp_msg_test(%struct.mp_log* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %35
  %43 = bitcast [4096 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 4096, i1 false)
  store i32 0, i32* %13, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8* (i8*)*, i8* (i8*)** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* %49(i8* %50)
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i8* [ %51, %46 ], [ null, %52 ]
  store i8* %54, i8** %14, align 8
  %55 = load i32, i32* @log_print_prefix, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @snprintf(i8* %61, i32 4096, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %57, %53
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  %74 = zext i1 %73 to i32
  store i32 %74, i32* @log_print_prefix, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @MPMAX(i32 %75, i32 0)
  %77 = call i32 @MPMIN(i32 %76, i32 4096)
  store i32 %77, i32* %13, align 4
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 4096, %83
  %85 = trunc i64 %84 to i32
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @vsnprintf(i8* %81, i32 %85, i8* %86, i32 %87)
  %89 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %90 = load i32, i32* %10, align 4
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %92 = call i32 @mp_msg(%struct.mp_log* %89, i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %64, %35
  %94 = call i32 @pthread_mutex_unlock(i32* @log_lock)
  br label %95

95:                                               ; preds = %93, %29
  ret void
}

declare dso_local i32 @av_log_level_to_mp_level(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

declare dso_local %struct.mp_log* @get_av_log(i8*) #1

declare dso_local i64 @mp_msg_test(%struct.mp_log*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
