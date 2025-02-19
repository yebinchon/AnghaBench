; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_set_current_range.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_set_current_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, %struct.demux_cached_range**, %struct.demux_cached_range* }
%struct.demux_cached_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_cached_range*)* @set_current_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_current_range(%struct.demux_internal* %0, %struct.demux_cached_range* %1) #0 {
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_cached_range*, align 8
  %5 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  store %struct.demux_cached_range* %1, %struct.demux_cached_range** %4, align 8
  %6 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %7 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %8 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %7, i32 0, i32 2
  store %struct.demux_cached_range* %6, %struct.demux_cached_range** %8, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %12 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %17 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %16, i32 0, i32 1
  %18 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %18, i64 %20
  %22 = load %struct.demux_cached_range*, %struct.demux_cached_range** %21, align 8
  %23 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %24 = icmp eq %struct.demux_cached_range* %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 1
  %28 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %27, align 8
  %29 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %30 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @MP_TARRAY_REMOVE_AT(%struct.demux_cached_range** %28, i32 %31, i32 %32)
  br label %38

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %9

38:                                               ; preds = %25, %9
  %39 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %40 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %41 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %40, i32 0, i32 1
  %42 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %41, align 8
  %43 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %44 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  %47 = call i32 @MP_TARRAY_APPEND(%struct.demux_internal* %39, %struct.demux_cached_range** %42, i32 %45, %struct.demux_cached_range* %46)
  ret void
}

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.demux_cached_range**, i32, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.demux_internal*, %struct.demux_cached_range**, i32, %struct.demux_cached_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
