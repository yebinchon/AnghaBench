; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_remove_head_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_remove_head_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_queue = type { i32, i64, i32*, %struct.demux_packet*, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.demux_packet*, %struct.demux_packet* }
%struct.TYPE_6__ = type { %struct.demux_packet* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.demux_packet* }
%struct.TYPE_4__ = type { i32 }
%struct.demux_packet = type { %struct.demux_packet*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_queue*)* @remove_head_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_head_packet(%struct.demux_queue* %0) #0 {
  %2 = alloca %struct.demux_queue*, align 8
  %3 = alloca %struct.demux_packet*, align 8
  %4 = alloca i64, align 8
  store %struct.demux_queue* %0, %struct.demux_queue** %2, align 8
  %5 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %6 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %5, i32 0, i32 3
  %7 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  store %struct.demux_packet* %7, %struct.demux_packet** %3, align 8
  %8 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %9 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %8, i32 0, i32 6
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.demux_packet*, %struct.demux_packet** %11, align 8
  %13 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %14 = icmp ne %struct.demux_packet* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %18 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %17, i32 0, i32 9
  %19 = load %struct.demux_packet*, %struct.demux_packet** %18, align 8
  %20 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %21 = icmp eq %struct.demux_packet* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %24 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %23, i32 0, i32 9
  store %struct.demux_packet* null, %struct.demux_packet** %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %27 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %26, i32 0, i32 8
  %28 = load %struct.demux_packet*, %struct.demux_packet** %27, align 8
  %29 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %30 = icmp eq %struct.demux_packet* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %33 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %32, i32 0, i32 8
  store %struct.demux_packet* null, %struct.demux_packet** %33, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %36 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %38 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %37, i32 0, i32 0
  %39 = load %struct.demux_packet*, %struct.demux_packet** %38, align 8
  %40 = icmp ne %struct.demux_packet* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %43 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %42, i32 0, i32 0
  %44 = load %struct.demux_packet*, %struct.demux_packet** %43, align 8
  %45 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  br label %51

47:                                               ; preds = %34
  %48 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %49 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i64 [ %46, %41 ], [ %50, %47 ]
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %55 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %59 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %58, i32 0, i32 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %57
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %69 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %51
  %73 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %74 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %73, i32 0, i32 5
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %77 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.demux_packet*, %struct.demux_packet** %80, align 8
  %82 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %83 = icmp eq %struct.demux_packet* %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %72
  %85 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %86 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  %89 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %90 = call i32 @QUEUE_INDEX_SIZE_MASK(%struct.demux_queue* %89)
  %91 = sext i32 %90 to i64
  %92 = and i64 %88, %91
  %93 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %94 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %96 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %84, %72, %51
  %100 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %101 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %100, i32 0, i32 0
  %102 = load %struct.demux_packet*, %struct.demux_packet** %101, align 8
  %103 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %104 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %103, i32 0, i32 3
  store %struct.demux_packet* %102, %struct.demux_packet** %104, align 8
  %105 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %106 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %105, i32 0, i32 3
  %107 = load %struct.demux_packet*, %struct.demux_packet** %106, align 8
  %108 = icmp ne %struct.demux_packet* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %99
  %110 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %111 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %109, %99
  %113 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %114 = call i32 @talloc_free(%struct.demux_packet* %113)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @QUEUE_INDEX_SIZE_MASK(%struct.demux_queue*) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
