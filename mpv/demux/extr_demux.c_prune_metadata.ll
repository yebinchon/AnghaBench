; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_prune_metadata.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_prune_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_cached_range = type { i64, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_cached_range*)* @prune_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_metadata(%struct.demux_cached_range* %0) #0 {
  %2 = alloca %struct.demux_cached_range*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.demux_cached_range* %0, %struct.demux_cached_range** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %7 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %13 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %19 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %24 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %33 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %42

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %16

42:                                               ; preds = %36, %16
  br label %43

43:                                               ; preds = %42, %11
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %46 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @MPMIN(i32 %44, i32 %48)
  store i32 %49, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %68, %43
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %56 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %57, i64 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @talloc_free(%struct.TYPE_3__* %59)
  %61 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %62 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load %struct.demux_cached_range*, %struct.demux_cached_range** %2, align 8
  %65 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @MP_TARRAY_REMOVE_AT(%struct.TYPE_3__** %63, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %50

71:                                               ; preds = %50
  ret void
}

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @talloc_free(%struct.TYPE_3__*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.TYPE_3__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
