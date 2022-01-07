; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_kill_all.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_kill_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.fpm_child_s*, %struct.fpm_worker_pool_s* }
%struct.fpm_child_s = type { i64, %struct.TYPE_4__*, %struct.fpm_child_s* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[pool %s] sending signal %d %s to child %d\00", align 1
@fpm_signal_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%d child(ren) still alive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_pctl_kill_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_worker_pool_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpm_child_s*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %7, %struct.fpm_worker_pool_s** %3, align 8
  br label %8

8:                                                ; preds = %64, %1
  %9 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %10 = icmp ne %struct.fpm_worker_pool_s* %9, null
  br i1 %10, label %11, label %68

11:                                               ; preds = %8
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %13 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %12, i32 0, i32 0
  %14 = load %struct.fpm_child_s*, %struct.fpm_child_s** %13, align 8
  store %struct.fpm_child_s* %14, %struct.fpm_child_s** %5, align 8
  br label %15

15:                                               ; preds = %59, %11
  %16 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %17 = icmp ne %struct.fpm_child_s* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %15
  %19 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %20 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @kill(i64 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @ZLOG_DEBUG, align 4
  %25 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %26 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i8**, i8*** @fpm_signal_names, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %18
  %40 = load i8**, i8*** @fpm_signal_names, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %18
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i8* [ %44, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %49 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i32, i8*, i32, ...) @zlog(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i8* %47, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %46
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.fpm_child_s*, %struct.fpm_child_s** %5, align 8
  %61 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %60, i32 0, i32 2
  %62 = load %struct.fpm_child_s*, %struct.fpm_child_s** %61, align 8
  store %struct.fpm_child_s* %62, %struct.fpm_child_s** %5, align 8
  br label %15

63:                                               ; preds = %15
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %3, align 8
  %66 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %65, i32 0, i32 1
  %67 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %66, align 8
  store %struct.fpm_worker_pool_s* %67, %struct.fpm_worker_pool_s** %3, align 8
  br label %8

68:                                               ; preds = %8
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @ZLOG_DEBUG, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i32, i8*, i32, ...) @zlog(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @zlog(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
