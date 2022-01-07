; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-enum-devices.c_pulseaudio_output_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-enum-devices.c_pulseaudio_output_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.enum_cb = type { i32, i64 (i32, i32, i32)*, i64 }

@PA_INVALID_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i8*)* @pulseaudio_output_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulseaudio_output_info(i32* %0, %struct.TYPE_3__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.enum_cb*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @UNUSED_PARAMETER(i32* %10)
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PA_INVALID_INDEX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %4
  br label %45

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.enum_cb*
  store %struct.enum_cb* %23, %struct.enum_cb** %9, align 8
  %24 = load %struct.enum_cb*, %struct.enum_cb** %9, align 8
  %25 = getelementptr inbounds %struct.enum_cb, %struct.enum_cb* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.enum_cb*, %struct.enum_cb** %9, align 8
  %30 = getelementptr inbounds %struct.enum_cb, %struct.enum_cb* %29, i32 0, i32 1
  %31 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %30, align 8
  %32 = load %struct.enum_cb*, %struct.enum_cb** %9, align 8
  %33 = getelementptr inbounds %struct.enum_cb, %struct.enum_cb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 %31(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.enum_cb*, %struct.enum_cb** %9, align 8
  %43 = getelementptr inbounds %struct.enum_cb, %struct.enum_cb* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %28, %21
  br label %45

45:                                               ; preds = %44, %20
  %46 = call i32 @pulseaudio_signal(i32 0)
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @pulseaudio_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
