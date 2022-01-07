; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvdnav.c_new_dvdnav_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvdnav.c_new_dvdnav_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.priv* }

@DVDNAV_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"stream_dvdnav, failed to set PGC positioning\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.priv* (%struct.TYPE_7__*, i8*)* @new_dvdnav_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.priv* @new_dvdnav_stream(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.priv* null, %struct.priv** %3, align 8
  br label %78

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @strdup(i8* %15)
  %17 = load %struct.priv*, %struct.priv** %6, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = icmp ne i32* %16, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.priv* null, %struct.priv** %3, align 8
  br label %78

21:                                               ; preds = %14
  %22 = load %struct.priv*, %struct.priv** %6, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.priv*, %struct.priv** %6, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = load %struct.priv*, %struct.priv** %6, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.priv*, %struct.priv** %6, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dvd_set_speed(%struct.TYPE_7__* %29, i32* %32, i32 %35)
  %37 = load %struct.priv*, %struct.priv** %6, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 0
  %39 = load %struct.priv*, %struct.priv** %6, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @dvdnav_open(i32* %38, i32* %41)
  %43 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %21
  %46 = load %struct.priv*, %struct.priv** %6, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @free(i32* %48)
  %50 = load %struct.priv*, %struct.priv** %6, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  store %struct.priv* null, %struct.priv** %3, align 8
  br label %78

52:                                               ; preds = %21
  %53 = load %struct.priv*, %struct.priv** %6, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store %struct.priv* null, %struct.priv** %3, align 8
  br label %78

58:                                               ; preds = %52
  %59 = load %struct.priv*, %struct.priv** %6, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dvdnav_set_readahead_flag(i32 %61, i32 1)
  %63 = load %struct.priv*, %struct.priv** %6, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @dvdnav_set_PGC_positioning_flag(i32 %65, i32 1)
  %67 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = call i32 @MP_ERR(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %58
  %73 = load %struct.priv*, %struct.priv** %6, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dvdnav_get_title_string(i32 %75, i8** %7)
  %77 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %77, %struct.priv** %3, align 8
  br label %78

78:                                               ; preds = %72, %57, %45, %20, %13
  %79 = load %struct.priv*, %struct.priv** %3, align 8
  ret %struct.priv* %79
}

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @dvd_set_speed(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @dvdnav_open(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @dvdnav_set_readahead_flag(i32, i32) #1

declare dso_local i64 @dvdnav_set_PGC_positioning_flag(i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dvdnav_get_title_string(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
