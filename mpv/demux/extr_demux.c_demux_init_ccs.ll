; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_init_ccs.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_init_ccs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, %struct.sh_stream** }
%struct.sh_stream = type { i64 }
%struct.demux_opts = type { i32 }

@STREAM_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*, %struct.demux_opts*)* @demux_init_ccs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demux_init_ccs(%struct.demuxer* %0, %struct.demux_opts* %1) #0 {
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca %struct.demux_opts*, align 8
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_stream*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %3, align 8
  store %struct.demux_opts* %1, %struct.demux_opts** %4, align 8
  %8 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %9 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %8, i32 0, i32 0
  %10 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  store %struct.demux_internal* %10, %struct.demux_internal** %5, align 8
  %11 = load %struct.demux_opts*, %struct.demux_opts** %4, align 8
  %12 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 1
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %43, %16
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %23 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %28 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %27, i32 0, i32 2
  %29 = load %struct.sh_stream**, %struct.sh_stream*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %29, i64 %31
  %33 = load %struct.sh_stream*, %struct.sh_stream** %32, align 8
  store %struct.sh_stream* %33, %struct.sh_stream** %7, align 8
  %34 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %35 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STREAM_VIDEO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %41 = call i32 @demuxer_get_cc_track_locked(%struct.sh_stream* %40)
  br label %42

42:                                               ; preds = %39, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %48 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %47, i32 0, i32 1
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @demuxer_get_cc_track_locked(%struct.sh_stream*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
