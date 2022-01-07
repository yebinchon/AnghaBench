; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_external_files.c_find_external_files.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_external_files.c_find_external_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subfn = type { i32 }
%struct.mpv_global = type { i32 }
%struct.MPOpts = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@STREAM_SUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@STREAM_AUDIO = common dso_local global i32 0, align 4
@compare_sub_filename = common dso_local global i32 0, align 4
@compare_sub_priority = common dso_local global i32 0, align 4
@slist = common dso_local global %struct.subfn* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.subfn* @find_external_files(%struct.mpv_global* %0, i8* %1, %struct.MPOpts* %2) #0 {
  %4 = alloca %struct.mpv_global*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MPOpts*, align 8
  %7 = alloca %struct.subfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.subfn, align 4
  store %struct.mpv_global* %0, %struct.mpv_global** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.MPOpts* %2, %struct.MPOpts** %6, align 8
  %10 = load %struct.subfn*, %struct.subfn** %7, align 8
  %11 = ptrtoint %struct.subfn* %10 to i32
  %12 = call %struct.subfn* @talloc_array_ptrtype(i32* null, i32 %11, i32 1)
  store %struct.subfn* %12, %struct.subfn** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mpv_global*, %struct.mpv_global** %4, align 8
  %14 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @mp_dirname(i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @append_dir_subtitles(%struct.mpv_global* %13, %struct.MPOpts* %14, %struct.subfn** %7, i32* %8, i32 %16, i8* %17, i32 0, i32 -1)
  %19 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %20 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.mpv_global*, %struct.mpv_global** %4, align 8
  %25 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %28 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STREAM_SUB, align 4
  %31 = call i32 @load_paths(%struct.mpv_global* %24, %struct.MPOpts* %25, %struct.subfn** %7, i32* %8, i8* %26, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %23, %3
  %33 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %34 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.mpv_global*, %struct.mpv_global** %4, align 8
  %39 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %42 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @STREAM_AUDIO, align 4
  %45 = call i32 @load_paths(%struct.mpv_global* %38, %struct.MPOpts* %39, %struct.subfn** %7, i32* %8, i8* %40, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %37, %32
  %47 = load %struct.subfn*, %struct.subfn** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @compare_sub_filename, align 4
  %50 = call i32 @qsort(%struct.subfn* %47, i32 %48, i32 4, i32 %49)
  %51 = call i32 @filter_subidx(%struct.subfn** %7, i32* %8)
  %52 = load %struct.subfn*, %struct.subfn** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @compare_sub_priority, align 4
  %55 = call i32 @qsort(%struct.subfn* %52, i32 %53, i32 4, i32 %54)
  %56 = bitcast %struct.subfn* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = load %struct.subfn*, %struct.subfn** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.subfn, %struct.subfn* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.subfn* %57, i32 %58, i32 %60)
  %62 = load %struct.subfn*, %struct.subfn** %7, align 8
  ret %struct.subfn* %62
}

declare dso_local %struct.subfn* @talloc_array_ptrtype(i32*, i32, i32) #1

declare dso_local i32 @append_dir_subtitles(%struct.mpv_global*, %struct.MPOpts*, %struct.subfn**, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i32 @load_paths(%struct.mpv_global*, %struct.MPOpts*, %struct.subfn**, i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @qsort(%struct.subfn*, i32, i32, i32) #1

declare dso_local i32 @filter_subidx(%struct.subfn**, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.subfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
