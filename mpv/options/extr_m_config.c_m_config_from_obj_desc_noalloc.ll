; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_from_obj_desc_noalloc.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_from_obj_desc_noalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 }
%struct.mp_log = type { i32 }
%struct.m_obj_desc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_config* @m_config_from_obj_desc_noalloc(i8* %0, %struct.mp_log* %1, %struct.m_obj_desc* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca %struct.m_obj_desc*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mp_log* %1, %struct.mp_log** %5, align 8
  store %struct.m_obj_desc* %2, %struct.m_obj_desc** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %9 = load %struct.m_obj_desc*, %struct.m_obj_desc** %6, align 8
  %10 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.m_obj_desc*, %struct.m_obj_desc** %6, align 8
  %13 = getelementptr inbounds %struct.m_obj_desc, %struct.m_obj_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.m_config* @m_config_new(i8* %7, %struct.mp_log* %8, i32 0, i32 %11, i32 %14)
  ret %struct.m_config* %15
}

declare dso_local %struct.m_config* @m_config_new(i8*, %struct.mp_log*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
