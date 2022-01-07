; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_reorder_planes.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_reorder_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i32 }
%struct.mp_chmap = type { i64* }

@MP_NUM_CHANNELS = common dso_local global i32 0, align 4
@MP_SPEAKER_ID_NA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_aframe*, i32*, %struct.mp_chmap*)* @reorder_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reorder_planes(%struct.mp_aframe* %0, i32* %1, %struct.mp_chmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_aframe*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mp_chmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mp_aframe* %0, %struct.mp_aframe** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mp_chmap* %2, %struct.mp_chmap** %7, align 8
  %17 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %18 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %19 = call i32 @mp_aframe_set_chmap(%struct.mp_aframe* %17, %struct.mp_chmap* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %139

22:                                               ; preds = %3
  %23 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %24 = call i32 @mp_aframe_get_planes(%struct.mp_aframe* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %26 = call i32** @mp_aframe_get_data_rw(%struct.mp_aframe* %25)
  store i32** %26, i32*** %9, align 8
  %27 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i32*, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %33 = icmp sle i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %49, %22
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %30, i64 %47
  store i32* %45, i32** %48, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %36

52:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.mp_chmap*, %struct.mp_chmap** %7, align 8
  %59 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MP_SPEAKER_ID_NA, align 8
  %66 = icmp ne i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %53

73:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %134, %73
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %137

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sge i32 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br label %90

90:                                               ; preds = %86, %78
  %91 = phi i1 [ false, %78 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* %16, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %30, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32**, i32*** %9, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  store i32* %100, i32** %104, align 8
  br label %133

105:                                              ; preds = %90
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32*, i32** %30, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32**, i32*** %9, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  store i32* %115, i32** %119, align 8
  %120 = load i32**, i32*** %9, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %126 = call i32 @mp_aframe_get_sstride(%struct.mp_aframe* %125)
  %127 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %128 = call i32 @mp_aframe_get_size(%struct.mp_aframe* %127)
  %129 = mul nsw i32 %126, %128
  %130 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %131 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %130)
  %132 = call i32 @af_fill_silence(i32* %124, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %105, %96
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %74

137:                                              ; preds = %74
  store i32 1, i32* %4, align 4
  %138 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %138)
  br label %139

139:                                              ; preds = %137, %21
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @mp_aframe_set_chmap(%struct.mp_aframe*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_aframe_get_planes(%struct.mp_aframe*) #1

declare dso_local i32** @mp_aframe_get_data_rw(%struct.mp_aframe*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @af_fill_silence(i32*, i32, i32) #1

declare dso_local i32 @mp_aframe_get_sstride(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_get_size(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_get_format(%struct.mp_aframe*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
