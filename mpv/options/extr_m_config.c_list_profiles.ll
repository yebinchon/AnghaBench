; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_list_profiles.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_list_profiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { %struct.m_profile* }
%struct.m_profile = type { i8*, i32, %struct.m_profile* }

@.str = private unnamed_addr constant [21 x i8] c"Available profiles:\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\09%s\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m_config*)* @list_profiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_profiles(%struct.m_config* %0) #0 {
  %2 = alloca %struct.m_config*, align 8
  %3 = alloca %struct.m_profile*, align 8
  store %struct.m_config* %0, %struct.m_config** %2, align 8
  %4 = load %struct.m_config*, %struct.m_config** %2, align 8
  %5 = call i32 (%struct.m_config*, i8*, ...) @MP_INFO(%struct.m_config* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.m_config*, %struct.m_config** %2, align 8
  %7 = getelementptr inbounds %struct.m_config, %struct.m_config* %6, i32 0, i32 0
  %8 = load %struct.m_profile*, %struct.m_profile** %7, align 8
  store %struct.m_profile* %8, %struct.m_profile** %3, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.m_profile*, %struct.m_profile** %3, align 8
  %11 = icmp ne %struct.m_profile* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.m_config*, %struct.m_config** %2, align 8
  %14 = load %struct.m_profile*, %struct.m_profile** %3, align 8
  %15 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.m_profile*, %struct.m_profile** %3, align 8
  %18 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.m_profile*, %struct.m_profile** %3, align 8
  %23 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i8* [ %24, %21 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %25 ]
  %28 = call i32 (%struct.m_config*, i8*, ...) @MP_INFO(%struct.m_config* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %16, i8* %27)
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.m_profile*, %struct.m_profile** %3, align 8
  %31 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %30, i32 0, i32 2
  %32 = load %struct.m_profile*, %struct.m_profile** %31, align 8
  store %struct.m_profile* %32, %struct.m_profile** %3, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.m_config*, %struct.m_config** %2, align 8
  %35 = call i32 (%struct.m_config*, i8*, ...) @MP_INFO(%struct.m_config* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MP_INFO(%struct.m_config*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
