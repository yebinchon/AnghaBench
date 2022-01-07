; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_from_obj_desc.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_from_obj_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32, %struct.mpv_global* }
%struct.mp_log = type { i32 }
%struct.mpv_global = type { i32 }
%struct.m_obj_desc = type { i32 (%struct.mpv_global*, i32)*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.m_config* (i8*, %struct.mp_log*, %struct.mpv_global*, %struct.m_obj_desc*)* @m_config_from_obj_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.m_config* @m_config_from_obj_desc(i8* %0, %struct.mp_log* %1, %struct.mpv_global* %2, %struct.m_obj_desc* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.mpv_global*, align 8
  %8 = alloca %struct.m_obj_desc*, align 8
  %9 = alloca %struct.m_config*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.mp_log* %1, %struct.mp_log** %6, align 8
  store %struct.mpv_global* %2, %struct.mpv_global** %7, align 8
  store %struct.m_obj_desc* %3, %struct.m_obj_desc** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %12 = load %struct.m_obj_desc*, %struct.m_obj_desc** %8, align 8
  %13 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.m_obj_desc*, %struct.m_obj_desc** %8, align 8
  %16 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.m_obj_desc*, %struct.m_obj_desc** %8, align 8
  %19 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.m_config* @m_config_new(i8* %10, %struct.mp_log* %11, i32 %14, i32 %17, i32 %20)
  store %struct.m_config* %21, %struct.m_config** %9, align 8
  %22 = load %struct.mpv_global*, %struct.mpv_global** %7, align 8
  %23 = load %struct.m_config*, %struct.m_config** %9, align 8
  %24 = getelementptr inbounds %struct.m_config, %struct.m_config* %23, i32 0, i32 1
  store %struct.mpv_global* %22, %struct.mpv_global** %24, align 8
  %25 = load %struct.m_obj_desc*, %struct.m_obj_desc** %8, align 8
  %26 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %25, i32 0, i32 0
  %27 = load i32 (%struct.mpv_global*, i32)*, i32 (%struct.mpv_global*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.mpv_global*, i32)* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %4
  %30 = load %struct.m_config*, %struct.m_config** %9, align 8
  %31 = getelementptr inbounds %struct.m_config, %struct.m_config* %30, i32 0, i32 1
  %32 = load %struct.mpv_global*, %struct.mpv_global** %31, align 8
  %33 = icmp ne %struct.mpv_global* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.m_obj_desc*, %struct.m_obj_desc** %8, align 8
  %36 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %35, i32 0, i32 0
  %37 = load i32 (%struct.mpv_global*, i32)*, i32 (%struct.mpv_global*, i32)** %36, align 8
  %38 = load %struct.m_config*, %struct.m_config** %9, align 8
  %39 = getelementptr inbounds %struct.m_config, %struct.m_config* %38, i32 0, i32 1
  %40 = load %struct.mpv_global*, %struct.mpv_global** %39, align 8
  %41 = load %struct.m_config*, %struct.m_config** %9, align 8
  %42 = getelementptr inbounds %struct.m_config, %struct.m_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %37(%struct.mpv_global* %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %29, %4
  %46 = load %struct.m_config*, %struct.m_config** %9, align 8
  ret %struct.m_config* %46
}

declare dso_local %struct.m_config* @m_config_new(i8*, %struct.mp_log*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
