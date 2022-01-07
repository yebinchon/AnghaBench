; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_video_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_video_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { i32, i32, i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @ft2_video_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft2_video_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.ft2_source*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ft2_source*
  store %struct.ft2_source* %8, %struct.ft2_source** %5, align 8
  %9 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %10 = icmp eq %struct.ft2_source* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %85

12:                                               ; preds = %2
  %13 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %14 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %19 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %12
  br label %85

23:                                               ; preds = %17
  %24 = call i32 (...) @os_gettime_ns()
  %25 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %26 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = icmp sge i32 %28, 1000000000
  br i1 %29, label %30, label %82

30:                                               ; preds = %23
  %31 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %32 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @get_modified_timestamp(i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = call i32 (...) @os_gettime_ns()
  %36 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %37 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %39 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %30
  %43 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %44 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %49 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %50 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @read_from_end(%struct.ft2_source* %48, i32 %51)
  br label %59

53:                                               ; preds = %42
  %54 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %55 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %56 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @load_text_from_file(%struct.ft2_source* %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %61 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %62 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @cache_glyphs(%struct.ft2_source* %60, i32 %63)
  %65 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %66 = call i32 @set_up_vertex_buffer(%struct.ft2_source* %65)
  %67 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %68 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %30
  %70 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %71 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %78 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %80 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %81, %23
  %83 = load float, float* %4, align 4
  %84 = call i32 @UNUSED_PARAMETER(float %83)
  br label %85

85:                                               ; preds = %82, %22, %11
  ret void
}

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i64 @get_modified_timestamp(i32) #1

declare dso_local i32 @read_from_end(%struct.ft2_source*, i32) #1

declare dso_local i32 @load_text_from_file(%struct.ft2_source*, i32) #1

declare dso_local i32 @cache_glyphs(%struct.ft2_source*, i32) #1

declare dso_local i32 @set_up_vertex_buffer(%struct.ft2_source*) #1

declare dso_local i32 @UNUSED_PARAMETER(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
