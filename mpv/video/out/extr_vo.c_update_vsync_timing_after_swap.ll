; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_update_vsync_timing_after_swap.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_update_vsync_timing_after_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, i32*, i32, i32, double, i32, i8*, i64, i32, i8* }
%struct.vo_vsync_info = type { i8* }

@MAX_VSYNC_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"value %f jitter\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"value %f vsync-diff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_vsync_info*)* @update_vsync_timing_after_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_vsync_timing_after_swap(%struct.vo* %0, %struct.vo_vsync_info* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_vsync_info*, align 8
  %5 = alloca %struct.vo_internal*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_vsync_info* %1, %struct.vo_vsync_info** %4, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load %struct.vo_internal*, %struct.vo_internal** %11, align 8
  store %struct.vo_internal* %12, %struct.vo_internal** %5, align 8
  %13 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %14 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %17 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %16, i32 0, i32 10
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %21 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %20, i32 0, i32 10
  store i8* %19, i8** %21, align 8
  %22 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %23 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.vo*, %struct.vo** %3, align 8
  %28 = call i32 @reset_vsync_timings(%struct.vo* %27)
  br label %156

29:                                               ; preds = %2
  %30 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %31 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %35 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %156

39:                                               ; preds = %29
  %40 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %41 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_VSYNC_SAMPLES, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %47 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %52 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %53 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %56 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @MP_TARRAY_INSERT_AT(%struct.vo_internal* %51, i32* %54, i32 %57, i32 0, i8* %63)
  %65 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %66 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  %69 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %70 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @MPMIN(i64 %68, i32 %71)
  %73 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %74 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %73, i32 0, i32 8
  store i64 %72, i64* %74, align 8
  %75 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %76 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %80 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %79, i32 0, i32 7
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %50
  %84 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %85 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %88 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %87, i32 0, i32 7
  %89 = load i8*, i8** %88, align 8
  %90 = sext i32 %86 to i64
  %91 = getelementptr i8, i8* %89, i64 %90
  store i8* %91, i8** %88, align 8
  br label %96

92:                                               ; preds = %50
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %95 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %83
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %114, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %100 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %105 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sitofp i32 %110 to double
  %112 = load double, double* %8, align 8
  %113 = fadd double %112, %111
  store double %113, double* %8, align 8
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %97

117:                                              ; preds = %97
  %118 = load double, double* %8, align 8
  %119 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %120 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %118, %122
  %124 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %125 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %124, i32 0, i32 5
  store double %123, double* %125, align 8
  %126 = load %struct.vo*, %struct.vo** %3, align 8
  %127 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %128 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vsync_stddef(%struct.vo* %126, i32 %129)
  %131 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %132 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %130, %133
  %135 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %136 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.vo*, %struct.vo** %3, align 8
  %138 = call i32 @check_estimated_display_fps(%struct.vo* %137)
  %139 = load %struct.vo*, %struct.vo** %3, align 8
  %140 = call i32 @vsync_skip_detection(%struct.vo* %139)
  %141 = load %struct.vo*, %struct.vo** %3, align 8
  %142 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %143 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @MP_STATS(%struct.vo* %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load %struct.vo*, %struct.vo** %3, align 8
  %147 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %148 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = sitofp i32 %151 to double
  %153 = fdiv double %152, 1.000000e+06
  %154 = fptosi double %153 to i32
  %155 = call i32 @MP_STATS(%struct.vo* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %117, %38, %26
  ret void
}

declare dso_local i32 @reset_vsync_timings(%struct.vo*) #1

declare dso_local i32 @MP_TARRAY_INSERT_AT(%struct.vo_internal*, i32*, i32, i32, i8*) #1

declare dso_local i64 @MPMIN(i64, i32) #1

declare dso_local i32 @vsync_stddef(%struct.vo*, i32) #1

declare dso_local i32 @check_estimated_display_fps(%struct.vo*) #1

declare dso_local i32 @vsync_skip_detection(%struct.vo*) #1

declare dso_local i32 @MP_STATS(%struct.vo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
