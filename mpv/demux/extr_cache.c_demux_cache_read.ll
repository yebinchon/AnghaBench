; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_cache.c_demux_cache_read.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_cache.c_demux_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i32, %struct.TYPE_2__*, %struct.sd_header* }
%struct.TYPE_2__ = type { i32 }
%struct.sd_header = type { i64, i64, i32, i32, i32 }
%struct.demux_cache = type { i32 }
%struct.pkt_header = type { i64, i64, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demux_packet* @demux_cache_read(%struct.demux_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.demux_packet*, align 8
  %4 = alloca %struct.demux_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pkt_header, align 8
  %7 = alloca %struct.demux_packet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sd_header, align 8
  %10 = alloca %struct.sd_header*, align 8
  store %struct.demux_cache* %0, %struct.demux_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @do_seek(%struct.demux_cache* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.demux_packet* null, %struct.demux_packet** %3, align 8
  br label %97

16:                                               ; preds = %2
  %17 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %18 = bitcast %struct.pkt_header* %6 to %struct.sd_header*
  %19 = call i32 @read_raw(%struct.demux_cache* %17, %struct.sd_header* %18, i32 32)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.demux_packet* null, %struct.demux_packet** %3, align 8
  br label %97

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.pkt_header, %struct.pkt_header* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.demux_packet* null, %struct.demux_packet** %3, align 8
  br label %97

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pkt_header, %struct.pkt_header* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.demux_packet* @new_demux_packet(i64 %29)
  store %struct.demux_packet* %30, %struct.demux_packet** %7, align 8
  %31 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %32 = icmp ne %struct.demux_packet* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %94

34:                                               ; preds = %27
  %35 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %36 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %37 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %36, i32 0, i32 2
  %38 = load %struct.sd_header*, %struct.sd_header** %37, align 8
  %39 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %40 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @read_raw(%struct.demux_cache* %35, %struct.sd_header* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %94

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.pkt_header, %struct.pkt_header* %6, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %49 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %89, %45
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.pkt_header, %struct.pkt_header* %6, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %59 = call i32 @read_raw(%struct.demux_cache* %58, %struct.sd_header* %9, i32 32)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %94

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.sd_header, %struct.sd_header* %9, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @INT_MAX, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %94

68:                                               ; preds = %62
  %69 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %70 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.sd_header, %struct.sd_header* %9, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.sd_header, %struct.sd_header* %9, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.sd_header* @av_packet_new_side_data(%struct.TYPE_2__* %71, i32 %73, i32 %75)
  store %struct.sd_header* %76, %struct.sd_header** %10, align 8
  %77 = load %struct.sd_header*, %struct.sd_header** %10, align 8
  %78 = icmp ne %struct.sd_header* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %94

80:                                               ; preds = %68
  %81 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %82 = load %struct.sd_header*, %struct.sd_header** %10, align 8
  %83 = getelementptr inbounds %struct.sd_header, %struct.sd_header* %9, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @read_raw(%struct.demux_cache* %81, %struct.sd_header* %82, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %94

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %52

92:                                               ; preds = %52
  %93 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  store %struct.demux_packet* %93, %struct.demux_packet** %3, align 8
  br label %97

94:                                               ; preds = %87, %79, %67, %61, %44, %33
  %95 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %96 = call i32 @talloc_free(%struct.demux_packet* %95)
  store %struct.demux_packet* null, %struct.demux_packet** %3, align 8
  br label %97

97:                                               ; preds = %94, %92, %26, %21, %15
  %98 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  ret %struct.demux_packet* %98
}

declare dso_local i32 @do_seek(%struct.demux_cache*, i32) #1

declare dso_local i32 @read_raw(%struct.demux_cache*, %struct.sd_header*, i32) #1

declare dso_local %struct.demux_packet* @new_demux_packet(i64) #1

declare dso_local %struct.sd_header* @av_packet_new_side_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
