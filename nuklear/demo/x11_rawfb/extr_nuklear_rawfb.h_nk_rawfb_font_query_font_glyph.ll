; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_font_query_font_glyph.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_font_query_font_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_user_font_glyph = type { float, float, float, i8**, i8*, %struct.TYPE_4__, %struct.nk_user_font_glyph* }
%struct.TYPE_4__ = type { float }
%struct.TYPE_5__ = type { i64 }
%struct.nk_font_glyph = type { float, float, float, float, float, float, float, float, float }
%struct.nk_font = type { float, float, float, i8**, i8*, %struct.TYPE_4__, %struct.nk_font* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, float, %struct.nk_user_font_glyph*, i32, i32)* @nk_rawfb_font_query_font_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_font_query_font_glyph(i64 %0, float %1, %struct.nk_user_font_glyph* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.nk_user_font_glyph*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.nk_font_glyph*, align 8
  %13 = alloca %struct.nk_font*, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %0, i64* %14, align 8
  store float %1, float* %7, align 4
  store %struct.nk_user_font_glyph* %2, %struct.nk_user_font_glyph** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %16 = call i32 @NK_ASSERT(%struct.nk_user_font_glyph* %15)
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @NK_UNUSED(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nk_font*
  store %struct.nk_font* %21, %struct.nk_font** %13, align 8
  %22 = load %struct.nk_font*, %struct.nk_font** %13, align 8
  %23 = bitcast %struct.nk_font* %22 to %struct.nk_user_font_glyph*
  %24 = call i32 @NK_ASSERT(%struct.nk_user_font_glyph* %23)
  %25 = load %struct.nk_font*, %struct.nk_font** %13, align 8
  %26 = getelementptr inbounds %struct.nk_font, %struct.nk_font* %25, i32 0, i32 6
  %27 = load %struct.nk_font*, %struct.nk_font** %26, align 8
  %28 = bitcast %struct.nk_font* %27 to %struct.nk_user_font_glyph*
  %29 = call i32 @NK_ASSERT(%struct.nk_user_font_glyph* %28)
  %30 = load %struct.nk_font*, %struct.nk_font** %13, align 8
  %31 = icmp ne %struct.nk_font* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %34 = icmp ne %struct.nk_user_font_glyph* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %5
  br label %111

36:                                               ; preds = %32
  %37 = load float, float* %7, align 4
  %38 = load %struct.nk_font*, %struct.nk_font** %13, align 8
  %39 = getelementptr inbounds %struct.nk_font, %struct.nk_font* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 8
  %42 = fdiv float %37, %41
  store float %42, float* %11, align 4
  %43 = load %struct.nk_font*, %struct.nk_font** %13, align 8
  %44 = bitcast %struct.nk_font* %43 to %struct.nk_user_font_glyph*
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.nk_font_glyph* @nk_font_find_glyph(%struct.nk_user_font_glyph* %44, i32 %45)
  store %struct.nk_font_glyph* %46, %struct.nk_font_glyph** %12, align 8
  %47 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %48 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %47, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %51 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = fsub float %49, %52
  %54 = load float, float* %11, align 4
  %55 = fmul float %53, %54
  %56 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %57 = getelementptr inbounds %struct.nk_user_font_glyph, %struct.nk_user_font_glyph* %56, i32 0, i32 0
  store float %55, float* %57, align 8
  %58 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %59 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  %61 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %62 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %61, i32 0, i32 3
  %63 = load float, float* %62, align 4
  %64 = fsub float %60, %63
  %65 = load float, float* %11, align 4
  %66 = fmul float %64, %65
  %67 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %68 = getelementptr inbounds %struct.nk_user_font_glyph, %struct.nk_user_font_glyph* %67, i32 0, i32 1
  store float %66, float* %68, align 4
  %69 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %70 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %69, i32 0, i32 1
  %71 = load float, float* %70, align 4
  %72 = load float, float* %11, align 4
  %73 = fmul float %71, %72
  %74 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %75 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %74, i32 0, i32 3
  %76 = load float, float* %75, align 4
  %77 = load float, float* %11, align 4
  %78 = fmul float %76, %77
  %79 = call i8* @nk_vec2(float %73, float %78)
  %80 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %81 = getelementptr inbounds %struct.nk_user_font_glyph, %struct.nk_user_font_glyph* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %83 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %82, i32 0, i32 4
  %84 = load float, float* %83, align 4
  %85 = load float, float* %11, align 4
  %86 = fmul float %84, %85
  %87 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %88 = getelementptr inbounds %struct.nk_user_font_glyph, %struct.nk_user_font_glyph* %87, i32 0, i32 2
  store float %86, float* %88, align 8
  %89 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %90 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %89, i32 0, i32 5
  %91 = load float, float* %90, align 4
  %92 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %93 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %92, i32 0, i32 6
  %94 = load float, float* %93, align 4
  %95 = call i8* @nk_vec2(float %91, float %94)
  %96 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %97 = getelementptr inbounds %struct.nk_user_font_glyph, %struct.nk_user_font_glyph* %96, i32 0, i32 3
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %95, i8** %99, align 8
  %100 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %101 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %100, i32 0, i32 7
  %102 = load float, float* %101, align 4
  %103 = load %struct.nk_font_glyph*, %struct.nk_font_glyph** %12, align 8
  %104 = getelementptr inbounds %struct.nk_font_glyph, %struct.nk_font_glyph* %103, i32 0, i32 8
  %105 = load float, float* %104, align 4
  %106 = call i8* @nk_vec2(float %102, float %105)
  %107 = load %struct.nk_user_font_glyph*, %struct.nk_user_font_glyph** %8, align 8
  %108 = getelementptr inbounds %struct.nk_user_font_glyph, %struct.nk_user_font_glyph* %107, i32 0, i32 3
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %36, %35
  ret void
}

declare dso_local i32 @NK_ASSERT(%struct.nk_user_font_glyph*) #1

declare dso_local i32 @NK_UNUSED(i32) #1

declare dso_local %struct.nk_font_glyph* @nk_font_find_glyph(%struct.nk_user_font_glyph*, i32) #1

declare dso_local i8* @nk_vec2(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
