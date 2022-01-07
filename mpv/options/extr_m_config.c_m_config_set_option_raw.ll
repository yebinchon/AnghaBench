; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_option_raw.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_option_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 (i32, %struct.m_config_option*, i8*, i32)*, i32 }
%struct.m_config_option = type { i32 }

@M_OPT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_config_set_option_raw(%struct.m_config* %0, %struct.m_config_option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_config*, align 8
  %7 = alloca %struct.m_config_option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.m_config* %0, %struct.m_config** %6, align 8
  store %struct.m_config_option* %1, %struct.m_config_option** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %12 = icmp ne %struct.m_config_option* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %14, i32* %5, align 4
  br label %46

15:                                               ; preds = %4
  %16 = load %struct.m_config*, %struct.m_config** %6, align 8
  %17 = getelementptr inbounds %struct.m_config, %struct.m_config* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.m_config_option*, i8*, i32)*, i32 (i32, %struct.m_config_option*, i8*, i32)** %17, align 8
  %19 = icmp ne i32 (i32, %struct.m_config_option*, i8*, i32)* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.m_config*, %struct.m_config** %6, align 8
  %22 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @handle_set_opt_flags(%struct.m_config* %21, %struct.m_config_option* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %46

29:                                               ; preds = %20
  %30 = load %struct.m_config*, %struct.m_config** %6, align 8
  %31 = getelementptr inbounds %struct.m_config, %struct.m_config* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.m_config_option*, i8*, i32)*, i32 (i32, %struct.m_config_option*, i8*, i32)** %31, align 8
  %33 = load %struct.m_config*, %struct.m_config** %6, align 8
  %34 = getelementptr inbounds %struct.m_config, %struct.m_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 %32(i32 %35, %struct.m_config_option* %36, i8* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %15
  %41 = load %struct.m_config*, %struct.m_config** %6, align 8
  %42 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @m_config_set_option_raw_direct(%struct.m_config* %41, %struct.m_config_option* %42, i8* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %29, %27, %13
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @handle_set_opt_flags(%struct.m_config*, %struct.m_config_option*, i32) #1

declare dso_local i32 @m_config_set_option_raw_direct(%struct.m_config*, %struct.m_config_option*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
