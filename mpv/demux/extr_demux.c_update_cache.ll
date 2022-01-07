; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_cache.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i64, i64, i32, i32, i64, i64, %struct.demuxer* }
%struct.demuxer = type { %struct.stream* }
%struct.stream = type { i32 }
%struct.mp_tags = type { i32 }

@STREAM_CTRL_GET_METADATA = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@MP_SECOND_US = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*)* @update_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cache(%struct.demux_internal* %0) #0 {
  %2 = alloca %struct.demux_internal*, align 8
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.mp_tags*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %2, align 8
  %10 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %11 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %10, i32 0, i32 6
  %12 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  store %struct.demuxer* %12, %struct.demuxer** %3, align 8
  %13 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %14 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %13, i32 0, i32 0
  %15 = load %struct.stream*, %struct.stream** %14, align 8
  store %struct.stream* %15, %struct.stream** %4, align 8
  store %struct.mp_tags* null, %struct.mp_tags** %5, align 8
  store i64 -1, i64* %6, align 8
  %16 = load %struct.stream*, %struct.stream** %4, align 8
  %17 = icmp ne %struct.stream* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.stream*, %struct.stream** %4, align 8
  %20 = call i64 @stream_get_size(%struct.stream* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.stream*, %struct.stream** %4, align 8
  %22 = load i32, i32* @STREAM_CTRL_GET_METADATA, align 4
  %23 = call i32 @stream_control(%struct.stream* %21, i32 %22, %struct.mp_tags** %5)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %26 = call i32 @update_bytes_read(%struct.demux_internal* %25)
  %27 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %28 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %27, i32 0, i32 3
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %32 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  %33 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %34 = icmp ne %struct.mp_tags* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %37 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %38 = load i32, i32* @MP_NOPTS_VALUE, align 4
  %39 = call i32 @add_timed_metadata(%struct.demux_internal* %36, %struct.mp_tags* %37, i32* null, i32 %38)
  %40 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %41 = call i32 @talloc_free(%struct.mp_tags* %40)
  br label %42

42:                                               ; preds = %35, %24
  %43 = load i64, i64* @INT64_MAX, align 8
  %44 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %45 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = call i64 (...) @mp_time_us()
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %49 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @MP_SECOND_US, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %42
  %56 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %57 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %9, align 8
  %59 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %60 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %63 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sitofp i64 %64 to double
  %66 = load i64, i64* %8, align 8
  %67 = sitofp i64 %66 to double
  %68 = load i64, i64* @MP_SECOND_US, align 8
  %69 = sitofp i64 %68 to double
  %70 = fdiv double %67, %69
  %71 = fdiv double %65, %70
  %72 = fptosi double %71 to i32
  %73 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %74 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %55, %42
  %76 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %77 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @MP_SECOND_US, align 8
  %83 = add nsw i64 %81, %82
  %84 = add nsw i64 %83, 1
  %85 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %86 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %89 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %88, i32 0, i32 3
  %90 = call i32 @pthread_mutex_unlock(i32* %89)
  ret void
}

declare dso_local i64 @stream_get_size(%struct.stream*) #1

declare dso_local i32 @stream_control(%struct.stream*, i32, %struct.mp_tags**) #1

declare dso_local i32 @update_bytes_read(%struct.demux_internal*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @add_timed_metadata(%struct.demux_internal*, %struct.mp_tags*, i32*, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_tags*) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
