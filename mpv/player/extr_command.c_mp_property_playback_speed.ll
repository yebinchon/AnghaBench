; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_playback_speed.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_playback_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { double }

@.str = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_playback_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_playback_speed(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  store double %19, double* %11, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %38 [
    i32 128, label %21
    i32 129, label %32
  ]

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.m_property*, %struct.m_property** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @mp_property_generic_option(%struct.TYPE_7__* %22, %struct.m_property* %23, i32 %24, i8* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = call i32 @update_playback_speed(%struct.TYPE_7__* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = call i32 @mp_wakeup_core(%struct.TYPE_7__* %29)
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %44

32:                                               ; preds = %4
  %33 = load double, double* %11, align 8
  %34 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double %33)
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to i8**
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = load %struct.m_property*, %struct.m_property** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @mp_property_generic_option(%struct.TYPE_7__* %39, %struct.m_property* %40, i32 %41, i8* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %32, %21
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_7__*, %struct.m_property*, i32, i8*) #1

declare dso_local i32 @update_playback_speed(%struct.TYPE_7__*) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_7__*) #1

declare dso_local i8* @talloc_asprintf(i32*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
