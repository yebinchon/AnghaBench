; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_decode_rgain.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_decode_rgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replaygain_data = type { i32, i32, i32, i32, i32 }
%struct.mp_log = type { i32 }
%struct.mp_tags = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_TRACK_GAIN\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_TRACK_PEAK\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_ALBUM_GAIN\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"REPLAYGAIN_ALBUM_PEAK\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"REPLAYGAIN_GAIN\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"REPLAYGAIN_PEAK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.replaygain_data* (%struct.mp_log*, %struct.mp_tags*)* @decode_rgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.replaygain_data* @decode_rgain(%struct.mp_log* %0, %struct.mp_tags* %1) #0 {
  %3 = alloca %struct.replaygain_data*, align 8
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca %struct.mp_tags*, align 8
  %6 = alloca %struct.replaygain_data, align 4
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store %struct.mp_tags* %1, %struct.mp_tags** %5, align 8
  %7 = bitcast %struct.replaygain_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 20, i1 false)
  %8 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %9 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %10 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 2
  %11 = call i64 @decode_gain(%struct.mp_log* %8, %struct.mp_tags* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %15 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %16 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 0
  %17 = call i64 @decode_peak(%struct.mp_log* %14, %struct.mp_tags* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %21 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %22 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 3
  %23 = call i64 @decode_gain(%struct.mp_log* %20, %struct.mp_tags* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %27 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %28 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 1
  %29 = call i64 @decode_peak(%struct.mp_log* %26, %struct.mp_tags* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %19
  %32 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %25
  %39 = call %struct.replaygain_data* @talloc_dup(i32* null, %struct.replaygain_data* %6)
  store %struct.replaygain_data* %39, %struct.replaygain_data** %3, align 8
  br label %61

40:                                               ; preds = %13, %2
  %41 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %42 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %43 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 2
  %44 = call i64 @decode_gain(%struct.mp_log* %41, %struct.mp_tags* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %43)
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %48 = load %struct.mp_tags*, %struct.mp_tags** %5, align 8
  %49 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 0
  %50 = call i64 @decode_peak(%struct.mp_log* %47, %struct.mp_tags* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %6, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = call %struct.replaygain_data* @talloc_dup(i32* null, %struct.replaygain_data* %6)
  store %struct.replaygain_data* %59, %struct.replaygain_data** %3, align 8
  br label %61

60:                                               ; preds = %46, %40
  store %struct.replaygain_data* null, %struct.replaygain_data** %3, align 8
  br label %61

61:                                               ; preds = %60, %52, %38
  %62 = load %struct.replaygain_data*, %struct.replaygain_data** %3, align 8
  ret %struct.replaygain_data* %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @decode_gain(%struct.mp_log*, %struct.mp_tags*, i8*, i32*) #2

declare dso_local i64 @decode_peak(%struct.mp_log*, %struct.mp_tags*, i8*, i32*) #2

declare dso_local %struct.replaygain_data* @talloc_dup(i32*, %struct.replaygain_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
