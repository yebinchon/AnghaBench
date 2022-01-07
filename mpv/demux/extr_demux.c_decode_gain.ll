; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_decode_gain.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_decode_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_tags = type { i32 }

@MSGL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid replaygain value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.mp_tags*, i8*, float*)* @decode_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_gain(%struct.mp_log* %0, %struct.mp_tags* %1, i8* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.mp_tags*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  store %struct.mp_log* %0, %struct.mp_log** %6, align 8
  store %struct.mp_tags* %1, %struct.mp_tags** %7, align 8
  store i8* %2, i8** %8, align 8
  store float* %3, float** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.mp_tags*, %struct.mp_tags** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i8* @mp_tags_get_str(%struct.mp_tags* %12, i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %29

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @decode_float(i8* %19, float* %11)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %24 = load i32, i32* @MSGL_ERR, align 4
  %25 = call i32 @mp_msg(%struct.mp_log* %23, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load float, float* %11, align 4
  %28 = load float*, float** %9, align 8
  store float %27, float* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %22, %17
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i8* @mp_tags_get_str(%struct.mp_tags*, i8*) #1

declare dso_local i64 @decode_float(i8*, float*) #1

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
