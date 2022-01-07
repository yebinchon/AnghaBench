; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_find_group.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_find_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.m_option* }
%struct.mpv_global = type { %struct.m_config_shadow* }
%struct.m_config_shadow = type { i32, %struct.m_config_group* }
%struct.m_option = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.m_config_group* (%struct.mpv_global*, %struct.m_option*)* @find_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.m_config_group* @find_group(%struct.mpv_global* %0, %struct.m_option* %1) #0 {
  %3 = alloca %struct.m_config_group*, align 8
  %4 = alloca %struct.mpv_global*, align 8
  %5 = alloca %struct.m_option*, align 8
  %6 = alloca %struct.m_config_shadow*, align 8
  %7 = alloca i32, align 4
  store %struct.mpv_global* %0, %struct.mpv_global** %4, align 8
  store %struct.m_option* %1, %struct.m_option** %5, align 8
  %8 = load %struct.mpv_global*, %struct.mpv_global** %4, align 8
  %9 = getelementptr inbounds %struct.mpv_global, %struct.mpv_global* %8, i32 0, i32 0
  %10 = load %struct.m_config_shadow*, %struct.m_config_shadow** %9, align 8
  store %struct.m_config_shadow* %10, %struct.m_config_shadow** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.m_config_shadow*, %struct.m_config_shadow** %6, align 8
  %14 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.m_config_shadow*, %struct.m_config_shadow** %6, align 8
  %19 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %18, i32 0, i32 1
  %20 = load %struct.m_config_group*, %struct.m_config_group** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %20, i64 %22
  %24 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.m_option*, %struct.m_option** %26, align 8
  %28 = load %struct.m_option*, %struct.m_option** %5, align 8
  %29 = icmp eq %struct.m_option* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load %struct.m_config_shadow*, %struct.m_config_shadow** %6, align 8
  %32 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %31, i32 0, i32 1
  %33 = load %struct.m_config_group*, %struct.m_config_group** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %33, i64 %35
  store %struct.m_config_group* %36, %struct.m_config_group** %3, align 8
  br label %42

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %11

41:                                               ; preds = %11
  store %struct.m_config_group* null, %struct.m_config_group** %3, align 8
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.m_config_group*, %struct.m_config_group** %3, align 8
  ret %struct.m_config_group* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
