; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_edit_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_edit_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.mp_log = type { i32 }
%struct.m_config_option = type { i32, i32 }
%struct.m_obj_settings = type { i32 }

@filter_opt = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%.*s-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, %struct.mp_log*, i32, i8*, i8*)* @edit_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_filters(%struct.MPContext* %0, %struct.mp_log* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.m_config_option*, align 8
  %14 = alloca [20 x i8], align 16
  %15 = alloca %struct.m_obj_settings*, align 8
  %16 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %7, align 8
  store %struct.mp_log* %1, %struct.mp_log** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8**, i8*** @filter_opt, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @bstr0(i8* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.m_config_option* @m_config_get_co(i32 %25, i32 %26)
  store %struct.m_config_option* %27, %struct.m_config_option** %13, align 8
  %28 = load %struct.m_config_option*, %struct.m_config_option** %13, align 8
  %29 = icmp ne %struct.m_config_option* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %69

31:                                               ; preds = %5
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @BSTR_P(i32 %33)
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @snprintf(i8* %32, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  store %struct.m_obj_settings* null, %struct.m_obj_settings** %15, align 8
  %37 = load %struct.m_config_option*, %struct.m_config_option** %13, align 8
  %38 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.m_config_option*, %struct.m_config_option** %13, align 8
  %41 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @m_option_copy(i32 %39, %struct.m_obj_settings** %15, i32 %42)
  %44 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %45 = load %struct.m_config_option*, %struct.m_config_option** %13, align 8
  %46 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %49 = call i32 @bstr0(i8* %48)
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @bstr0(i8* %50)
  %52 = call i32 @m_option_parse(%struct.mp_log* %44, i32 %47, i32 %49, i32 %51, %struct.m_obj_settings** %15)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %31
  %56 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.m_obj_settings*, %struct.m_obj_settings** %15, align 8
  %59 = call i32 @set_filters(%struct.MPContext* %56, i32 %57, %struct.m_obj_settings* %58)
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %55, %31
  %61 = load %struct.m_config_option*, %struct.m_config_option** %13, align 8
  %62 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @m_option_free(i32 %63, %struct.m_obj_settings** %15)
  %65 = load i32, i32* %16, align 4
  %66 = icmp sge i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 -1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %60, %30
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @bstr0(i8*) #1

declare dso_local %struct.m_config_option* @m_config_get_co(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @BSTR_P(i32) #1

declare dso_local i32 @m_option_copy(i32, %struct.m_obj_settings**, i32) #1

declare dso_local i32 @m_option_parse(%struct.mp_log*, i32, i32, i32, %struct.m_obj_settings**) #1

declare dso_local i32 @set_filters(%struct.MPContext*, i32, %struct.m_obj_settings*) #1

declare dso_local i32 @m_option_free(i32, %struct.m_obj_settings**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
