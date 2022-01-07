; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-job.c_lwan_job_add.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-job.c_lwan_job_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32 (i8*)*, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@queue_mutex = common dso_local global i32 0, align 4
@jobs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't lock job mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_job_add(i32 (i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.job*, align 8
  store i32 (i8*)* %0, i32 (i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32 (i8*)*, i32 (i8*)** %3, align 8
  %7 = call i32 @assert(i32 (i8*)* %6)
  %8 = call %struct.job* @calloc(i32 1, i32 24)
  store %struct.job* %8, %struct.job** %5, align 8
  %9 = load %struct.job*, %struct.job** %5, align 8
  %10 = icmp ne %struct.job* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32 (i8*)*, i32 (i8*)** %3, align 8
  %15 = load %struct.job*, %struct.job** %5, align 8
  %16 = getelementptr inbounds %struct.job, %struct.job* %15, i32 0, i32 0
  store i32 (i8*)* %14, i32 (i8*)** %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.job*, %struct.job** %5, align 8
  %19 = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = call i32 @pthread_mutex_lock(i32* @queue_mutex)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @LIKELY(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.job*, %struct.job** %5, align 8
  %28 = getelementptr inbounds %struct.job, %struct.job* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* @jobs, i32* %28)
  %30 = call i32 @pthread_mutex_unlock(i32* @queue_mutex)
  br label %35

31:                                               ; preds = %13
  %32 = call i32 @lwan_status_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.job*, %struct.job** %5, align 8
  %34 = call i32 @free(%struct.job* %33)
  br label %35

35:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @assert(i32 (i8*)*) #1

declare dso_local %struct.job* @calloc(i32, i32) #1

declare dso_local i32 @lwan_status_critical_perror(i8*) #1

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @lwan_status_warning(i8*) #1

declare dso_local i32 @free(%struct.job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
