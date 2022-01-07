; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@OMX_CommandStateSet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"set state event 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"OMX error 0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unhandled event %d\00", align 1
@OMX_ErrorNone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_5__*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_handler(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %39 [
    i32 129, label %16
    i32 128, label %36
  ]

16:                                               ; preds = %6
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @OMX_CommandStateSet, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @pthread_mutex_lock(i32* %25)
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = call i32 @pthread_cond_broadcast(i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  br label %43

36:                                               ; preds = %6
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @LOGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %43

39:                                               ; preds = %6
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @LOGE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = call i32 @assert(i32 0)
  br label %43

43:                                               ; preds = %39, %36, %16
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = call i32 @pthread_mutex_unlock(i32* %45)
  %47 = load i32, i32* @OMX_ErrorNone, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LOG(i8*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @LOGE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
