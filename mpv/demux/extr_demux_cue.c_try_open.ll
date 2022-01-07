; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_cue.c_try_open.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_cue.c_try_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer_params = type { i8* }
%struct.timeline = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.bstr = type { i32 }
%struct.demuxer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".cue\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"CUE: Opening as BIN file!\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rawaudio\00", align 1
@__const.try_open.p = private unnamed_addr constant %struct.demuxer_params { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not open source '%s'!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeline*, i8*)* @try_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_open(%struct.timeline* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeline*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.bstr, align 4
  %9 = alloca %struct.demuxer*, align 8
  %10 = alloca %struct.bstr, align 4
  %11 = alloca %struct.demuxer_params, align 8
  store %struct.timeline* %0, %struct.timeline** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @bstr0(i8* %12)
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = call i32 @bstr0(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bstr_case_endswith(i32 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = load %struct.timeline*, %struct.timeline** %4, align 8
  %25 = getelementptr inbounds %struct.timeline, %struct.timeline* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @bstr0(i8* %28)
  %30 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @bstrcasecmp(i32 %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %81

38:                                               ; preds = %23
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.timeline*, %struct.timeline** %4, align 8
  %41 = getelementptr inbounds %struct.timeline, %struct.timeline* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.timeline*, %struct.timeline** %4, align 8
  %44 = getelementptr inbounds %struct.timeline, %struct.timeline* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.demuxer* @demux_open_url(i8* %39, %struct.demuxer_params* null, i32 %42, i32 %45)
  store %struct.demuxer* %46, %struct.demuxer** %9, align 8
  %47 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %48 = icmp ne %struct.demuxer* %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %38
  %50 = call i32 @bstr0(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @bstr_case_endswith(i32 %53, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.timeline*, %struct.timeline** %4, align 8
  %60 = call i32 @MP_WARN(%struct.timeline* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %61 = bitcast %struct.demuxer_params* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 bitcast (%struct.demuxer_params* @__const.try_open.p to i8*), i64 8, i1 false)
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.timeline*, %struct.timeline** %4, align 8
  %64 = getelementptr inbounds %struct.timeline, %struct.timeline* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.timeline*, %struct.timeline** %4, align 8
  %67 = getelementptr inbounds %struct.timeline, %struct.timeline* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.demuxer* @demux_open_url(i8* %62, %struct.demuxer_params* %11, i32 %65, i32 %68)
  store %struct.demuxer* %69, %struct.demuxer** %9, align 8
  br label %70

70:                                               ; preds = %58, %49, %38
  %71 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %72 = icmp ne %struct.demuxer* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.timeline*, %struct.timeline** %4, align 8
  %75 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %76 = call i32 @add_source(%struct.timeline* %74, %struct.demuxer* %75)
  store i32 1, i32* %3, align 4
  br label %81

77:                                               ; preds = %70
  %78 = load %struct.timeline*, %struct.timeline** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @MP_ERR(%struct.timeline* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %73, %37
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @bstr_case_endswith(i32, i32) #1

declare dso_local i64 @bstrcasecmp(i32, i32) #1

declare dso_local %struct.demuxer* @demux_open_url(i8*, %struct.demuxer_params*, i32, i32) #1

declare dso_local i32 @MP_WARN(%struct.timeline*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_source(%struct.timeline*, %struct.demuxer*) #1

declare dso_local i32 @MP_ERR(%struct.timeline*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
