; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_ab_loop.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_ab_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.MPContext = type { i32 }

@M_PROPERTY_KEY_ACTION = common dso_local global i32 0, align 4
@M_PROPERTY_GET = common dso_local global i32 0, align 4
@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@M_PROPERTY_SET = common dso_local global i32 0, align 4
@OSD_BAR_SEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_ab_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_ab_loop(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.MPContext*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.MPContext*
  store %struct.MPContext* %14, %struct.MPContext** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @M_PROPERTY_KEY_ACTION, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %20 = load %struct.m_property*, %struct.m_property** %7, align 8
  %21 = load i32, i32* @M_PROPERTY_GET, align 4
  %22 = bitcast double* %11 to i8*
  %23 = call i32 @mp_property_generic_option(%struct.MPContext* %19, %struct.m_property* %20, i32 %21, i8* %22)
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @M_PROPERTY_ERROR, align 4
  store i32 %26, i32* %5, align 4
  br label %54

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load double, double* %11, align 8
  %31 = call i32 @property_time(i32 %28, i8* %29, double %30)
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %4
  %33 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %34 = load %struct.m_property*, %struct.m_property** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @mp_property_generic_option(%struct.MPContext* %33, %struct.m_property* %34, i32 %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @M_PROPERTY_SET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %46 = call i32 @update_ab_loop_clip(%struct.MPContext* %45)
  %47 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %48 = load i32, i32* @OSD_BAR_SEEK, align 4
  %49 = call i32 @set_osd_bar_chapters(%struct.MPContext* %47, i32 %48)
  %50 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %51 = call i32 @mp_wakeup_core(%struct.MPContext* %50)
  br label %52

52:                                               ; preds = %44, %40, %32
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %27, %25
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @mp_property_generic_option(%struct.MPContext*, %struct.m_property*, i32, i8*) #1

declare dso_local i32 @property_time(i32, i8*, double) #1

declare dso_local i32 @update_ab_loop_clip(%struct.MPContext*) #1

declare dso_local i32 @set_osd_bar_chapters(%struct.MPContext*, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
