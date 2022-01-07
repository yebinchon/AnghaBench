; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_on_socket_accept.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_on_socket_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.fpm_event_s = type { i32 }
%struct.fpm_worker_pool_s = type { i64, i32, %struct.TYPE_3__*, %struct.fpm_child_s*, i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.fpm_child_s = type { %struct.fpm_child_s* }

@fpm_globals = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FPM_SCOREBOARD_ACTION_INC = common dso_local global i32 0, align 4
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"[pool %s] server reached max_children setting (%d), consider raising it\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"[pool %s] got accept without idle child available .... I forked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_pctl_on_socket_accept(%struct.fpm_event_s* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.fpm_event_s*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fpm_worker_pool_s*, align 8
  %8 = alloca %struct.fpm_child_s*, align 8
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.fpm_worker_pool_s*
  store %struct.fpm_worker_pool_s* %10, %struct.fpm_worker_pool_s** %7, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_globals, i32 0, i32 0), align 8
  %12 = call i64 (...) @getpid()
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %86

15:                                               ; preds = %3
  %16 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %17 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %19 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %22 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %20, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %15
  %28 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %29 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @FPM_SCOREBOARD_ACTION_INC, align 4
  %34 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %35 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fpm_scoreboard_update(i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 %33, i32 %36)
  %38 = load i32, i32* @ZLOG_WARNING, align 4
  %39 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %40 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %45 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @zlog(i32 %38, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %48)
  %50 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %51 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %32, %27
  br label %86

53:                                               ; preds = %15
  %54 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %55 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %54, i32 0, i32 3
  %56 = load %struct.fpm_child_s*, %struct.fpm_child_s** %55, align 8
  store %struct.fpm_child_s* %56, %struct.fpm_child_s** %8, align 8
  br label %57

57:                                               ; preds = %66, %53
  %58 = load %struct.fpm_child_s*, %struct.fpm_child_s** %8, align 8
  %59 = icmp ne %struct.fpm_child_s* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.fpm_child_s*, %struct.fpm_child_s** %8, align 8
  %62 = call i64 @fpm_request_is_idle(%struct.fpm_child_s* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %86

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.fpm_child_s*, %struct.fpm_child_s** %8, align 8
  %68 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %67, i32 0, i32 0
  %69 = load %struct.fpm_child_s*, %struct.fpm_child_s** %68, align 8
  store %struct.fpm_child_s* %69, %struct.fpm_child_s** %8, align 8
  br label %57

70:                                               ; preds = %57
  %71 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %72 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %74 = call i32 @fpm_children_make(%struct.fpm_worker_pool_s* %73, i32 1, i32 1, i32 1)
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_globals, i32 0, i32 1), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %86

78:                                               ; preds = %70
  %79 = load i32, i32* @ZLOG_DEBUG, align 4
  %80 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %81 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @zlog(i32 %79, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %78, %77, %64, %52, %14
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @fpm_scoreboard_update(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zlog(i32, i8*, i32, ...) #1

declare dso_local i64 @fpm_request_is_idle(%struct.fpm_child_s*) #1

declare dso_local i32 @fpm_children_make(%struct.fpm_worker_pool_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
