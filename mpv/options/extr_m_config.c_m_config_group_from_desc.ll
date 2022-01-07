; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_group_from_desc.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_group_from_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mpv_global = type { i32 }
%struct.m_obj_desc = type { i32, i32, i32 }
%struct.m_config_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @m_config_group_from_desc(i8* %0, %struct.mp_log* %1, %struct.mpv_global* %2, %struct.m_obj_desc* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.mpv_global*, align 8
  %10 = alloca %struct.m_obj_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.m_config_group*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.mp_log* %1, %struct.mp_log** %8, align 8
  store %struct.mpv_global* %2, %struct.mpv_global** %9, align 8
  store %struct.m_obj_desc* %3, %struct.m_obj_desc** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %15 = load %struct.m_obj_desc*, %struct.m_obj_desc** %10, align 8
  %16 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.m_config_group* @find_group(%struct.mpv_global* %14, i32 %17)
  store %struct.m_config_group* %18, %struct.m_config_group** %12, align 8
  %19 = load %struct.m_config_group*, %struct.m_config_group** %12, align 8
  %20 = icmp ne %struct.m_config_group* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %24 = load %struct.m_config_group*, %struct.m_config_group** %12, align 8
  %25 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @mp_get_config_group(i8* %22, %struct.mpv_global* %23, i32 %26)
  store i8* %27, i8** %6, align 8
  br label %49

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.m_obj_desc*, %struct.m_obj_desc** %10, align 8
  %31 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @talloc_zero_size(i8* %29, i32 %32)
  store i8* %33, i8** %13, align 8
  %34 = load %struct.m_obj_desc*, %struct.m_obj_desc** %10, align 8
  %35 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i8*, i8** %13, align 8
  %40 = load %struct.m_obj_desc*, %struct.m_obj_desc** %10, align 8
  %41 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.m_obj_desc*, %struct.m_obj_desc** %10, align 8
  %44 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i8* %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %28
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %47, %21
  %50 = load i8*, i8** %6, align 8
  ret i8* %50
}

declare dso_local %struct.m_config_group* @find_group(%struct.mpv_global*, i32) #1

declare dso_local i8* @mp_get_config_group(i8*, %struct.mpv_global*, i32) #1

declare dso_local i8* @talloc_zero_size(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
