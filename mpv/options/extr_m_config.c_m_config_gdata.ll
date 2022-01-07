; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_gdata.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_gdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_group_data = type { i32 }
%struct.m_config_data = type { i32, i32, %struct.m_group_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.m_group_data* (%struct.m_config_data*, i32)* @m_config_gdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.m_group_data* @m_config_gdata(%struct.m_config_data* %0, i32 %1) #0 {
  %3 = alloca %struct.m_group_data*, align 8
  %4 = alloca %struct.m_config_data*, align 8
  %5 = alloca i32, align 4
  store %struct.m_config_data* %0, %struct.m_config_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %8 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %14 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %17 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = icmp sge i32 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11, %2
  store %struct.m_group_data* null, %struct.m_group_data** %3, align 8
  br label %33

22:                                               ; preds = %11
  %23 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %24 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %23, i32 0, i32 2
  %25 = load %struct.m_group_data*, %struct.m_group_data** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %28 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %25, i64 %31
  store %struct.m_group_data* %32, %struct.m_group_data** %3, align 8
  br label %33

33:                                               ; preds = %22, %21
  %34 = load %struct.m_group_data*, %struct.m_group_data** %3, align 8
  ret %struct.m_group_data* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
