; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pcm.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pcm.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.priv* }
%struct.TYPE_2__ = type { i32 }
%struct.priv = type { i32, i64, i64, i64 }
%struct.mp_chmap_sel = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"audiodump.wav\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"audiodump.pcm\00", align 1
@BYTE_ORDER = common dso_local global i64 0, align 8
@BIG_ENDIAN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Not supported on big endian.\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"File: %s (%s)\0APCM: Samplerate: %d Hz Channels: %d Format: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"RAW PCM\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to open %s for writing!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_chmap_sel, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 5
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.priv*, %struct.priv** %4, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  %21 = call i64 @talloc_strdup(%struct.priv* %14, i8* %20)
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.ao*, %struct.ao** %3, align 8
  %26 = getelementptr inbounds %struct.ao, %struct.ao* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @af_fmt_from_planar(i32 %27)
  %29 = load %struct.ao*, %struct.ao** %3, align 8
  %30 = getelementptr inbounds %struct.ao, %struct.ao* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.priv*, %struct.priv** %4, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %24
  %36 = load i64, i64* @BYTE_ORDER, align 8
  %37 = load i64, i64* @BIG_ENDIAN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.ao*, %struct.ao** %3, align 8
  %41 = call i32 @MP_FATAL(%struct.ao* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %141

42:                                               ; preds = %35
  %43 = load %struct.ao*, %struct.ao** %3, align 8
  %44 = getelementptr inbounds %struct.ao, %struct.ao* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %47 [
    i32 128, label %46
    i32 130, label %46
    i32 129, label %46
    i32 131, label %46
  ]

46:                                               ; preds = %42, %42, %42, %42
  br label %57

47:                                               ; preds = %42
  %48 = load %struct.ao*, %struct.ao** %3, align 8
  %49 = getelementptr inbounds %struct.ao, %struct.ao* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @af_fmt_is_spdif(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load %struct.ao*, %struct.ao** %3, align 8
  %55 = getelementptr inbounds %struct.ao, %struct.ao* %54, i32 0, i32 0
  store i32 130, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %24
  %59 = bitcast %struct.mp_chmap_sel* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %59, i8 0, i64 4, i1 false)
  %60 = call i32 @mp_chmap_sel_add_waveext(%struct.mp_chmap_sel* %5)
  %61 = load %struct.ao*, %struct.ao** %3, align 8
  %62 = load %struct.ao*, %struct.ao** %3, align 8
  %63 = getelementptr inbounds %struct.ao, %struct.ao* %62, i32 0, i32 4
  %64 = call i32 @ao_chmap_sel_adjust(%struct.ao* %61, %struct.mp_chmap_sel* %5, %struct.TYPE_2__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 -1, i32* %2, align 4
  br label %141

67:                                               ; preds = %58
  %68 = load %struct.ao*, %struct.ao** %3, align 8
  %69 = getelementptr inbounds %struct.ao, %struct.ao* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ao*, %struct.ao** %3, align 8
  %73 = getelementptr inbounds %struct.ao, %struct.ao* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = load %struct.ao*, %struct.ao** %3, align 8
  %77 = getelementptr inbounds %struct.ao, %struct.ao* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @af_fmt_to_bytes(i32 %78)
  %80 = mul nsw i32 %75, %79
  %81 = load %struct.ao*, %struct.ao** %3, align 8
  %82 = getelementptr inbounds %struct.ao, %struct.ao* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ao*, %struct.ao** %3, align 8
  %84 = load %struct.priv*, %struct.priv** %4, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.priv*, %struct.priv** %4, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %93 = load %struct.ao*, %struct.ao** %3, align 8
  %94 = getelementptr inbounds %struct.ao, %struct.ao* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ao*, %struct.ao** %3, align 8
  %97 = getelementptr inbounds %struct.ao, %struct.ao* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ao*, %struct.ao** %3, align 8
  %101 = getelementptr inbounds %struct.ao, %struct.ao* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @af_fmt_to_str(i32 %102)
  %104 = call i32 @MP_INFO(%struct.ao* %83, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %86, i8* %92, i32 %95, i32 %99, i32 %103)
  %105 = load %struct.priv*, %struct.priv** %4, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.priv*, %struct.priv** %4, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %114 = call i32 @fopen(i64 %107, i8* %113)
  %115 = load %struct.priv*, %struct.priv** %4, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.priv*, %struct.priv** %4, align 8
  %118 = getelementptr inbounds %struct.priv, %struct.priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %67
  %122 = load %struct.ao*, %struct.ao** %3, align 8
  %123 = load %struct.priv*, %struct.priv** %4, align 8
  %124 = getelementptr inbounds %struct.priv, %struct.priv* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @MP_ERR(%struct.ao* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %125)
  store i32 -1, i32* %2, align 4
  br label %141

127:                                              ; preds = %67
  %128 = load %struct.priv*, %struct.priv** %4, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.ao*, %struct.ao** %3, align 8
  %134 = load %struct.priv*, %struct.priv** %4, align 8
  %135 = getelementptr inbounds %struct.priv, %struct.priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @write_wave_header(%struct.ao* %133, i32 %136, i32 2147479552)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load %struct.ao*, %struct.ao** %3, align 8
  %140 = getelementptr inbounds %struct.ao, %struct.ao* %139, i32 0, i32 3
  store i32 1, i32* %140, align 4
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %121, %66, %39
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @talloc_strdup(%struct.priv*, i8*) #1

declare dso_local i32 @af_fmt_from_planar(i32) #1

declare dso_local i32 @MP_FATAL(%struct.ao*, i8*) #1

declare dso_local i32 @af_fmt_is_spdif(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_chmap_sel_add_waveext(%struct.mp_chmap_sel*) #1

declare dso_local i32 @ao_chmap_sel_adjust(%struct.ao*, %struct.mp_chmap_sel*, %struct.TYPE_2__*) #1

declare dso_local i32 @af_fmt_to_bytes(i32) #1

declare dso_local i32 @MP_INFO(%struct.ao*, i8*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @af_fmt_to_str(i32) #1

declare dso_local i32 @fopen(i64, i8*) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i64) #1

declare dso_local i32 @write_wave_header(%struct.ao*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
