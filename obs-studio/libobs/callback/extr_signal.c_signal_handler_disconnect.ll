; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_handler_disconnect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_handler_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.signal_info = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@DARRAY_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @signal_handler_disconnect(%struct.TYPE_8__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.signal_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.signal_info* @getsignal_locked(%struct.TYPE_8__* %12, i8* %13)
  store %struct.signal_info* %14, %struct.signal_info** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %16 = icmp ne %struct.signal_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %72

18:                                               ; preds = %4
  %19 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %20 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @signal_get_callback_idx(%struct.signal_info* %22, i32 %23, i8* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @DARRAY_INVALID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %18
  %30 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %31 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %36 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %57

42:                                               ; preds = %29
  %43 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %44 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %52 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %51, i32 0, i32 1
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 @da_erase(%struct.TYPE_7__* %55, i64 %53)
  br label %57

57:                                               ; preds = %42, %34
  br label %58

58:                                               ; preds = %57, %18
  %59 = load %struct.signal_info*, %struct.signal_info** %9, align 8
  %60 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %59, i32 0, i32 0
  %61 = call i32 @pthread_mutex_unlock(i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i64 @os_atomic_dec_long(i32* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = call i32 @signal_handler_actually_destroy(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %17, %69, %64, %58
  ret void
}

declare dso_local %struct.signal_info* @getsignal_locked(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @signal_get_callback_idx(%struct.signal_info*, i32, i8*) #1

declare dso_local i32 @da_erase(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @os_atomic_dec_long(i32*) #1

declare dso_local i32 @signal_handler_actually_destroy(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
