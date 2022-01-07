; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_find_formats.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_find_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, %struct.mp_chmap, %struct.wasapi_state* }
%struct.mp_chmap = type { i32 }
%struct.wasapi_state = type { i64 }
%struct.wasapi_sample_fmt = type { i32, i32, i64, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@wasapi_formats = common dso_local global i32 0, align 4
@AF_FORMAT_S16 = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@AUDCLNT_SHAREMODE_EXCLUSIVE = common dso_local global i32 0, align 4
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @find_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_formats(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.wasapi_state*, align 8
  %5 = alloca %struct.mp_chmap, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wasapi_sample_fmt, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %12 = load %struct.ao*, %struct.ao** %3, align 8
  %13 = getelementptr inbounds %struct.ao, %struct.ao* %12, i32 0, i32 3
  %14 = load %struct.wasapi_state*, %struct.wasapi_state** %13, align 8
  store %struct.wasapi_state* %14, %struct.wasapi_state** %4, align 8
  %15 = load %struct.ao*, %struct.ao** %3, align 8
  %16 = getelementptr inbounds %struct.ao, %struct.ao* %15, i32 0, i32 2
  %17 = bitcast %struct.mp_chmap* %5 to i8*
  %18 = bitcast %struct.mp_chmap* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %18, i64 4, i1 false)
  %19 = call i64 @mp_chmap_is_unknown(%struct.mp_chmap* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mp_chmap_from_channels(%struct.mp_chmap* %5, i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = call i32 @mp_chmap_reorder_to_waveext(%struct.mp_chmap* %5)
  %27 = call i32 @mp_chmap_is_valid(%struct.mp_chmap* %5)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 @mp_chmap_from_channels(%struct.mp_chmap* %5, i32 2)
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @wasapi_formats, align 4
  %33 = call i32 @MP_ARRAY_SIZE(i32 %32)
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %6, align 8
  %36 = alloca %struct.wasapi_sample_fmt, i64 %34, align 16
  store i64 %34, i64* %7, align 8
  %37 = load %struct.ao*, %struct.ao** %3, align 8
  %38 = getelementptr inbounds %struct.ao, %struct.ao* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wasapi_get_best_sample_formats(i32 %39, %struct.wasapi_sample_fmt* %36)
  %41 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 0
  %42 = load i32, i32* @AF_FORMAT_S16, align 4
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 1
  store i32 16, i32* %43, align 4
  %44 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 2
  store i64 16, i64* %44, align 8
  %45 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 3
  store i32* @KSDATAFORMAT_SUBTYPE_PCM, i32** %45, align 8
  %46 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 4
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %36, i64 0
  %48 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %36, i64 0
  %53 = bitcast %struct.wasapi_sample_fmt* %8 to i8*
  %54 = bitcast %struct.wasapi_sample_fmt* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 16 %54, i64 32, i1 false)
  br label %55

55:                                               ; preds = %51, %31
  %56 = load %struct.ao*, %struct.ao** %3, align 8
  %57 = getelementptr inbounds %struct.ao, %struct.ao* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @set_waveformat(%struct.TYPE_5__* %10, %struct.wasapi_sample_fmt* %8, i32 %58, %struct.mp_chmap* %5)
  %60 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %61 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %55
  %65 = load %struct.ao*, %struct.ao** %3, align 8
  %66 = getelementptr inbounds %struct.ao, %struct.ao* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @af_fmt_is_spdif(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64, %55
  %71 = load i32, i32* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 4
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ao*, %struct.ao** %3, align 8
  %73 = call i32 @find_formats_exclusive(%struct.ao* %72, %struct.TYPE_5__* %10)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %89

76:                                               ; preds = %70
  br label %84

77:                                               ; preds = %64
  %78 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.ao*, %struct.ao** %3, align 8
  %80 = call i32 @find_formats_shared(%struct.ao* %79, %struct.TYPE_5__* %10)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %89

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %76
  %85 = load %struct.ao*, %struct.ao** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @set_ao_format(%struct.ao* %85, i32* %86, i32 %87)
  store i32 %88, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %89

89:                                               ; preds = %84, %82, %75
  %90 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @mp_chmap_is_unknown(%struct.mp_chmap*) #2

declare dso_local i32 @mp_chmap_from_channels(%struct.mp_chmap*, i32) #2

declare dso_local i32 @mp_chmap_reorder_to_waveext(%struct.mp_chmap*) #2

declare dso_local i32 @mp_chmap_is_valid(%struct.mp_chmap*) #2

declare dso_local i32 @MP_ARRAY_SIZE(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @wasapi_get_best_sample_formats(i32, %struct.wasapi_sample_fmt*) #2

declare dso_local i32 @set_waveformat(%struct.TYPE_5__*, %struct.wasapi_sample_fmt*, i32, %struct.mp_chmap*) #2

declare dso_local i64 @af_fmt_is_spdif(i32) #2

declare dso_local i32 @find_formats_exclusive(%struct.ao*, %struct.TYPE_5__*) #2

declare dso_local i32 @find_formats_shared(%struct.ao*, %struct.TYPE_5__*) #2

declare dso_local i32 @set_ao_format(%struct.ao*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
