; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_option_requires_param.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_option_requires_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 }
%struct.m_config_option = type { i32 }

@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@M_OPT_TYPE_OPTIONAL_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_config_option_requires_param(%struct.m_config* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_config_option*, align 8
  store %struct.m_config* %0, %struct.m_config** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.m_config*, %struct.m_config** %4, align 8
  %10 = call %struct.m_config_option* @m_config_mogrify_cli_opt(%struct.m_config* %9, i32* %5, i32* %6, i32* %7)
  store %struct.m_config_option* %10, %struct.m_config_option** %8, align 8
  %11 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %12 = icmp ne %struct.m_config_option* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @M_OPT_TYPE_OPTIONAL_PARAM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %29

24:                                               ; preds = %18
  %25 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %26 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @m_option_required_params(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %23, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.m_config_option* @m_config_mogrify_cli_opt(%struct.m_config*, i32*, i32*, i32*) #1

declare dso_local i32 @m_option_required_params(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
