; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_win_minimized.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_win_minimized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_2__ = type { %struct.vo* }
%struct.vo = type { i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@VOCTRL_GET_WIN_STATE = common dso_local global i32 0, align 4
@VO_WIN_STATE_MINIMIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_win_minimized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_win_minimized(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.vo*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.vo*, %struct.vo** %16, align 8
  store %struct.vo* %17, %struct.vo** %11, align 8
  %18 = load %struct.vo*, %struct.vo** %11, align 8
  %19 = icmp ne %struct.vo* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %21, i32* %5, align 4
  br label %36

22:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %23 = load %struct.vo*, %struct.vo** %11, align 8
  %24 = load i32, i32* @VOCTRL_GET_WIN_STATE, align 4
  %25 = call i32 @vo_control(%struct.vo* %23, i32 %24, i32* %12)
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @VO_WIN_STATE_MINIMIZED, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @m_property_flag_ro(i32 %30, i8* %31, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %27, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @vo_control(%struct.vo*, i32, i32*) #1

declare dso_local i32 @m_property_flag_ro(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
