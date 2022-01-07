; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_reset.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ff_packet = type { %struct.ff_clock*, i32 }
%struct.ff_clock = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_demuxer_reset(%struct.ff_demuxer* %0) #0 {
  %2 = alloca %struct.ff_demuxer*, align 8
  %3 = alloca %struct.ff_packet, align 8
  %4 = alloca %struct.ff_clock*, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %2, align 8
  %5 = bitcast %struct.ff_packet* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = call %struct.ff_clock* (...) @ff_clock_init()
  store %struct.ff_clock* %6, %struct.ff_clock** %4, align 8
  %7 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %8 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ff_clock*, %struct.ff_clock** %4, align 8
  %12 = getelementptr inbounds %struct.ff_clock, %struct.ff_clock* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %14 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ff_clock*, %struct.ff_clock** %4, align 8
  %18 = getelementptr inbounds %struct.ff_clock, %struct.ff_clock* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %20 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ff_clock*, %struct.ff_clock** %4, align 8
  %24 = getelementptr inbounds %struct.ff_clock, %struct.ff_clock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ff_clock*, %struct.ff_clock** %4, align 8
  %26 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %3, i32 0, i32 0
  store %struct.ff_clock* %25, %struct.ff_clock** %26, align 8
  %27 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %28 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load %struct.ff_clock*, %struct.ff_clock** %4, align 8
  %33 = call i32 @ff_clock_retain(%struct.ff_clock* %32)
  %34 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %35 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @packet_queue_put(i32* %37, %struct.ff_packet* %3)
  br label %39

39:                                               ; preds = %31, %1
  %40 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %41 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ff_clock*, %struct.ff_clock** %4, align 8
  %46 = call i32 @ff_clock_retain(%struct.ff_clock* %45)
  %47 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %48 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @packet_queue_put(i32* %50, %struct.ff_packet* %3)
  br label %52

52:                                               ; preds = %44, %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ff_clock* @ff_clock_init(...) #2

declare dso_local i32 @ff_clock_retain(%struct.ff_clock*) #2

declare dso_local i32 @packet_queue_put(i32*, %struct.ff_packet*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
