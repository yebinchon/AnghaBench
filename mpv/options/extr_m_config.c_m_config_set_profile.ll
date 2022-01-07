; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_profile.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i64 }
%struct.m_profile = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Unknown profile '%s'.\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Applying profile '%s'...\0A\00", align 1
@MAX_PROFILE_DEPTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"WARNING: Profile inclusion too deep.\0A\00", align 1
@M_SETOPT_FROM_CONFIG_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_config_set_profile(%struct.m_config* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_profile*, align 8
  %9 = alloca i32, align 4
  store %struct.m_config* %0, %struct.m_config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.m_config*, %struct.m_config** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.m_profile* @m_config_get_profile0(%struct.m_config* %10, i8* %11)
  store %struct.m_profile* %12, %struct.m_profile** %8, align 8
  %13 = load %struct.m_profile*, %struct.m_profile** %8, align 8
  %14 = icmp ne %struct.m_profile* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.m_config*, %struct.m_config** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (%struct.m_config*, i8*, ...) @MP_WARN(%struct.m_config* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %19, i32* %4, align 4
  br label %77

20:                                               ; preds = %3
  %21 = load %struct.m_config*, %struct.m_config** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @MP_VERBOSE(%struct.m_config* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.m_config*, %struct.m_config** %5, align 8
  %25 = getelementptr inbounds %struct.m_config, %struct.m_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_PROFILE_DEPTH, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.m_config*, %struct.m_config** %5, align 8
  %31 = call i32 (%struct.m_config*, i8*, ...) @MP_WARN(%struct.m_config* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %32, i32* %4, align 4
  br label %77

33:                                               ; preds = %20
  %34 = load %struct.m_config*, %struct.m_config** %5, align 8
  %35 = getelementptr inbounds %struct.m_config, %struct.m_config* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %69, %33
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.m_profile*, %struct.m_profile** %8, align 8
  %41 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load %struct.m_config*, %struct.m_config** %5, align 8
  %46 = load %struct.m_profile*, %struct.m_profile** %8, align 8
  %47 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bstr0(i32 %53)
  %55 = load %struct.m_profile*, %struct.m_profile** %8, align 8
  %56 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bstr0(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @M_SETOPT_FROM_CONFIG_FILE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @m_config_set_option_cli(%struct.m_config* %45, i32 %54, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %44
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %38

72:                                               ; preds = %38
  %73 = load %struct.m_config*, %struct.m_config** %5, align 8
  %74 = getelementptr inbounds %struct.m_config, %struct.m_config* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %29, %15
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.m_profile* @m_config_get_profile0(%struct.m_config*, i8*) #1

declare dso_local i32 @MP_WARN(%struct.m_config*, i8*, ...) #1

declare dso_local i32 @MP_VERBOSE(%struct.m_config*, i8*, i8*) #1

declare dso_local i32 @m_config_set_option_cli(%struct.m_config*, i32, i32, i32) #1

declare dso_local i32 @bstr0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
