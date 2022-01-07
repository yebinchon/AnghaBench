; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_stream_by_demuxer_id.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_stream_by_demuxer_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_stream = type { i32, i32 }
%struct.demuxer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sh_stream* @demuxer_stream_by_demuxer_id(%struct.demuxer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_stream*, align 8
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sh_stream*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %12 = call i32 @demux_get_num_stream(%struct.demuxer* %11)
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.sh_stream* @demux_get_stream(%struct.demuxer* %18, i32 %19)
  store %struct.sh_stream* %20, %struct.sh_stream** %10, align 8
  %21 = load %struct.sh_stream*, %struct.sh_stream** %10, align 8
  %22 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.sh_stream*, %struct.sh_stream** %10, align 8
  %28 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.sh_stream*, %struct.sh_stream** %10, align 8
  store %struct.sh_stream* %33, %struct.sh_stream** %4, align 8
  br label %39

34:                                               ; preds = %26, %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %13

38:                                               ; preds = %13
  store %struct.sh_stream* null, %struct.sh_stream** %4, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  ret %struct.sh_stream* %40
}

declare dso_local i32 @demux_get_num_stream(%struct.demuxer*) #1

declare dso_local %struct.sh_stream* @demux_get_stream(%struct.demuxer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
