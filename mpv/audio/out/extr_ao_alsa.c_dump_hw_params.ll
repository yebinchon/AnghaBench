; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_dump_hw_params.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_dump_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Dump hwparams error\00", align 1
@MSGL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s---\0A%.*s---\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*, i8*, i32*)* @dump_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_hw_params(%struct.ao* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ao*, %struct.ao** %4, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.priv*, %struct.priv** %7, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snd_pcm_hw_params_dump(i32* %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = call i32 @CHECK_ALSA_WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %9, align 8
  %20 = load %struct.priv*, %struct.priv** %7, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @snd_output_buffer_string(i32 %22, i8** %9)
  store i64 %23, i64* %10, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.ao*, %struct.ao** %4, align 8
  %28 = getelementptr inbounds %struct.ao, %struct.ao* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MSGL_DEBUG, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @mp_msg(i32 %29, i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %26, %3
  %37 = load %struct.priv*, %struct.priv** %7, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_output_flush(i32 %39)
  ret void
}

declare dso_local i32 @snd_pcm_hw_params_dump(i32*, i32) #1

declare dso_local i32 @CHECK_ALSA_WARN(i8*) #1

declare dso_local i64 @snd_output_buffer_string(i32, i8**) #1

declare dso_local i32 @mp_msg(i32, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @snd_output_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
