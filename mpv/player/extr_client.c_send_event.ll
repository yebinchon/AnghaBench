; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_send_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i32, i32, i32, i32 }
%struct.mpv_event = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Too many events queued.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpv_handle*, %struct.mpv_event*, i32)* @send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_event(%struct.mpv_handle* %0, %struct.mpv_event* %1, i32 %2) #0 {
  %4 = alloca %struct.mpv_handle*, align 8
  %5 = alloca %struct.mpv_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mpv_handle* %0, %struct.mpv_handle** %4, align 8
  store %struct.mpv_event* %1, %struct.mpv_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %10 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %9, i32 0, i32 3
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.mpv_event*, %struct.mpv_event** %5, align 8
  %13 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = shl i64 1, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %18 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @notify_property_events(%struct.mpv_handle* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %29 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %37 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %8, align 4
  br label %56

41:                                               ; preds = %35
  %42 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %43 = load %struct.mpv_event*, %struct.mpv_event** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %43, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @append_event(%struct.mpv_handle* %42, i64 %46, i32 %44)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %52 = call i32 @MP_ERR(%struct.mpv_handle* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %54 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %41
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %59 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %58, i32 0, i32 3
  %60 = call i32 @pthread_mutex_unlock(i32* %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @notify_property_events(%struct.mpv_handle*, i32) #1

declare dso_local i32 @append_event(%struct.mpv_handle*, i64, i32) #1

declare dso_local i32 @MP_ERR(%struct.mpv_handle*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
