; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_read_packet_from_cache.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_read_packet_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32 }
%struct.demux_packet = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to retrieve packet from cache.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demux_packet* (%struct.demux_internal*, %struct.demux_packet*)* @read_packet_from_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demux_packet* @read_packet_from_cache(%struct.demux_internal* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.demux_packet*, align 8
  %4 = alloca %struct.demux_internal*, align 8
  %5 = alloca %struct.demux_packet*, align 8
  %6 = alloca %struct.demux_packet*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %4, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %5, align 8
  %7 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %8 = icmp ne %struct.demux_packet* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.demux_packet* null, %struct.demux_packet** %3, align 8
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %12 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %17 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  store %struct.demux_packet* %20, %struct.demux_packet** %6, align 8
  %21 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %22 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %25 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.demux_packet* @demux_cache_read(i32 %23, i32 %27)
  store %struct.demux_packet* %28, %struct.demux_packet** %5, align 8
  %29 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %30 = icmp ne %struct.demux_packet* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %33 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %34 = call i32 @demux_packet_copy_attribs(%struct.demux_packet* %32, %struct.demux_packet* %33)
  br label %38

35:                                               ; preds = %15
  %36 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %37 = call i32 @MP_ERR(%struct.demux_internal* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %31
  br label %42

39:                                               ; preds = %10
  %40 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %41 = call %struct.demux_packet* @demux_copy_packet(%struct.demux_packet* %40)
  store %struct.demux_packet* %41, %struct.demux_packet** %5, align 8
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  store %struct.demux_packet* %43, %struct.demux_packet** %3, align 8
  br label %44

44:                                               ; preds = %42, %9
  %45 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  ret %struct.demux_packet* %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.demux_packet* @demux_cache_read(i32, i32) #1

declare dso_local i32 @demux_packet_copy_attribs(%struct.demux_packet*, %struct.demux_packet*) #1

declare dso_local i32 @MP_ERR(%struct.demux_internal*, i8*) #1

declare dso_local %struct.demux_packet* @demux_copy_packet(%struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
