; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_setlayer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_setlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i64, i32, i64 }

@vo_wm_STAYS_ON_TOP = common dso_local global i32 0, align 4
@vo_wm_ABOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"_NET_WM_STATE_ABOVE\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"_NET_WM_STATE_STAYS_ON_TOP\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"NET style stay on top (%d). Using state %s.\0A\00", align 1
@vo_wm_LAYER = common dso_local global i32 0, align 4
@WIN_LAYER_NORMAL = common dso_local global i64 0, align 8
@_WIN_LAYER = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"original window layer is %ld.\0A\00", align 1
@WIN_LAYER_ABOVE_DOCK = common dso_local global i64 0, align 8
@CurrentTime = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Layered style stay on top (layer %ld).\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"_WIN_LAYER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32)* @vo_x11_setlayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_setlayer(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i64], align 16
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  store %struct.vo_x11_state* %10, %struct.vo_x11_state** %5, align 8
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %12 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %17 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %103

21:                                               ; preds = %15
  %22 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %23 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @vo_wm_STAYS_ON_TOP, align 4
  %26 = load i32, i32* @vo_wm_ABOVE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %31 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %32 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @vo_wm_STAYS_ON_TOP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @x11_set_ewmh_state(%struct.vo_x11_state* %39, i8* %40, i32 %41)
  %43 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (%struct.vo_x11_state*, i8*, i64, ...) @MP_VERBOSE(%struct.vo_x11_state* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %45, i8* %46)
  br label %103

48:                                               ; preds = %21
  %49 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %50 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @vo_wm_LAYER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %48
  %56 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %57 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* @WIN_LAYER_NORMAL, align 8
  %62 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %63 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %65 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %66 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %69 = load i32, i32* @_WIN_LAYER, align 4
  %70 = call i32 @XA(%struct.vo_x11_state* %68, i32 %69)
  %71 = load i32, i32* @XA_CARDINAL, align 4
  %72 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %73 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %72, i32 0, i32 1
  %74 = call i32 @x11_get_property_copy(%struct.vo_x11_state* %64, i32 %67, i32 %70, i32 %71, i32 32, i64* %73, i32 8)
  %75 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %76 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %77 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (%struct.vo_x11_state*, i8*, i64, ...) @MP_VERBOSE(%struct.vo_x11_state* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %60, %55
  %81 = bitcast [5 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %81, i8 0, i64 40, i1 false)
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* @WIN_LAYER_ABOVE_DOCK, align 8
  br label %90

86:                                               ; preds = %80
  %87 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %88 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi i64 [ %85, %84 ], [ %89, %86 ]
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  store i64 %91, i64* %92, align 16
  %93 = load i64, i64* @CurrentTime, align 8
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 1
  store i64 %93, i64* %94, align 8
  %95 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %96 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %97 = load i64, i64* %96, align 16
  %98 = call i32 (%struct.vo_x11_state*, i8*, i64, ...) @MP_VERBOSE(%struct.vo_x11_state* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  %99 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %101 = call i32 @x11_send_ewmh_msg(%struct.vo_x11_state* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64* %100)
  br label %102

102:                                              ; preds = %90, %48
  br label %103

103:                                              ; preds = %20, %102, %38
  ret void
}

declare dso_local i32 @x11_set_ewmh_state(%struct.vo_x11_state*, i8*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_x11_state*, i8*, i64, ...) #1

declare dso_local i32 @x11_get_property_copy(%struct.vo_x11_state*, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @x11_send_ewmh_msg(%struct.vo_x11_state*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
