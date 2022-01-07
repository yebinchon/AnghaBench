; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.mp_chmap, i32, i32, %struct.priv* }
%struct.mp_chmap = type { i32 }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ao_alsa_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"using ALSA version: %s\0A\00", align 1
@INIT_DEVICE_ERR_HWPARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Attempting to work around even more ALSA bugs...\0A\00", align 1
@SND_PCM_NO_AUTO_CHANNELS = common dso_local global i32 0, align 4
@SND_PCM_NO_AUTO_FORMAT = common dso_local global i32 0, align 4
@SND_PCM_NO_AUTO_RESAMPLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Working around braindead dmix multichannel behavior.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_chmap, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %7 = load %struct.ao*, %struct.ao** %2, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 3
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = load %struct.ao*, %struct.ao** %2, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_2__* @mp_get_config_group(%struct.ao* %10, i32 %13, i32* @ao_alsa_conf)
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.ao*, %struct.ao** %2, align 8
  %25 = getelementptr inbounds %struct.ao, %struct.ao* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @af_fmt_from_planar(i32 %26)
  %28 = load %struct.ao*, %struct.ao** %2, align 8
  %29 = getelementptr inbounds %struct.ao, %struct.ao* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.ao*, %struct.ao** %2, align 8
  %32 = call i32 (...) @snd_asoundlib_version()
  %33 = call i32 (%struct.ao*, i8*, ...) @MP_VERBOSE(%struct.ao* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %4, align 4
  %34 = load %struct.ao*, %struct.ao** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @init_device(%struct.ao* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @INIT_DEVICE_ERR_HWPARAMS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = load %struct.ao*, %struct.ao** %2, align 8
  %42 = call i32 @MP_WARN(%struct.ao* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @SND_PCM_NO_AUTO_CHANNELS, align 4
  %44 = load i32, i32* @SND_PCM_NO_AUTO_FORMAT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SND_PCM_NO_AUTO_RESAMPLE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.ao*, %struct.ao** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @init_device(%struct.ao* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %40, %30
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %53
  %57 = load %struct.ao*, %struct.ao** %2, align 8
  %58 = getelementptr inbounds %struct.ao, %struct.ao* %57, i32 0, i32 0
  %59 = bitcast %struct.mp_chmap* %6 to i8*
  %60 = bitcast %struct.mp_chmap* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 8 %60, i64 4, i1 false)
  %61 = call i32 @mp_chmap_remove_na(%struct.mp_chmap* %6)
  %62 = call i64 @mp_chmap_is_valid(%struct.mp_chmap* %6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 2
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.ao*, %struct.ao** %2, align 8
  %70 = getelementptr inbounds %struct.ao, %struct.ao* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.ao*, %struct.ao** %2, align 8
  %76 = call i32 (%struct.ao*, i8*, ...) @MP_VERBOSE(%struct.ao* %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.ao*, %struct.ao** %2, align 8
  %78 = call i32 @uninit(%struct.ao* %77)
  %79 = load %struct.ao*, %struct.ao** %2, align 8
  %80 = getelementptr inbounds %struct.ao, %struct.ao* %79, i32 0, i32 0
  %81 = bitcast %struct.mp_chmap* %80 to i8*
  %82 = bitcast %struct.mp_chmap* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = load %struct.ao*, %struct.ao** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @init_device(%struct.ao* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %74, %68, %64, %56
  br label %87

87:                                               ; preds = %86, %53
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_2__* @mp_get_config_group(%struct.ao*, i32, i32*) #1

declare dso_local i32 @af_fmt_from_planar(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, ...) #1

declare dso_local i32 @snd_asoundlib_version(...) #1

declare dso_local i32 @init_device(%struct.ao*, i32) #1

declare dso_local i32 @MP_WARN(%struct.ao*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_chmap_remove_na(%struct.mp_chmap*) #1

declare dso_local i64 @mp_chmap_is_valid(%struct.mp_chmap*) #1

declare dso_local i32 @uninit(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
