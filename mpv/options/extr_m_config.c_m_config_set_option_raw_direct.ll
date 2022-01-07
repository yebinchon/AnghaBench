; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_option_raw_direct.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_option_raw_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 }
%struct.m_config_option = type { i32, i32 }

@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@M_SETOPT_FROM_CMDLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_config_set_option_raw_direct(%struct.m_config* %0, %struct.m_config_option* %1, i8* %2, i32 %3) #0 {
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
  br label %65

15:                                               ; preds = %4
  %16 = load %struct.m_config*, %struct.m_config** %6, align 8
  %17 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @handle_set_opt_flags(%struct.m_config* %16, %struct.m_config_option* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %65

24:                                               ; preds = %15
  %25 = load %struct.m_config*, %struct.m_config** %6, align 8
  %26 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @m_config_handle_special_options(%struct.m_config* %25, %struct.m_config_option* %26, i8* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @M_OPT_UNKNOWN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %65

35:                                               ; preds = %24
  %36 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %37 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @M_SETOPT_FROM_CMDLINE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @M_OPT_UNKNOWN, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  store i32 %49, i32* %5, align 4
  br label %65

50:                                               ; preds = %35
  %51 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %52 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %55 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @m_option_copy(i32 %53, i32 %56, i8* %57)
  %59 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @m_config_mark_co_flags(%struct.m_config_option* %59, i32 %60)
  %62 = load %struct.m_config*, %struct.m_config** %6, align 8
  %63 = load %struct.m_config_option*, %struct.m_config_option** %7, align 8
  %64 = call i32 @m_config_notify_change_co(%struct.m_config* %62, %struct.m_config_option* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %50, %48, %33, %22, %13
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @handle_set_opt_flags(%struct.m_config*, %struct.m_config_option*, i32) #1

declare dso_local i32 @m_config_handle_special_options(%struct.m_config*, %struct.m_config_option*, i8*, i32) #1

declare dso_local i32 @m_option_copy(i32, i32, i8*) #1

declare dso_local i32 @m_config_mark_co_flags(%struct.m_config_option*, i32) #1

declare dso_local i32 @m_config_notify_change_co(%struct.m_config*, %struct.m_config_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
