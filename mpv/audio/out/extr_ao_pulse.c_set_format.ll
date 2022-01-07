; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_set_format.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_map = type { i64, i32 }
%struct.ao = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.pa_channel_map = type { i32 }

@PA_ENCODING_PCM = common dso_local global i64 0, align 8
@format_maps = common dso_local global %struct.format_map* null, align 8
@AF_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unsupported format, using default\0A\00", align 1
@PA_RATE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.TYPE_10__*)* @set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_format(%struct.ao* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.format_map*, align 8
  %7 = alloca %struct.pa_channel_map, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.ao*, %struct.ao** %4, align 8
  %9 = getelementptr inbounds %struct.ao, %struct.ao* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @af_fmt_from_planar(i64 %10)
  %12 = load %struct.ao*, %struct.ao** %4, align 8
  %13 = getelementptr inbounds %struct.ao, %struct.ao* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.ao*, %struct.ao** %4, align 8
  %15 = getelementptr inbounds %struct.ao, %struct.ao* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @map_digital_format(i64 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PA_ENCODING_PCM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %2
  %26 = load %struct.format_map*, %struct.format_map** @format_maps, align 8
  store %struct.format_map* %26, %struct.format_map** %6, align 8
  br label %27

27:                                               ; preds = %45, %25
  %28 = load %struct.format_map*, %struct.format_map** %6, align 8
  %29 = getelementptr inbounds %struct.format_map, %struct.format_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ao*, %struct.ao** %4, align 8
  %32 = getelementptr inbounds %struct.ao, %struct.ao* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.format_map*, %struct.format_map** %6, align 8
  %37 = getelementptr inbounds %struct.format_map, %struct.format_map* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_FORMAT_UNKNOWN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ao*, %struct.ao** %4, align 8
  %43 = call i32 @MP_VERBOSE(%struct.ao* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.format_map*, %struct.format_map** @format_maps, align 8
  store %struct.format_map* %44, %struct.format_map** %6, align 8
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.format_map*, %struct.format_map** %6, align 8
  %47 = getelementptr inbounds %struct.format_map, %struct.format_map* %46, i32 1
  store %struct.format_map* %47, %struct.format_map** %6, align 8
  br label %27

48:                                               ; preds = %41, %27
  %49 = load %struct.format_map*, %struct.format_map** %6, align 8
  %50 = getelementptr inbounds %struct.format_map, %struct.format_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ao*, %struct.ao** %4, align 8
  %53 = getelementptr inbounds %struct.ao, %struct.ao* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = load %struct.format_map*, %struct.format_map** %6, align 8
  %56 = getelementptr inbounds %struct.format_map, %struct.format_map* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pa_format_info_set_sample_format(%struct.TYPE_10__* %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %2
  %60 = load %struct.ao*, %struct.ao** %4, align 8
  %61 = call i32 @select_chmap(%struct.ao* %60, %struct.pa_channel_map* %7)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %90

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load %struct.ao*, %struct.ao** %4, align 8
  %67 = getelementptr inbounds %struct.ao, %struct.ao* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @pa_format_info_set_rate(%struct.TYPE_10__* %65, i64 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = load %struct.ao*, %struct.ao** %4, align 8
  %72 = getelementptr inbounds %struct.ao, %struct.ao* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pa_format_info_set_channels(%struct.TYPE_10__* %70, i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = call i32 @pa_format_info_set_channel_map(%struct.TYPE_10__* %76, %struct.pa_channel_map* %7)
  %78 = load %struct.ao*, %struct.ao** %4, align 8
  %79 = getelementptr inbounds %struct.ao, %struct.ao* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PA_RATE_MAX, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %64
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = call i64 @pa_format_info_valid(%struct.TYPE_10__* %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %83, %64
  %88 = phi i1 [ false, %64 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %63
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @af_fmt_from_planar(i64) #1

declare dso_local i64 @map_digital_format(i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*) #1

declare dso_local i32 @pa_format_info_set_sample_format(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @select_chmap(%struct.ao*, %struct.pa_channel_map*) #1

declare dso_local i32 @pa_format_info_set_rate(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @pa_format_info_set_channels(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pa_format_info_set_channel_map(%struct.TYPE_10__*, %struct.pa_channel_map*) #1

declare dso_local i64 @pa_format_info_valid(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
