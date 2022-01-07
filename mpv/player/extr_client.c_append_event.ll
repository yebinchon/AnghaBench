; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_append_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_append_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i64, i64, i64, i64, i64, %struct.mpv_event* }
%struct.mpv_event = type { i64 }

@MPV_EVENT_SHUTDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpv_handle*, i64, i32)* @append_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_event(%struct.mpv_handle* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpv_event, align 8
  %6 = alloca %struct.mpv_handle*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %5, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.mpv_handle* %0, %struct.mpv_handle** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %10 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %13 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %11, %14
  %16 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %17 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %67

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @dup_event_data(%struct.mpv_event* %5)
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %28 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %27, i32 0, i32 5
  %29 = load %struct.mpv_event*, %struct.mpv_event** %28, align 8
  %30 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %31 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %34 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %38 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = urem i64 %36, %39
  %41 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %29, i64 %40
  %42 = bitcast %struct.mpv_event* %41 to i8*
  %43 = bitcast %struct.mpv_event* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %45 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %49 = call i32 @wakeup_client(%struct.mpv_handle* %48)
  %50 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %5, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MPV_EVENT_SHUTDOWN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %26
  %55 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %56 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MPV_EVENT_SHUTDOWN, align 8
  %59 = shl i64 1, %58
  %60 = xor i64 %59, -1
  %61 = and i64 %57, %60
  %62 = load %struct.mpv_handle*, %struct.mpv_handle** %6, align 8
  %63 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %54, %26
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @dup_event_data(%struct.mpv_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wakeup_client(%struct.mpv_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
