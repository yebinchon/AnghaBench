; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_stream_tags_changed.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_stream_tags_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, %struct.demuxer* }
%struct.sh_stream = type { %struct.demux_stream* }
%struct.demux_stream = type { i32 }
%struct.mp_tags = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [46 x i8] c"Discarding timed metadata without timestamp.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_stream_tags_changed(%struct.demuxer* %0, %struct.sh_stream* %1, %struct.mp_tags* %2, double %3) #0 {
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  %7 = alloca %struct.mp_tags*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.demux_internal*, align 8
  %10 = alloca %struct.demux_stream*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %5, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %6, align 8
  store %struct.mp_tags* %2, %struct.mp_tags** %7, align 8
  store double %3, double* %8, align 8
  %11 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %12 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %11, i32 0, i32 0
  %13 = load %struct.demux_internal*, %struct.demux_internal** %12, align 8
  store %struct.demux_internal* %13, %struct.demux_internal** %9, align 8
  %14 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %15 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %16 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %15, i32 0, i32 1
  %17 = load %struct.demuxer*, %struct.demuxer** %16, align 8
  %18 = icmp eq %struct.demuxer* %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %22 = icmp ne %struct.sh_stream* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %25 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %24, i32 0, i32 0
  %26 = load %struct.demux_stream*, %struct.demux_stream** %25, align 8
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi %struct.demux_stream* [ %26, %23 ], [ null, %27 ]
  store %struct.demux_stream* %29, %struct.demux_stream** %10, align 8
  %30 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %31 = icmp ne %struct.sh_stream* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %34 = icmp ne %struct.demux_stream* %33, null
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ true, %28 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %40 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %39, i32 0, i32 0
  %41 = call i32 @pthread_mutex_lock(i32* %40)
  %42 = load double, double* %8, align 8
  %43 = load double, double* @MP_NOPTS_VALUE, align 8
  %44 = fcmp oeq double %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %47 = call i32 @MP_WARN(%struct.demux_internal* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %54

48:                                               ; preds = %35
  %49 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %50 = load %struct.mp_tags*, %struct.mp_tags** %7, align 8
  %51 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %52 = load double, double* %8, align 8
  %53 = call i32 @add_timed_metadata(%struct.demux_internal* %49, %struct.mp_tags* %50, %struct.sh_stream* %51, double %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.mp_tags*, %struct.mp_tags** %7, align 8
  %56 = call i32 @talloc_free(%struct.mp_tags* %55)
  %57 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %58 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %57, i32 0, i32 0
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @MP_WARN(%struct.demux_internal*, i8*) #1

declare dso_local i32 @add_timed_metadata(%struct.demux_internal*, %struct.mp_tags*, %struct.sh_stream*, double) #1

declare dso_local i32 @talloc_free(%struct.mp_tags*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
