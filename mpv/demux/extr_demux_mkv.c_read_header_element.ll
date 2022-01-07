; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_read_header_element.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_read_header_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, i32 }

@EBML_ID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demuxer*, i32, i32)* @read_header_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header_element(%struct.demuxer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @EBML_ID_INVALID, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

12:                                               ; preds = %3
  %13 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @test_header_element(%struct.demuxer* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %43

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %42 [
    i32 131, label %21
    i32 128, label %24
    i32 132, label %27
    i32 129, label %30
    i32 130, label %33
    i32 133, label %36
    i32 134, label %39
  ]

21:                                               ; preds = %19
  %22 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %23 = call i32 @demux_mkv_read_info(%struct.demuxer* %22)
  store i32 %23, i32* %4, align 4
  br label %51

24:                                               ; preds = %19
  %25 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %26 = call i32 @demux_mkv_read_tracks(%struct.demuxer* %25)
  store i32 %26, i32* %4, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %29 = call i32 @demux_mkv_read_cues(%struct.demuxer* %28)
  store i32 %29, i32* %4, align 4
  br label %51

30:                                               ; preds = %19
  %31 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %32 = call i32 @demux_mkv_read_tags(%struct.demuxer* %31)
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %19
  %34 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %35 = call i32 @demux_mkv_read_seekhead(%struct.demuxer* %34)
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %19
  %37 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %38 = call i32 @demux_mkv_read_chapters(%struct.demuxer* %37)
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %19
  %40 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %41 = call i32 @demux_mkv_read_attachments(%struct.demuxer* %40)
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %45 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %48 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ebml_read_skip(i32 %46, i32 -1, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %39, %36, %33, %30, %27, %24, %21, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @test_header_element(%struct.demuxer*, i32, i32) #1

declare dso_local i32 @demux_mkv_read_info(%struct.demuxer*) #1

declare dso_local i32 @demux_mkv_read_tracks(%struct.demuxer*) #1

declare dso_local i32 @demux_mkv_read_cues(%struct.demuxer*) #1

declare dso_local i32 @demux_mkv_read_tags(%struct.demuxer*) #1

declare dso_local i32 @demux_mkv_read_seekhead(%struct.demuxer*) #1

declare dso_local i32 @demux_mkv_read_chapters(%struct.demuxer*) #1

declare dso_local i32 @demux_mkv_read_attachments(%struct.demuxer*) #1

declare dso_local i32 @ebml_read_skip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
