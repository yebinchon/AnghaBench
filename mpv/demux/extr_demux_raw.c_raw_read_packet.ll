; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_raw.c_raw_read_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_raw.c_raw_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_5__*, %struct.priv* }
%struct.TYPE_5__ = type { i64 }
%struct.priv = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.demux_packet = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Can't read packet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demuxer*, %struct.demux_packet**)* @raw_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_read_packet(%struct.demuxer* %0, %struct.demux_packet** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca %struct.demux_packet**, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.demux_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %4, align 8
  store %struct.demux_packet** %1, %struct.demux_packet*** %5, align 8
  %9 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %10 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %9, i32 0, i32 1
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %6, align 8
  %12 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %13 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.priv*, %struct.priv** %6, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.priv*, %struct.priv** %6, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = call %struct.demux_packet* @new_demux_packet(i32 %26)
  store %struct.demux_packet* %27, %struct.demux_packet** %7, align 8
  %28 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %29 = icmp ne %struct.demux_packet* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %32 = call i32 @MP_ERR(%struct.demuxer* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %77

33:                                               ; preds = %19
  %34 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %35 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %37 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @stream_tell(%struct.TYPE_5__* %38)
  %40 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %41 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %43 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.priv*, %struct.priv** %6, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %44, %47
  %49 = load %struct.priv*, %struct.priv** %6, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %48, %51
  %53 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %54 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %56 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %59 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %62 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @stream_read(%struct.TYPE_5__* %57, i32 %60, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @demux_packet_shorten(%struct.demux_packet* %65, i32 %66)
  %68 = load %struct.priv*, %struct.priv** %6, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %74 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %76 = load %struct.demux_packet**, %struct.demux_packet*** %5, align 8
  store %struct.demux_packet* %75, %struct.demux_packet** %76, align 8
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %33, %30, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.demux_packet* @new_demux_packet(i32) #1

declare dso_local i32 @MP_ERR(%struct.demuxer*, i8*) #1

declare dso_local i32 @stream_tell(%struct.TYPE_5__*) #1

declare dso_local i32 @stream_read(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @demux_packet_shorten(%struct.demux_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
