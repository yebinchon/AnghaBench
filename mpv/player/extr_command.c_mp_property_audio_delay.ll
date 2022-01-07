; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_audio_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_audio_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_6__ = type { float, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { float }

@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_audio_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_audio_delay(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  store float %19, float* %11, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %58 [
    i32 129, label %21
    i32 128, label %27
  ]

21:                                               ; preds = %4
  %22 = load float, float* %11, align 4
  %23 = call i8* @format_delay(float %22)
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %64

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = load %struct.m_property*, %struct.m_property** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @mp_property_generic_option(%struct.TYPE_6__* %28, %struct.m_property* %29, i32 %30, i8* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = load float, float* %11, align 4
  %49 = fsub float %47, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load float, float* %51, align 8
  %53 = fadd float %52, %49
  store float %53, float* %51, align 8
  br label %54

54:                                               ; preds = %42, %37, %27
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = call i32 @mp_wakeup_core(%struct.TYPE_6__* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %64

58:                                               ; preds = %4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = load %struct.m_property*, %struct.m_property** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @mp_property_generic_option(%struct.TYPE_6__* %59, %struct.m_property* %60, i32 %61, i8* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %54, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i8* @format_delay(float) #1

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_6__*, %struct.m_property*, i32, i8*) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
