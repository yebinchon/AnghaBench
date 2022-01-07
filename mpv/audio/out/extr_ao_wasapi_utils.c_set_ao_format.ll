; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_set_ao_format.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_set_ao_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i64, %struct.mp_chmap, %struct.wasapi_state* }
%struct.mp_chmap = type { i32 }
%struct.wasapi_state = type { i64, i32, %struct.ao_convert_fmt }
%struct.ao_convert_fmt = type { i64, i64, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.wasapi_sample_fmt = type { i64, i64, i64 }

@.str = private unnamed_addr constant [54 x i8] c"Unable to construct sample format from WAVEFORMAT %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to construct channel map from WAVEFORMAT %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to convert to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Accepted as %s %s @ %dhz -> %s (%s)\0A\00", align 1
@AUDCLNT_SHAREMODE_EXCLUSIVE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.TYPE_7__*, i64)* @set_ao_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ao_format(%struct.ao* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ao*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wasapi_state*, align 8
  %9 = alloca %struct.wasapi_sample_fmt, align 8
  %10 = alloca %struct.mp_chmap, align 4
  %11 = alloca %struct.ao_convert_fmt, align 8
  store %struct.ao* %0, %struct.ao** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ao*, %struct.ao** %5, align 8
  %13 = getelementptr inbounds %struct.ao, %struct.ao* %12, i32 0, i32 3
  %14 = load %struct.wasapi_state*, %struct.wasapi_state** %13, align 8
  store %struct.wasapi_state* %14, %struct.wasapi_state** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  call void @format_from_waveformat(%struct.wasapi_sample_fmt* sret %9, %struct.TYPE_7__* %15)
  %16 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %9, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.ao*, %struct.ao** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = call i32 @waveformat_to_str(%struct.TYPE_7__* %21)
  %23 = call i32 @MP_ERR(%struct.ao* %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %4, align 4
  br label %108

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @af_fmt_is_pcm(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %79

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = call i32 @chmap_from_waveformat(%struct.mp_chmap* %10, %struct.TYPE_7__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.ao*, %struct.ao** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = call i32 @waveformat_to_str(%struct.TYPE_7__* %35)
  %37 = call i32 @MP_ERR(%struct.ao* %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 0, i32* %4, align 4
  br label %108

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %11, i32 0, i32 0
  %40 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %9, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %9, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %41, %43
  store i64 %44, i64* %39, align 8
  %45 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %11, i32 0, i32 1
  %46 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %9, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %45, align 8
  %48 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %11, i32 0, i32 2
  %49 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %51, align 8
  %54 = call i32 @ao_can_convert_inplace(%struct.ao_convert_fmt* %11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %38
  %57 = load %struct.ao*, %struct.ao** %5, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = call i32 @waveformat_to_str(%struct.TYPE_7__* %58)
  %60 = call i32 @MP_ERR(%struct.ao* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  store i32 0, i32* %4, align 4
  br label %108

61:                                               ; preds = %38
  %62 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %63 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %62, i32 0, i32 2
  %64 = bitcast %struct.ao_convert_fmt* %63 to i8*
  %65 = bitcast %struct.ao_convert_fmt* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 32, i1 false)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ao*, %struct.ao** %5, align 8
  %70 = getelementptr inbounds %struct.ao, %struct.ao* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ao*, %struct.ao** %5, align 8
  %74 = getelementptr inbounds %struct.ao, %struct.ao* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ao*, %struct.ao** %5, align 8
  %76 = getelementptr inbounds %struct.ao, %struct.ao* %75, i32 0, i32 2
  %77 = bitcast %struct.mp_chmap* %76 to i8*
  %78 = bitcast %struct.mp_chmap* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 4 %78, i64 4, i1 false)
  br label %79

79:                                               ; preds = %61, %24
  %80 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %81 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = call i32 @waveformat_copy(i32* %81, %struct.TYPE_7__* %82)
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %86 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.ao*, %struct.ao** %5, align 8
  %88 = load %struct.ao*, %struct.ao** %5, align 8
  %89 = getelementptr inbounds %struct.ao, %struct.ao* %88, i32 0, i32 2
  %90 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %89)
  %91 = load %struct.ao*, %struct.ao** %5, align 8
  %92 = getelementptr inbounds %struct.ao, %struct.ao* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @af_fmt_to_str(i64 %93)
  %95 = load %struct.ao*, %struct.ao** %5, align 8
  %96 = getelementptr inbounds %struct.ao, %struct.ao* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = call i32 @waveformat_to_str(%struct.TYPE_7__* %98)
  %100 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %101 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %107 = call i32 @MP_VERBOSE(%struct.ao* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %94, i32 %97, i32 %99, i8* %106)
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %79, %56, %33, %19
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local void @format_from_waveformat(%struct.wasapi_sample_fmt* sret, %struct.TYPE_7__*) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i32) #1

declare dso_local i32 @waveformat_to_str(%struct.TYPE_7__*) #1

declare dso_local i64 @af_fmt_is_pcm(i64) #1

declare dso_local i32 @chmap_from_waveformat(%struct.mp_chmap*, %struct.TYPE_7__*) #1

declare dso_local i32 @ao_can_convert_inplace(%struct.ao_convert_fmt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @waveformat_copy(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mp_chmap_to_str(%struct.mp_chmap*) #1

declare dso_local i32 @af_fmt_to_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
