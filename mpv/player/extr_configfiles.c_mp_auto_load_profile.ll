; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_auto_load_profile.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_auto_load_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s.%.*s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Auto-loading profile '%s'\0A\00", align 1
@FILE_LOCAL_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i8*, i32)* @mp_auto_load_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_auto_load_profile(%struct.MPContext* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i8* %1, i8** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %38

14:                                               ; preds = %3
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @BSTR_P(i32 %18)
  %20 = call i32 @snprintf(i8* %15, i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %19)
  %21 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %25 = call i32* @m_config_get_profile0(i32 %23, i8* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %14
  %29 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %31 = call i32 @MP_INFO(%struct.MPContext* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %36 = load i32, i32* @FILE_LOCAL_FLAGS, align 4
  %37 = call i32 @m_config_set_profile(i32 %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %13, %28, %14
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @BSTR_P(i32) #1

declare dso_local i32* @m_config_get_profile0(i32, i8*) #1

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*, i8*) #1

declare dso_local i32 @m_config_set_profile(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
