; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_wm_detect.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_wm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, %struct.vo_x11_state* }
%struct.TYPE_2__ = type { i64 }
%struct.vo_x11_state = type { i64, i32 }

@_WIN_PROTOCOLS = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@_WIN_LAYER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Detected wm supports layers.\0A\00", align 1
@vo_wm_LAYER = common dso_local global i32 0, align 4
@_NET_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Detected wm supports NetWM.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"NetWM usage disabled by user.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown wm type...\0A\00", align 1
@vo_wm_FULLSCREEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Forcing NetWM FULLSCREEN support.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @vo_wm_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vo_wm_detect(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_x11_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 1
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %11, align 8
  store %struct.vo_x11_state* %12, %struct.vo_x11_state** %4, align 8
  store i32 0, i32* %6, align 4
  store i64* null, i64** %8, align 8
  %13 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %14 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %17 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

21:                                               ; preds = %1
  %22 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %25 = load i32, i32* @_WIN_PROTOCOLS, align 4
  %26 = call i64 @XA(%struct.vo_x11_state* %24, i32 %25)
  %27 = load i32, i32* @XA_ATOM, align 4
  %28 = call i64* @x11_get_property(%struct.vo_x11_state* %22, i32 %23, i64 %26, i32 %27, i32 32, i32* %7)
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %43 = load i32, i32* @_WIN_LAYER, align 4
  %44 = call i64 @XA(%struct.vo_x11_state* %42, i32 %43)
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %48 = call i32 @MP_DBG(%struct.vo_x11_state* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @vo_wm_LAYER, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load i64*, i64** %8, align 8
  %58 = call i32 @XFree(i64* %57)
  br label %59

59:                                               ; preds = %56, %21
  %60 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %63 = load i32, i32* @_NET_SUPPORTED, align 4
  %64 = call i64 @XA(%struct.vo_x11_state* %62, i32 %63)
  %65 = load i32, i32* @XA_ATOM, align 4
  %66 = call i64* @x11_get_property(%struct.vo_x11_state* %60, i32 %61, i64 %64, i32 %65, i32 32, i32* %7)
  store i64* %66, i64** %8, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %105

69:                                               ; preds = %59
  %70 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %71 = call i32 @MP_DBG(%struct.vo_x11_state* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.vo*, %struct.vo** %3, align 8
  %73 = getelementptr inbounds %struct.vo, %struct.vo* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %95, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load %struct.vo*, %struct.vo** %3, align 8
  %85 = getelementptr inbounds %struct.vo, %struct.vo* %84, i32 0, i32 1
  %86 = load %struct.vo_x11_state*, %struct.vo_x11_state** %85, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @net_wm_support_state_test(%struct.vo_x11_state* %86, i64 %91)
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %79

98:                                               ; preds = %79
  br label %102

99:                                               ; preds = %69
  %100 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %101 = call i32 @MP_DBG(%struct.vo_x11_state* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %98
  %103 = load i64*, i64** %8, align 8
  %104 = call i32 @XFree(i64* %103)
  br label %105

105:                                              ; preds = %102, %59
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %110 = call i32 @MP_DBG(%struct.vo_x11_state* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.vo*, %struct.vo** %3, align 8
  %113 = getelementptr inbounds %struct.vo, %struct.vo* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @vo_wm_FULLSCREEN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %125 = call i32 @MP_WARN(%struct.vo_x11_state* %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @vo_wm_FULLSCREEN, align 4
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123, %118, %111
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %20
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64* @x11_get_property(%struct.vo_x11_state*, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @MP_DBG(%struct.vo_x11_state*, i8*) #1

declare dso_local i32 @XFree(i64*) #1

declare dso_local i32 @net_wm_support_state_test(%struct.vo_x11_state*, i64) #1

declare dso_local i32 @MP_WARN(%struct.vo_x11_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
