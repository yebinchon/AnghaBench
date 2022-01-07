; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_set_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_set_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.m_obj_settings = type { i32 }
%struct.m_config_option = type { i32, %struct.m_obj_settings** }

@filter_opt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32, %struct.m_obj_settings*)* @set_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_filters(%struct.MPContext* %0, i32 %1, %struct.m_obj_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.m_obj_settings*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.m_config_option*, align 8
  %10 = alloca %struct.m_obj_settings**, align 8
  %11 = alloca %struct.m_obj_settings*, align 8
  %12 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.m_obj_settings* %2, %struct.m_obj_settings** %7, align 8
  %13 = load i32*, i32** @filter_opt, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bstr0(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.m_config_option* @m_config_get_co(i32 %21, i32 %22)
  store %struct.m_config_option* %23, %struct.m_config_option** %9, align 8
  %24 = load %struct.m_config_option*, %struct.m_config_option** %9, align 8
  %25 = icmp ne %struct.m_config_option* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %72

27:                                               ; preds = %3
  %28 = load %struct.m_config_option*, %struct.m_config_option** %9, align 8
  %29 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %28, i32 0, i32 1
  %30 = load %struct.m_obj_settings**, %struct.m_obj_settings*** %29, align 8
  store %struct.m_obj_settings** %30, %struct.m_obj_settings*** %10, align 8
  %31 = load %struct.m_obj_settings**, %struct.m_obj_settings*** %10, align 8
  %32 = load %struct.m_obj_settings*, %struct.m_obj_settings** %31, align 8
  store %struct.m_obj_settings* %32, %struct.m_obj_settings** %11, align 8
  %33 = load %struct.m_obj_settings**, %struct.m_obj_settings*** %10, align 8
  store %struct.m_obj_settings* null, %struct.m_obj_settings** %33, align 8
  %34 = load %struct.m_config_option*, %struct.m_config_option** %9, align 8
  %35 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.m_obj_settings**, %struct.m_obj_settings*** %10, align 8
  %38 = call i32 @m_option_copy(i32 %36, %struct.m_obj_settings** %37, %struct.m_obj_settings** %7)
  %39 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @reinit_filters(%struct.MPContext* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %27
  %45 = load %struct.m_config_option*, %struct.m_config_option** %9, align 8
  %46 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @m_option_free(i32 %47, %struct.m_obj_settings** %11)
  %49 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %50 = load i32*, i32** @filter_opt, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mp_notify_property(%struct.MPContext* %49, i32 %54)
  br label %67

56:                                               ; preds = %27
  %57 = load %struct.m_config_option*, %struct.m_config_option** %9, align 8
  %58 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.m_obj_settings**, %struct.m_obj_settings*** %10, align 8
  %61 = call i32 @m_option_free(i32 %59, %struct.m_obj_settings** %60)
  %62 = load %struct.m_obj_settings*, %struct.m_obj_settings** %11, align 8
  %63 = load %struct.m_obj_settings**, %struct.m_obj_settings*** %10, align 8
  store %struct.m_obj_settings* %62, %struct.m_obj_settings** %63, align 8
  %64 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @reinit_filters(%struct.MPContext* %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %44
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 -1
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %26
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @bstr0(i32) #1

declare dso_local %struct.m_config_option* @m_config_get_co(i32, i32) #1

declare dso_local i32 @m_option_copy(i32, %struct.m_obj_settings**, %struct.m_obj_settings**) #1

declare dso_local i32 @reinit_filters(%struct.MPContext*, i32) #1

declare dso_local i32 @m_option_free(i32, %struct.m_obj_settings**) #1

declare dso_local i32 @mp_notify_property(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
