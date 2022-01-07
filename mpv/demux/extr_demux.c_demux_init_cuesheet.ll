; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_init_cuesheet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_init_cuesheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cue_file = type { i32, %struct.cue_track* }
%struct.cue_track = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cuesheet\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Embedded cue sheet references more than one file. Ignoring it.\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*)* @demux_init_cuesheet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demux_init_cuesheet(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cue_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cue_track*, align 8
  %7 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %8 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %9 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @mp_tags_get_str(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %71

14:                                               ; preds = %1
  %15 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %16 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %71, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @bstr0(i8* %20)
  %22 = call %struct.cue_file* @mp_parse_cue(i32 %21)
  store %struct.cue_file* %22, %struct.cue_file** %4, align 8
  %23 = load %struct.cue_file*, %struct.cue_file** %4, align 8
  %24 = icmp ne %struct.cue_file* %23, null
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.cue_file*, %struct.cue_file** %4, align 8
  %27 = call i64 @mp_check_embedded_cue(%struct.cue_file* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %31 = call i32 @MP_WARN(%struct.demuxer* %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %67

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.cue_file*, %struct.cue_file** %4, align 8
  %36 = getelementptr inbounds %struct.cue_file, %struct.cue_file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load %struct.cue_file*, %struct.cue_file** %4, align 8
  %41 = getelementptr inbounds %struct.cue_file, %struct.cue_file* %40, i32 0, i32 1
  %42 = load %struct.cue_track*, %struct.cue_track** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cue_track, %struct.cue_track* %42, i64 %44
  store %struct.cue_track* %45, %struct.cue_track** %6, align 8
  %46 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %47 = load %struct.cue_track*, %struct.cue_track** %6, align 8
  %48 = getelementptr inbounds %struct.cue_track, %struct.cue_track* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @demuxer_add_chapter(%struct.demuxer* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 -1)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %52 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cue_track*, %struct.cue_track** %6, align 8
  %60 = getelementptr inbounds %struct.cue_track, %struct.cue_track* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mp_tags_merge(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %33

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %66, %29
  br label %68

68:                                               ; preds = %67, %19
  %69 = load %struct.cue_file*, %struct.cue_file** %4, align 8
  %70 = call i32 @talloc_free(%struct.cue_file* %69)
  br label %71

71:                                               ; preds = %68, %14, %1
  ret void
}

declare dso_local i8* @mp_tags_get_str(i32, i8*) #1

declare dso_local %struct.cue_file* @mp_parse_cue(i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @mp_check_embedded_cue(%struct.cue_file*) #1

declare dso_local i32 @MP_WARN(%struct.demuxer*, i8*) #1

declare dso_local i32 @demuxer_add_chapter(%struct.demuxer*, i8*, i32, i32) #1

declare dso_local i32 @mp_tags_merge(i32, i32) #1

declare dso_local i32 @talloc_free(%struct.cue_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
