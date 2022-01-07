; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_clear_cached_range.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_clear_cached_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32 }
%struct.demux_cached_range = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_cached_range*)* @clear_cached_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_cached_range(%struct.demux_internal* %0, %struct.demux_cached_range* %1) #0 {
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_cached_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  store %struct.demux_cached_range* %1, %struct.demux_cached_range** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %10 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %15 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clear_queue(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %7

25:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %29 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %34 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @talloc_free(i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %46 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %48 = call i32 @update_seek_ranges(%struct.demux_cached_range* %47)
  ret void
}

declare dso_local i32 @clear_queue(i32) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @update_seek_ranges(%struct.demux_cached_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
