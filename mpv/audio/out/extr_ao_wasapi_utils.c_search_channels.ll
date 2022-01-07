; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_search_channels.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_search_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.mp_chmap, %struct.wasapi_state* }
%struct.mp_chmap = type { i32 }
%struct.wasapi_state = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.mp_chmap_sel = type { %struct.wasapi_state* }

@.str = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"7.1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"6.1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"5.0\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"3.0(back)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"quad\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"quad(side)\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"5.0(side)\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"5.1(side)\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"6.0\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"6.0(front)\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"hexagonal6.1(back)\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"6.1(front)\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"7.0\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"7.0(front)\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"7.1(wide)\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"7.1(wide-side)\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"7.1(rear)\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"octagonal\00", align 1
@__const.search_channels.channel_layouts = private unnamed_addr constant [27 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [32 x i8] c"No suitable audio format found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.TYPE_8__*)* @search_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_channels(%struct.ao* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.wasapi_state*, align 8
  %7 = alloca %struct.mp_chmap_sel, align 8
  %8 = alloca %struct.mp_chmap, align 4
  %9 = alloca [27 x i8*], align 16
  %10 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.ao*, %struct.ao** %4, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 1
  %13 = load %struct.wasapi_state*, %struct.wasapi_state** %12, align 8
  store %struct.wasapi_state* %13, %struct.wasapi_state** %6, align 8
  %14 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %7, i32 0, i32 0
  %15 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  store %struct.wasapi_state* %15, %struct.wasapi_state** %14, align 8
  %16 = bitcast [27 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([27 x i8*]* @__const.search_channels.channel_layouts to i8*), i64 216, i1 false)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [27 x i8*], [27 x i8*]* %9, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [27 x i8*], [27 x i8*]* %9, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @bstr0(i8* %30)
  %32 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %8, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %26
  %39 = load %struct.ao*, %struct.ao** %4, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = call i64 @search_samplerates(%struct.ao* %39, %struct.TYPE_8__* %40, %struct.mp_chmap* %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel* %7, %struct.mp_chmap* %8)
  br label %45

45:                                               ; preds = %43, %38
  br label %56

46:                                               ; preds = %26
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = call i32 @change_waveformat_channels(%struct.TYPE_8__* %47, %struct.mp_chmap* %8)
  %49 = load %struct.ao*, %struct.ao** %4, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = call i64 @try_format_exclusive(%struct.ao* %49, %struct.TYPE_8__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel* %7, %struct.mp_chmap* %8)
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %20

60:                                               ; preds = %20
  %61 = load %struct.ao*, %struct.ao** %4, align 8
  %62 = getelementptr inbounds %struct.ao, %struct.ao* %61, i32 0, i32 0
  %63 = bitcast %struct.mp_chmap* %8 to i8*
  %64 = bitcast %struct.mp_chmap* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 8 %64, i64 4, i1 false)
  %65 = load %struct.ao*, %struct.ao** %4, align 8
  %66 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  %67 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @ao_chmap_sel_adjust2(%struct.ao* %65, %struct.mp_chmap_sel* %7, %struct.mp_chmap* %8, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = call i32 @change_waveformat_channels(%struct.TYPE_8__* %75, %struct.mp_chmap* %8)
  store i32 1, i32* %3, align 4
  br label %80

77:                                               ; preds = %60
  %78 = load %struct.ao*, %struct.ao** %4, align 8
  %79 = call i32 @MP_ERR(%struct.ao* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_chmap_from_str(%struct.mp_chmap*, i32) #2

declare dso_local i32 @bstr0(i8*) #2

declare dso_local i64 @search_samplerates(%struct.ao*, %struct.TYPE_8__*, %struct.mp_chmap*) #2

declare dso_local i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel*, %struct.mp_chmap*) #2

declare dso_local i32 @change_waveformat_channels(%struct.TYPE_8__*, %struct.mp_chmap*) #2

declare dso_local i64 @try_format_exclusive(%struct.ao*, %struct.TYPE_8__*) #2

declare dso_local i64 @ao_chmap_sel_adjust2(%struct.ao*, %struct.mp_chmap_sel*, %struct.mp_chmap*, i32) #2

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
