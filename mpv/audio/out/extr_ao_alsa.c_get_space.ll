; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_get_space.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_get_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32, i32, i64 }

@SND_PCM_STATE_SETUP = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Error received from snd_pcm_avail (%ld, %s with ALSA state %s)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @get_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_space(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.priv*, %struct.priv** %4, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @snd_pcm_state(i32 %16)
  %18 = load i64, i64* @SND_PCM_STATE_SETUP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13, %1
  %21 = load %struct.priv*, %struct.priv** %4, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %13
  %25 = load %struct.priv*, %struct.priv** %4, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_pcm_avail(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EPIPE, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.ao*, %struct.ao** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @snd_strerror(i32 %39)
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @snd_pcm_state(i32 %43)
  %45 = call i32 @snd_pcm_state_name(i64 %44)
  %46 = call i32 @MP_ERR(%struct.ao* %37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40, i32 %45)
  %47 = load %struct.ao*, %struct.ao** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @check_device_present(%struct.ao* %47, i32 %48)
  br label %81

50:                                               ; preds = %31, %24
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @EPIPE, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.ao*, %struct.ao** %3, align 8
  %57 = call i32 @handle_underrun(%struct.ao* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.priv*, %struct.priv** %4, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %58
  %68 = load %struct.priv*, %struct.priv** %4, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.priv*, %struct.priv** %4, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %72, %75
  %77 = load %struct.priv*, %struct.priv** %4, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %71, %20
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @snd_pcm_state(i32) #1

declare dso_local i32 @snd_pcm_avail(i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local i32 @snd_pcm_state_name(i64) #1

declare dso_local i32 @check_device_present(%struct.ao*, i32) #1

declare dso_local i32 @handle_underrun(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
