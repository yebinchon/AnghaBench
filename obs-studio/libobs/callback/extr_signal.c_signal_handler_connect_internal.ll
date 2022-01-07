; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_handler_connect_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_handler_connect_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.signal_info = type { i32, i32 }
%struct.signal_callback = type { i8*, i32, i32, i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"signal_handler_connect: signal '%s' not found\00", align 1
@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32, i8*, i32)* @signal_handler_connect_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_handler_connect_internal(%struct.TYPE_4__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.signal_info*, align 8
  %12 = alloca %struct.signal_info*, align 8
  %13 = alloca %struct.signal_callback, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = getelementptr inbounds %struct.signal_callback, %struct.signal_callback* %13, i32 0, i32 0
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %15, align 8
  %19 = getelementptr inbounds %struct.signal_callback, %struct.signal_callback* %13, i32 0, i32 1
  %20 = load i8*, i8** %9, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.signal_callback, %struct.signal_callback* %13, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.signal_callback, %struct.signal_callback* %13, i32 0, i32 3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %74

28:                                               ; preds = %5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @pthread_mutex_lock(i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call %struct.signal_info* @getsignal(%struct.TYPE_4__* %32, i8* %33, %struct.signal_info** %12)
  store %struct.signal_info* %34, %struct.signal_info** %11, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  %38 = load %struct.signal_info*, %struct.signal_info** %11, align 8
  %39 = icmp ne %struct.signal_info* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @LOG_WARNING, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @blog(i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %74

44:                                               ; preds = %28
  %45 = load %struct.signal_info*, %struct.signal_info** %11, align 8
  %46 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %45, i32 0, i32 0
  %47 = call i32 @pthread_mutex_lock(i32* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @os_atomic_inc_long(i32* %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.signal_info*, %struct.signal_info** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @signal_get_callback_idx(%struct.signal_info* %55, i32 %56, i8* %57)
  store i64 %58, i64* %14, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @DARRAY_INVALID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %54
  %66 = load %struct.signal_info*, %struct.signal_info** %11, align 8
  %67 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @da_push_back(i32 %68, %struct.signal_callback* %13)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.signal_info*, %struct.signal_info** %11, align 8
  %72 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %71, i32 0, i32 0
  %73 = call i32 @pthread_mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %40, %27
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.signal_info* @getsignal(%struct.TYPE_4__*, i8*, %struct.signal_info**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

declare dso_local i64 @signal_get_callback_idx(%struct.signal_info*, i32, i8*) #1

declare dso_local i32 @da_push_back(i32, %struct.signal_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
