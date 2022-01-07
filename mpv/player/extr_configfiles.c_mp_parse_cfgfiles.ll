; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_parse_cfgfiles.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_parse_cfgfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32*, i32, %struct.MPOpts* }
%struct.MPOpts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"playback-default\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"encoding-profiles.conf\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"mpv.conf|config\00", align 1
@SECT_ENCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_parse_cfgfiles(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 2
  %9 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  store %struct.MPOpts* %9, %struct.MPOpts** %3, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mp_mk_config_dir(i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %17 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %18 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %23 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %30 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %28, %21, %1
  %38 = phi i1 [ false, %21 ], [ false, %1 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %45 = call i32 @load_all_cfgfiles(%struct.MPContext* %44, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @load_all_cfgfiles(%struct.MPContext* %46, i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @SECT_ENCODE, align 4
  %54 = call i32 @m_config_set_profile(i32* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %51, %43
  ret void
}

declare dso_local i32 @mp_mk_config_dir(i32, i8*) #1

declare dso_local i32 @load_all_cfgfiles(%struct.MPContext*, i8*, i8*) #1

declare dso_local i32 @m_config_set_profile(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
