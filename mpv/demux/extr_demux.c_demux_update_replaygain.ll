; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_update_replaygain.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_update_replaygain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.demux_internal* }
%struct.demux_internal = type { i32, %struct.sh_stream** }
%struct.sh_stream = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.replaygain_data = type { i32 }

@STREAM_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @demux_update_replaygain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demux_update_replaygain(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca %struct.replaygain_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  store %struct.demux_internal* %9, %struct.demux_internal** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %67, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  %17 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 1
  %19 = load %struct.sh_stream**, %struct.sh_stream*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %19, i64 %21
  %23 = load %struct.sh_stream*, %struct.sh_stream** %22, align 8
  store %struct.sh_stream* %23, %struct.sh_stream** %5, align 8
  %24 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %25 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STREAM_AUDIO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %16
  %30 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %31 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %41 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.replaygain_data* @decode_rgain(i32 %39, i32 %42)
  store %struct.replaygain_data* %43, %struct.replaygain_data** %6, align 8
  %44 = load %struct.replaygain_data*, %struct.replaygain_data** %6, align 8
  %45 = icmp ne %struct.replaygain_data* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.replaygain_data* @decode_rgain(i32 %49, i32 %52)
  store %struct.replaygain_data* %53, %struct.replaygain_data** %6, align 8
  br label %54

54:                                               ; preds = %46, %36
  %55 = load %struct.replaygain_data*, %struct.replaygain_data** %6, align 8
  %56 = icmp ne %struct.replaygain_data* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %59 = load %struct.replaygain_data*, %struct.replaygain_data** %6, align 8
  %60 = call i32 @talloc_steal(%struct.demux_internal* %58, %struct.replaygain_data* %59)
  %61 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %62 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %54
  br label %66

66:                                               ; preds = %65, %29, %16
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %10

70:                                               ; preds = %10
  ret void
}

declare dso_local %struct.replaygain_data* @decode_rgain(i32, i32) #1

declare dso_local i32 @talloc_steal(%struct.demux_internal*, %struct.replaygain_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
