; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_params_to_str_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_params_to_str_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image_params = type { i32, i32, i64, i64, i64, i64, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" [%d:%d]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" %s/%s/%s/%s/%s\00", align 1
@mp_csp_names = common dso_local global i32 0, align 4
@mp_csp_prim_names = common dso_local global i32 0, align 4
@mp_csp_trc_names = common dso_local global i32 0, align 4
@mp_csp_levels_names = common dso_local global i32 0, align 4
@mp_csp_light_names = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c" SP=%f\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" CL=%s\00", align 1
@mp_chroma_names = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" rot=%d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" stereo=%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_image_params_to_str_buf(i8* %0, i64 %1, %struct.mp_image_params* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mp_image_params*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mp_image_params* %2, %struct.mp_image_params** %6, align 8
  %7 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %8 = icmp ne %struct.mp_image_params* %7, null
  br i1 %8, label %9, label %147

9:                                                ; preds = %3
  %10 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %11 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %10, i32 0, i32 9
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %147

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %18 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %21 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %25 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %28 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %14
  %32 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %33 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31, %14
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %40 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %43 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %37, i64 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %36, %31
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %50 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @mp_imgfmt_to_name(i64 %51)
  %53 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %47, i64 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %55 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %54, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %62 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @mp_imgfmt_to_name(i64 %63)
  %65 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %59, i64 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %58, %46
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* @mp_csp_names, align 4
  %70 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %71 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @m_opt_choice_str(i32 %69, i32 %73)
  %75 = load i32, i32* @mp_csp_prim_names, align 4
  %76 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %77 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @m_opt_choice_str(i32 %75, i32 %79)
  %81 = load i32, i32* @mp_csp_trc_names, align 4
  %82 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %83 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @m_opt_choice_str(i32 %81, i32 %85)
  %87 = load i32, i32* @mp_csp_levels_names, align 4
  %88 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %89 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @m_opt_choice_str(i32 %87, i32 %91)
  %93 = load i32, i32* @mp_csp_light_names, align 4
  %94 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %95 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @m_opt_choice_str(i32 %93, i32 %97)
  %99 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %67, i64 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %74, i64 %80, i64 %86, i64 %92, i64 %98)
  %100 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %101 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %66
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %109 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %106, i64 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %105, %66
  %114 = load i8*, i8** %4, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* @mp_chroma_names, align 4
  %117 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %118 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @m_opt_choice_str(i32 %116, i32 %119)
  %121 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %114, i64 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %120)
  %122 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %123 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %113
  %127 = load i8*, i8** %4, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %130 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %127, i64 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %126, %113
  %134 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %135 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load i8*, i8** %4, align 8
  %140 = load i64, i64* %5, align 8
  %141 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %142 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @MP_STEREO3D_NAME_DEF(i64 %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %145 = call i32 (i8*, i64, i8*, i64, ...) @mp_snprintf_cat(i8* %139, i64 %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %138, %133
  br label %151

147:                                              ; preds = %9, %3
  %148 = load i8*, i8** %4, align 8
  %149 = load i64, i64* %5, align 8
  %150 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %148, i64 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %146
  %152 = load i8*, i8** %4, align 8
  ret i8* %152
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @mp_snprintf_cat(i8*, i64, i8*, i64, ...) #1

declare dso_local i64 @mp_imgfmt_to_name(i64) #1

declare dso_local i64 @m_opt_choice_str(i32, i32) #1

declare dso_local i64 @MP_STEREO3D_NAME_DEF(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
