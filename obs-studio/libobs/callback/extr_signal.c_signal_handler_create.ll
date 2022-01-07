; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_handler_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_handler_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_handler = type { i32, i32, i32, i32* }

@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't create signal handler mutex!\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Couldn't create signal handler global callbacks mutex!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.signal_handler* @signal_handler_create() #0 {
  %1 = alloca %struct.signal_handler*, align 8
  %2 = alloca %struct.signal_handler*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.signal_handler* @bzalloc(i32 24)
  store %struct.signal_handler* %4, %struct.signal_handler** %2, align 8
  %5 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  %6 = getelementptr inbounds %struct.signal_handler, %struct.signal_handler* %5, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  %8 = getelementptr inbounds %struct.signal_handler, %struct.signal_handler* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = call i64 @pthread_mutexattr_init(i32* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store %struct.signal_handler* null, %struct.signal_handler** %1, align 8
  br label %42

12:                                               ; preds = %0
  %13 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %14 = call i64 @pthread_mutexattr_settype(i32* %3, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store %struct.signal_handler* null, %struct.signal_handler** %1, align 8
  br label %42

17:                                               ; preds = %12
  %18 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  %19 = getelementptr inbounds %struct.signal_handler, %struct.signal_handler* %18, i32 0, i32 1
  %20 = call i64 @pthread_mutex_init(i32* %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @LOG_ERROR, align 4
  %24 = call i32 @blog(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  %26 = call i32 @bfree(%struct.signal_handler* %25)
  store %struct.signal_handler* null, %struct.signal_handler** %1, align 8
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  %29 = getelementptr inbounds %struct.signal_handler, %struct.signal_handler* %28, i32 0, i32 2
  %30 = call i64 @pthread_mutex_init(i32* %29, i32* %3)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* @LOG_ERROR, align 4
  %34 = call i32 @blog(i32 %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  %36 = getelementptr inbounds %struct.signal_handler, %struct.signal_handler* %35, i32 0, i32 1
  %37 = call i32 @pthread_mutex_destroy(i32* %36)
  %38 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  %39 = call i32 @bfree(%struct.signal_handler* %38)
  store %struct.signal_handler* null, %struct.signal_handler** %1, align 8
  br label %42

40:                                               ; preds = %27
  %41 = load %struct.signal_handler*, %struct.signal_handler** %2, align 8
  store %struct.signal_handler* %41, %struct.signal_handler** %1, align 8
  br label %42

42:                                               ; preds = %40, %32, %22, %16, %11
  %43 = load %struct.signal_handler*, %struct.signal_handler** %1, align 8
  ret %struct.signal_handler* %43
}

declare dso_local %struct.signal_handler* @bzalloc(i32) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @bfree(%struct.signal_handler*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
