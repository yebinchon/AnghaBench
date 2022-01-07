; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_image-source.c_image_source_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_image-source.c_image_source_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_source = type { float, i64, i32, i8*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @image_source_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_source_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.image_source*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.image_source*
  store %struct.image_source* %11, %struct.image_source** %5, align 8
  %12 = call i8* (...) @obs_get_video_frame_time()
  store i8* %12, i8** %6, align 8
  %13 = load float, float* %4, align 4
  %14 = load %struct.image_source*, %struct.image_source** %5, align 8
  %15 = getelementptr inbounds %struct.image_source, %struct.image_source* %14, i32 0, i32 0
  %16 = load float, float* %15, align 8
  %17 = fadd float %16, %13
  store float %17, float* %15, align 8
  %18 = load %struct.image_source*, %struct.image_source** %5, align 8
  %19 = getelementptr inbounds %struct.image_source, %struct.image_source* %18, i32 0, i32 0
  %20 = load float, float* %19, align 8
  %21 = fcmp oge float %20, 1.000000e+00
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.image_source*, %struct.image_source** %5, align 8
  %24 = getelementptr inbounds %struct.image_source, %struct.image_source* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @get_modified_timestamp(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.image_source*, %struct.image_source** %5, align 8
  %28 = getelementptr inbounds %struct.image_source, %struct.image_source* %27, i32 0, i32 0
  store float 0.000000e+00, float* %28, align 8
  %29 = load %struct.image_source*, %struct.image_source** %5, align 8
  %30 = getelementptr inbounds %struct.image_source, %struct.image_source* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.image_source*, %struct.image_source** %5, align 8
  %36 = call i32 @image_source_load(%struct.image_source* %35)
  br label %37

37:                                               ; preds = %34, %22
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.image_source*, %struct.image_source** %5, align 8
  %40 = getelementptr inbounds %struct.image_source, %struct.image_source* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @obs_source_active(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load %struct.image_source*, %struct.image_source** %5, align 8
  %46 = getelementptr inbounds %struct.image_source, %struct.image_source* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %44
  %50 = load %struct.image_source*, %struct.image_source** %5, align 8
  %51 = getelementptr inbounds %struct.image_source, %struct.image_source* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.image_source*, %struct.image_source** %5, align 8
  %59 = getelementptr inbounds %struct.image_source, %struct.image_source* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.image_source*, %struct.image_source** %5, align 8
  %62 = getelementptr inbounds %struct.image_source, %struct.image_source* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %44
  br label %98

64:                                               ; preds = %38
  %65 = load %struct.image_source*, %struct.image_source** %5, align 8
  %66 = getelementptr inbounds %struct.image_source, %struct.image_source* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %64
  %70 = load %struct.image_source*, %struct.image_source** %5, align 8
  %71 = getelementptr inbounds %struct.image_source, %struct.image_source* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.image_source*, %struct.image_source** %5, align 8
  %78 = getelementptr inbounds %struct.image_source, %struct.image_source* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.image_source*, %struct.image_source** %5, align 8
  %82 = getelementptr inbounds %struct.image_source, %struct.image_source* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.image_source*, %struct.image_source** %5, align 8
  %86 = getelementptr inbounds %struct.image_source, %struct.image_source* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = call i32 (...) @obs_enter_graphics()
  %90 = load %struct.image_source*, %struct.image_source** %5, align 8
  %91 = getelementptr inbounds %struct.image_source, %struct.image_source* %90, i32 0, i32 4
  %92 = call i32 @gs_image_file2_update_texture(%struct.TYPE_5__* %91)
  %93 = call i32 (...) @obs_leave_graphics()
  br label %94

94:                                               ; preds = %76, %69
  %95 = load %struct.image_source*, %struct.image_source** %5, align 8
  %96 = getelementptr inbounds %struct.image_source, %struct.image_source* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %64
  br label %136

98:                                               ; preds = %63
  %99 = load %struct.image_source*, %struct.image_source** %5, align 8
  %100 = getelementptr inbounds %struct.image_source, %struct.image_source* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %132

103:                                              ; preds = %98
  %104 = load %struct.image_source*, %struct.image_source** %5, align 8
  %105 = getelementptr inbounds %struct.image_source, %struct.image_source* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %103
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.image_source*, %struct.image_source** %5, align 8
  %113 = getelementptr inbounds %struct.image_source, %struct.image_source* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %111 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %8, align 8
  %119 = load %struct.image_source*, %struct.image_source** %5, align 8
  %120 = getelementptr inbounds %struct.image_source, %struct.image_source* %119, i32 0, i32 4
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @gs_image_file2_tick(%struct.TYPE_5__* %120, i8* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %110
  %126 = call i32 (...) @obs_enter_graphics()
  %127 = load %struct.image_source*, %struct.image_source** %5, align 8
  %128 = getelementptr inbounds %struct.image_source, %struct.image_source* %127, i32 0, i32 4
  %129 = call i32 @gs_image_file2_update_texture(%struct.TYPE_5__* %128)
  %130 = call i32 (...) @obs_leave_graphics()
  br label %131

131:                                              ; preds = %125, %110
  br label %132

132:                                              ; preds = %131, %103, %98
  %133 = load i8*, i8** %6, align 8
  %134 = load %struct.image_source*, %struct.image_source** %5, align 8
  %135 = getelementptr inbounds %struct.image_source, %struct.image_source* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %97
  ret void
}

declare dso_local i8* @obs_get_video_frame_time(...) #1

declare dso_local i64 @get_modified_timestamp(i32) #1

declare dso_local i32 @image_source_load(%struct.image_source*) #1

declare dso_local i64 @obs_source_active(i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_image_file2_update_texture(%struct.TYPE_5__*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @gs_image_file2_tick(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
