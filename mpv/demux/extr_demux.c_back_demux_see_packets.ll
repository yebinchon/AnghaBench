; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_back_demux_see_packets.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_back_demux_see_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_stream = type { i32, i64, i64, i32, i64, i64, i64, %struct.demux_packet*, i32, %struct.demux_internal* }
%struct.demux_packet = type { i64, i64 }
%struct.demux_internal = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Can't demux backward due to demuxer problems.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_stream*)* @back_demux_see_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @back_demux_see_packets(%struct.demux_stream* %0) #0 {
  %2 = alloca %struct.demux_stream*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  store %struct.demux_stream* %0, %struct.demux_stream** %2, align 8
  %5 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %6 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %5, i32 0, i32 9
  %7 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  store %struct.demux_internal* %7, %struct.demux_internal** %3, align 8
  %8 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %9 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %14 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  br label %107

18:                                               ; preds = %12
  %19 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %20 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %25 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %34 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %28
  %38 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %39 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %44 = call i32 @MP_ERR(%struct.demux_internal* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %46 = call i32 @error_on_backward_demuxing(%struct.demux_internal* %45)
  br label %107

47:                                               ; preds = %37, %28
  br label %48

48:                                               ; preds = %96, %47
  %49 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %50 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %55 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %54, i32 0, i32 7
  %56 = load %struct.demux_packet*, %struct.demux_packet** %55, align 8
  %57 = icmp ne %struct.demux_packet* %56, null
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %99

60:                                               ; preds = %58
  %61 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %62 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %61, i32 0, i32 7
  %63 = load %struct.demux_packet*, %struct.demux_packet** %62, align 8
  store %struct.demux_packet* %63, %struct.demux_packet** %4, align 8
  %64 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %65 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %70 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %73 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %89, label %76

76:                                               ; preds = %68, %60
  %77 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %78 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %83 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %86 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %81, %68
  %90 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %91 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %93 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %92, i32 0, i32 3
  store i32 1, i32* %93, align 8
  %94 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %95 = call i32 @wakeup_ds(%struct.demux_stream* %94)
  br label %99

96:                                               ; preds = %81, %76
  %97 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %98 = call i32 @advance_reader_head(%struct.demux_stream* %97)
  br label %48

99:                                               ; preds = %89, %58
  %100 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %101 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %106 = call i32 @find_backward_restart_pos(%struct.demux_stream* %105)
  br label %107

107:                                              ; preds = %17, %42, %104, %99
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_ERR(%struct.demux_internal*, i8*) #1

declare dso_local i32 @error_on_backward_demuxing(%struct.demux_internal*) #1

declare dso_local i32 @wakeup_ds(%struct.demux_stream*) #1

declare dso_local i32 @advance_reader_head(%struct.demux_stream*) #1

declare dso_local i32 @find_backward_restart_pos(%struct.demux_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
