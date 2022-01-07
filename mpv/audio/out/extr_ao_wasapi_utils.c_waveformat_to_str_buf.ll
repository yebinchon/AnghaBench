; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_waveformat_to_str_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_waveformat_to_str_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.mp_chmap = type { i32 }
%struct.wasapi_sample_fmt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s %s (%d/%d bits) @ %uhz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, %struct.TYPE_5__*)* @waveformat_to_str_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @waveformat_to_str_buf(i8* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.mp_chmap, align 4
  %8 = alloca %struct.wasapi_sample_fmt, align 4
  %9 = alloca { i64, i32 }, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = call i32 @chmap_from_waveformat(%struct.mp_chmap* %7, %struct.TYPE_5__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = call { i64, i32 } @format_from_waveformat(%struct.TYPE_5__* %12)
  store { i64, i32 } %13, { i64, i32 }* %9, align 8
  %14 = bitcast { i64, i32 }* %9 to i8*
  %15 = bitcast %struct.wasapi_sample_fmt* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 8 %14, i64 12, i1 false)
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i8* @mp_chmap_to_str(%struct.mp_chmap* %7)
  %19 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @af_fmt_to_str(i32 %20)
  %22 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @snprintf(i8* %16, i64 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %21, i32 %23, i32 %25, i32 %29)
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

declare dso_local i32 @chmap_from_waveformat(%struct.mp_chmap*, %struct.TYPE_5__*) #1

declare dso_local { i64, i32 } @format_from_waveformat(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @mp_chmap_to_str(%struct.mp_chmap*) #1

declare dso_local i8* @af_fmt_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
