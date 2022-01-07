; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_check_estimated_display_fps.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_check_estimated_display_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, i32, i32*, i32, i32 }

@MAX_VSYNC_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"adjusting display FPS to a value closer to %.3f Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"switching back to assuming display fps = %.3f Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @check_estimated_display_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_estimated_display_fps(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %8 = load %struct.vo*, %struct.vo** %2, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.vo_internal*, %struct.vo_internal** %9, align 8
  store %struct.vo_internal* %10, %struct.vo_internal** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %12 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MAX_VSYNC_SAMPLES, align 4
  %15 = sdiv i32 %14, 2
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %1
  %18 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %19 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sitofp i32 %20 to double
  %22 = fcmp ole double %21, 5.000000e+04
  br i1 %22, label %23, label %77

23:                                               ; preds = %17
  %24 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %25 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sitofp i32 %26 to double
  %28 = fcmp oge double %27, 0x40C3BA814AFD6A05
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %33 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %38 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %45 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = call i32 @fabs(i32 %47)
  %49 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %50 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 4
  %53 = icmp sge i32 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %76

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load %struct.vo*, %struct.vo** %2, align 8
  %61 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %62 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call double @vsync_stddef(%struct.vo* %60, i32 %63)
  store double %64, double* %6, align 8
  %65 = load %struct.vo*, %struct.vo** %2, align 8
  %66 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %67 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call double @vsync_stddef(%struct.vo* %65, i32 %68)
  store double %69, double* %7, align 8
  %70 = load double, double* %6, align 8
  %71 = fmul double %70, 1.010000e+00
  %72 = load double, double* %7, align 8
  %73 = fcmp olt double %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %23, %17, %1
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %80 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %83 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = icmp eq i32 %78, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %77
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load %struct.vo*, %struct.vo** %2, align 8
  %93 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %94 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sitofp i32 %95 to double
  %97 = fdiv double 1.000000e+06, %96
  %98 = fptosi double %97 to i32
  %99 = call i32 @MP_VERBOSE(%struct.vo* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %109

100:                                              ; preds = %88
  %101 = load %struct.vo*, %struct.vo** %2, align 8
  %102 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %103 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = sitofp i32 %104 to double
  %106 = fdiv double 1.000000e+06, %105
  %107 = fptosi double %106 to i32
  %108 = call i32 @MP_VERBOSE(%struct.vo* %101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %100, %91
  br label %110

110:                                              ; preds = %109, %77
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %115 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  br label %121

117:                                              ; preds = %110
  %118 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %119 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i32 [ %116, %113 ], [ %120, %117 ]
  %123 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %124 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  ret void
}

declare dso_local i32 @fabs(i32) #1

declare dso_local double @vsync_stddef(%struct.vo*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
