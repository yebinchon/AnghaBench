; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_reopen.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { i32, i32 }

@REOPEN_TIMEOUT = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Reopen thread started.\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Reopen thread is about to exit.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_alsa_reopen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.alsa_data*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.alsa_data*
  store %struct.alsa_data* %6, %struct.alsa_data** %3, align 8
  %7 = load i32, i32* @REOPEN_TIMEOUT, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @LOG_DEBUG, align 4
  %10 = call i32 @blog(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %12 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %11, i32 0, i32 0
  %13 = call i32 @os_atomic_set_bool(i32* %12, i32 1)
  br label %14

14:                                               ; preds = %38, %1
  %15 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %16 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @os_event_timedwait(i32 %17, i64 %18)
  %20 = load i64, i64* @ETIMEDOUT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %24 = call i64 @_alsa_open(%struct.alsa_data* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %39

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @REOPEN_TIMEOUT, align 4
  %30 = mul nsw i32 %29, 5
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @REOPEN_TIMEOUT, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %33, %27
  br label %14

39:                                               ; preds = %26, %14
  %40 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %41 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %40, i32 0, i32 0
  %42 = call i32 @os_atomic_set_bool(i32* %41, i32 0)
  %43 = load i32, i32* @LOG_DEBUG, align 4
  %44 = call i32 @blog(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @pthread_exit(i32* null)
  ret i8* null
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i64 @os_event_timedwait(i32, i64) #1

declare dso_local i64 @_alsa_open(%struct.alsa_data*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
