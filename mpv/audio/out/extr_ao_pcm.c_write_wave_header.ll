; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pcm.c_write_wave_header.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pcm.c_write_wave_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_FORMAT_FLOAT = common dso_local global i64 0, align 8
@WAV_ID_FLOAT_PCM = common dso_local global i32 0, align 4
@WAV_ID_PCM = common dso_local global i32 0, align 4
@WAV_ID_RIFF = common dso_local global i32 0, align 4
@WAV_ID_WAVE = common dso_local global i32 0, align 4
@WAV_ID_FMT = common dso_local global i32 0, align 4
@WAV_ID_FORMAT_EXTENSIBLE = common dso_local global i32 0, align 4
@WAV_ID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*, i32*, i32)* @write_wave_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_wave_header(%struct.ao* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ao*, %struct.ao** %4, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_FORMAT_FLOAT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @WAV_ID_FLOAT_PCM, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @WAV_ID_PCM, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ao*, %struct.ao** %4, align 8
  %21 = getelementptr inbounds %struct.ao, %struct.ao* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @af_fmt_to_bytes(i64 %22)
  %24 = mul nsw i32 %23, 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @WAV_ID_RIFF, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @fput32le(i32 %25, i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 60, %28
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @fput32le(i32 %29, i32* %30)
  %32 = load i32, i32* @WAV_ID_WAVE, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fput32le(i32 %32, i32* %33)
  %35 = load i32, i32* @WAV_ID_FMT, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fput32le(i32 %35, i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fput32le(i32 40, i32* %38)
  %40 = load i32, i32* @WAV_ID_FORMAT_EXTENSIBLE, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fput16le(i32 %40, i32* %41)
  %43 = load %struct.ao*, %struct.ao** %4, align 8
  %44 = getelementptr inbounds %struct.ao, %struct.ao* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @fput16le(i32 %46, i32* %47)
  %49 = load %struct.ao*, %struct.ao** %4, align 8
  %50 = getelementptr inbounds %struct.ao, %struct.ao* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @fput32le(i32 %51, i32* %52)
  %54 = load %struct.ao*, %struct.ao** %4, align 8
  %55 = getelementptr inbounds %struct.ao, %struct.ao* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @fput32le(i32 %56, i32* %57)
  %59 = load %struct.ao*, %struct.ao** %4, align 8
  %60 = getelementptr inbounds %struct.ao, %struct.ao* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sdiv i32 %63, 8
  %65 = mul nsw i32 %62, %64
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @fput16le(i32 %65, i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @fput16le(i32 %68, i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @fput16le(i32 22, i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @fput16le(i32 %73, i32* %74)
  %76 = load %struct.ao*, %struct.ao** %4, align 8
  %77 = getelementptr inbounds %struct.ao, %struct.ao* %76, i32 0, i32 3
  %78 = call i32 @mp_chmap_to_waveext(%struct.TYPE_2__* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @fput32le(i32 %78, i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @fput32le(i32 %81, i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @fput32le(i32 1048576, i32* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @fput32le(i32 -1442840448, i32* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @fput32le(i32 1905997824, i32* %88)
  %90 = load i32, i32* @WAV_ID_DATA, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @fput32le(i32 %90, i32* %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @fput32le(i32 %93, i32* %94)
  ret void
}

declare dso_local i32 @af_fmt_to_bytes(i64) #1

declare dso_local i32 @fput32le(i32, i32*) #1

declare dso_local i32 @fput16le(i32, i32*) #1

declare dso_local i32 @mp_chmap_to_waveext(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
