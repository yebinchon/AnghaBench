; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_build_mpv_edl_timeline.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_build_mpv_edl_timeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeline = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.priv* }
%struct.priv = type { i32, i32 }
%struct.tl_root = type { i32, %struct.tl_parts** }
%struct.tl_parts = type { i32 }
%struct.timeline_par = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Error in EDL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dash\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"edl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeline*)* @build_mpv_edl_timeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_mpv_edl_timeline(%struct.timeline* %0) #0 {
  %2 = alloca %struct.timeline*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.tl_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tl_parts*, align 8
  %10 = alloca %struct.timeline_par*, align 8
  store %struct.timeline* %0, %struct.timeline** %2, align 8
  %11 = load %struct.timeline*, %struct.timeline** %2, align 8
  %12 = getelementptr inbounds %struct.timeline, %struct.timeline* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %3, align 8
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tl_root* @parse_edl(i32 %18)
  store %struct.tl_root* %19, %struct.tl_root** %4, align 8
  %20 = load %struct.tl_root*, %struct.tl_root** %4, align 8
  %21 = icmp ne %struct.tl_root* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.timeline*, %struct.timeline** %2, align 8
  %24 = call i32 @MP_ERR(%struct.timeline* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %102

25:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %77, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.tl_root*, %struct.tl_root** %4, align 8
  %29 = getelementptr inbounds %struct.tl_root, %struct.tl_root* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %26
  %33 = load %struct.tl_root*, %struct.tl_root** %4, align 8
  %34 = getelementptr inbounds %struct.tl_root, %struct.tl_root* %33, i32 0, i32 1
  %35 = load %struct.tl_parts**, %struct.tl_parts*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tl_parts*, %struct.tl_parts** %35, i64 %37
  %39 = load %struct.tl_parts*, %struct.tl_parts** %38, align 8
  store %struct.tl_parts* %39, %struct.tl_parts** %9, align 8
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %32
  %45 = load %struct.tl_parts*, %struct.tl_parts** %9, align 8
  %46 = load %struct.timeline*, %struct.timeline** %2, align 8
  %47 = getelementptr inbounds %struct.timeline, %struct.timeline* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @fix_filenames(%struct.tl_parts* %45, i32 %50)
  br label %52

52:                                               ; preds = %44, %32
  %53 = load %struct.timeline*, %struct.timeline** %2, align 8
  %54 = load %struct.tl_parts*, %struct.tl_parts** %9, align 8
  %55 = call %struct.timeline_par* @build_timeline(%struct.timeline* %53, %struct.tl_parts* %54)
  store %struct.timeline_par* %55, %struct.timeline_par** %10, align 8
  %56 = load %struct.timeline_par*, %struct.timeline_par** %10, align 8
  %57 = icmp ne %struct.timeline_par* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %80

59:                                               ; preds = %52
  %60 = load %struct.timeline_par*, %struct.timeline_par** %10, align 8
  %61 = getelementptr inbounds %struct.timeline_par, %struct.timeline_par* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.timeline_par*, %struct.timeline_par** %10, align 8
  %66 = getelementptr inbounds %struct.timeline_par, %struct.timeline_par* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.timeline_par*, %struct.timeline_par** %10, align 8
  %71 = getelementptr inbounds %struct.timeline_par, %struct.timeline_par* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %26

80:                                               ; preds = %58, %26
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.timeline*, %struct.timeline** %2, align 8
  %85 = getelementptr inbounds %struct.timeline, %struct.timeline* %84, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %85, align 8
  br label %99

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.timeline*, %struct.timeline** %2, align 8
  %94 = getelementptr inbounds %struct.timeline, %struct.timeline* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %94, align 8
  br label %98

95:                                               ; preds = %89, %86
  %96 = load %struct.timeline*, %struct.timeline** %2, align 8
  %97 = getelementptr inbounds %struct.timeline, %struct.timeline* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.tl_root*, %struct.tl_root** %4, align 8
  %101 = call i32 @talloc_free(%struct.tl_root* %100)
  br label %102

102:                                              ; preds = %99, %22
  ret void
}

declare dso_local %struct.tl_root* @parse_edl(i32) #1

declare dso_local i32 @MP_ERR(%struct.timeline*, i8*) #1

declare dso_local i32 @fix_filenames(%struct.tl_parts*, i32) #1

declare dso_local %struct.timeline_par* @build_timeline(%struct.timeline*, %struct.tl_parts*) #1

declare dso_local i32 @talloc_free(%struct.tl_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
