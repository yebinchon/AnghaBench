; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_calc_crop_dimensions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_calc_crop_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crop_filter_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.vec2 = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crop_filter_data*, %struct.vec2*, %struct.vec2*)* @calc_crop_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_crop_dimensions(%struct.crop_filter_data* %0, %struct.vec2* %1, %struct.vec2* %2) #0 {
  %4 = alloca %struct.crop_filter_data*, align 8
  %5 = alloca %struct.vec2*, align 8
  %6 = alloca %struct.vec2*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.crop_filter_data* %0, %struct.crop_filter_data** %4, align 8
  store %struct.vec2* %1, %struct.vec2** %5, align 8
  store %struct.vec2* %2, %struct.vec2** %6, align 8
  %10 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %11 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32* @obs_filter_get_target(i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %133

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @obs_source_get_base_width(i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @obs_source_get_base_height(i32* %20)
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %17
  %23 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %24 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %29 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %32 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %34 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %37 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %63

38:                                               ; preds = %22
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %42 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  %45 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %46 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %50 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %54 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  %57 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %58 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %62 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %38, %27
  %64 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %65 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %70 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %73 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %78 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %84 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %89 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sitofp i32 %90 to float
  %92 = load i64, i64* %8, align 8
  %93 = sitofp i64 %92 to float
  %94 = fdiv float %91, %93
  %95 = load %struct.vec2*, %struct.vec2** %5, align 8
  %96 = getelementptr inbounds %struct.vec2, %struct.vec2* %95, i32 0, i32 0
  store float %94, float* %96, align 4
  %97 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %98 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = sitofp i32 %99 to float
  %101 = load i64, i64* %8, align 8
  %102 = sitofp i64 %101 to float
  %103 = fdiv float %100, %102
  %104 = load %struct.vec2*, %struct.vec2** %6, align 8
  %105 = getelementptr inbounds %struct.vec2, %struct.vec2* %104, i32 0, i32 0
  store float %103, float* %105, align 4
  br label %106

106:                                              ; preds = %87, %82, %79
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %106
  %110 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %111 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %109
  %115 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %116 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sitofp i32 %117 to float
  %119 = load i64, i64* %9, align 8
  %120 = sitofp i64 %119 to float
  %121 = fdiv float %118, %120
  %122 = load %struct.vec2*, %struct.vec2** %5, align 8
  %123 = getelementptr inbounds %struct.vec2, %struct.vec2* %122, i32 0, i32 1
  store float %121, float* %123, align 4
  %124 = load %struct.crop_filter_data*, %struct.crop_filter_data** %4, align 8
  %125 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = sitofp i32 %126 to float
  %128 = load i64, i64* %9, align 8
  %129 = sitofp i64 %128 to float
  %130 = fdiv float %127, %129
  %131 = load %struct.vec2*, %struct.vec2** %6, align 8
  %132 = getelementptr inbounds %struct.vec2, %struct.vec2* %131, i32 0, i32 1
  store float %130, float* %132, align 4
  br label %133

133:                                              ; preds = %16, %114, %109, %106
  ret void
}

declare dso_local i32* @obs_filter_get_target(i32) #1

declare dso_local i64 @obs_source_get_base_width(i32*) #1

declare dso_local i64 @obs_source_get_base_height(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
