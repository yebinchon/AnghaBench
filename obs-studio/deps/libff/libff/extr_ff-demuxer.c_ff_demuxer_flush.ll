; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_flush.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_demuxer_flush(%struct.ff_demuxer* %0) #0 {
  %2 = alloca %struct.ff_demuxer*, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %2, align 8
  %3 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %4 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %9 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %16 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @packet_queue_flush(i32* %18)
  %20 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %21 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @packet_queue_put_flush_packet(i32* %23)
  br label %25

25:                                               ; preds = %14, %7, %1
  %26 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %27 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %32 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %39 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @packet_queue_flush(i32* %41)
  %43 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %44 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @packet_queue_put_flush_packet(i32* %46)
  br label %48

48:                                               ; preds = %37, %30, %25
  ret void
}

declare dso_local i32 @packet_queue_flush(i32*) #1

declare dso_local i32 @packet_queue_put_flush_packet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
