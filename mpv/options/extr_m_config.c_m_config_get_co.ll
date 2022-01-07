; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_co.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_co.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_option = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.m_config = type { i32 }
%struct.bstr = type { i32 }

@m_option_type_cli_alias = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_config_option* @m_config_get_co(%struct.m_config* %0, i32 %1) #0 {
  %3 = alloca %struct.bstr, align 4
  %4 = alloca %struct.m_config*, align 8
  %5 = alloca %struct.m_config_option*, align 8
  %6 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.m_config* %0, %struct.m_config** %4, align 8
  %7 = load %struct.m_config*, %struct.m_config** %4, align 8
  %8 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.m_config_option* @m_config_get_co_any(%struct.m_config* %7, i32 %9)
  store %struct.m_config_option* %10, %struct.m_config_option** %5, align 8
  %11 = load %struct.m_config_option*, %struct.m_config_option** %5, align 8
  %12 = icmp ne %struct.m_config_option* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.m_config_option*, %struct.m_config_option** %5, align 8
  %15 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, @m_option_type_cli_alias
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store %struct.m_config_option* null, %struct.m_config_option** %5, align 8
  br label %21

21:                                               ; preds = %20, %13, %2
  %22 = load %struct.m_config_option*, %struct.m_config_option** %5, align 8
  ret %struct.m_config_option* %22
}

declare dso_local %struct.m_config_option* @m_config_get_co_any(%struct.m_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
