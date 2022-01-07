; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_create.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder = type { %struct.mp_filter* }
%struct.mp_filter = type { %struct.priv*, i32 }
%struct.priv = type { %struct.mp_decoder }
%struct.mp_codec_params = type { i32 }

@ad_lavc_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_decoder* (%struct.mp_filter*, %struct.mp_codec_params*, i8*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_decoder* @create(%struct.mp_filter* %0, %struct.mp_codec_params* %1, i8* %2) #0 {
  %4 = alloca %struct.mp_decoder*, align 8
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca %struct.mp_codec_params*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_filter*, align 8
  %9 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store %struct.mp_codec_params* %1, %struct.mp_codec_params** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %11 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %10, i32* @ad_lavc_filter)
  store %struct.mp_filter* %11, %struct.mp_filter** %8, align 8
  %12 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %13 = icmp ne %struct.mp_filter* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.mp_decoder* null, %struct.mp_decoder** %4, align 8
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %17 = load i32, i32* @MP_PIN_IN, align 4
  %18 = call i32 @mp_filter_add_pin(%struct.mp_filter* %16, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %20 = load i32, i32* @MP_PIN_OUT, align 4
  %21 = call i32 @mp_filter_add_pin(%struct.mp_filter* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %23 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %24 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mp_log_new(%struct.mp_filter* %22, i32 %25, i32* null)
  %27 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %28 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %30 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %29, i32 0, i32 0
  %31 = load %struct.priv*, %struct.priv** %30, align 8
  store %struct.priv* %31, %struct.priv** %9, align 8
  %32 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %33 = load %struct.priv*, %struct.priv** %9, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.mp_decoder, %struct.mp_decoder* %34, i32 0, i32 0
  store %struct.mp_filter* %32, %struct.mp_filter** %35, align 8
  %36 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %37 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @init(%struct.mp_filter* %36, %struct.mp_codec_params* %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %15
  %42 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %43 = call i32 @talloc_free(%struct.mp_filter* %42)
  store %struct.mp_decoder* null, %struct.mp_decoder** %4, align 8
  br label %47

44:                                               ; preds = %15
  %45 = load %struct.priv*, %struct.priv** %9, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  store %struct.mp_decoder* %46, %struct.mp_decoder** %4, align 8
  br label %47

47:                                               ; preds = %44, %41, %14
  %48 = load %struct.mp_decoder*, %struct.mp_decoder** %4, align 8
  ret %struct.mp_decoder* %48
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i32 @mp_log_new(%struct.mp_filter*, i32, i32*) #1

declare dso_local i32 @init(%struct.mp_filter*, %struct.mp_codec_params*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
