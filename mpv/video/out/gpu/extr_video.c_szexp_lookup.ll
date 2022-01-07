; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_szexp_lookup.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_szexp_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32 }
%struct.szexp_ctx = type { %struct.TYPE_10__, %struct.gl_video* }
%struct.TYPE_10__ = type { float, float }
%struct.gl_video = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { float, float }
%struct.TYPE_9__ = type { float, float, float, float }
%struct.TYPE_8__ = type { float** }
%struct.TYPE_7__ = type { float, float, float, float }

@.str = private unnamed_addr constant [15 x i8] c"NATIVE_CROPPED\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HOOKED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, float*)* @szexp_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @szexp_lookup(i8* %0, i32 %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstr, align 4
  %6 = alloca i8*, align 8
  %7 = alloca float*, align 8
  %8 = alloca %struct.szexp_ctx*, align 8
  %9 = alloca %struct.gl_video*, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store i8* %0, i8** %6, align 8
  store float* %2, float** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.szexp_ctx*
  store %struct.szexp_ctx* %13, %struct.szexp_ctx** %8, align 8
  %14 = load %struct.szexp_ctx*, %struct.szexp_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.szexp_ctx, %struct.szexp_ctx* %14, i32 0, i32 1
  %16 = load %struct.gl_video*, %struct.gl_video** %15, align 8
  store %struct.gl_video* %16, %struct.gl_video** %9, align 8
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @bstr_equals0(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %3
  %22 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %23 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 8
  %26 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %27 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = fsub float %25, %29
  %31 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %32 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load float**, float*** %33, align 8
  %35 = getelementptr inbounds float*, float** %34, i64 0
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fmul float %30, %38
  %40 = load float*, float** %7, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  store float %39, float* %41, align 4
  %42 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %43 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load float, float* %44, align 8
  %46 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %47 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load float, float* %48, align 4
  %50 = fsub float %45, %49
  %51 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %52 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load float**, float*** %53, align 8
  %55 = getelementptr inbounds float*, float** %54, i64 1
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = fmul float %50, %58
  %60 = load float*, float** %7, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  store float %59, float* %61, align 4
  store i32 1, i32* %4, align 4
  br label %156

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @bstr_equals0(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  %68 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %69 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 8
  %72 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %73 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load float, float* %74, align 4
  %76 = fsub float %71, %75
  %77 = load float*, float** %7, align 8
  %78 = getelementptr inbounds float, float* %77, i64 0
  store float %76, float* %78, align 4
  %79 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %80 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load float, float* %81, align 8
  %83 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %84 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load float, float* %85, align 4
  %87 = fsub float %82, %86
  %88 = load float*, float** %7, align 8
  %89 = getelementptr inbounds float, float* %88, i64 1
  store float %87, float* %89, align 4
  store i32 1, i32* %4, align 4
  br label %156

90:                                               ; preds = %62
  %91 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @bstr_equals0(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.szexp_ctx*, %struct.szexp_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.szexp_ctx, %struct.szexp_ctx* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load float, float* %98, align 8
  %100 = load float*, float** %7, align 8
  %101 = getelementptr inbounds float, float* %100, i64 0
  store float %99, float* %101, align 4
  %102 = load %struct.szexp_ctx*, %struct.szexp_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.szexp_ctx, %struct.szexp_ctx* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load float, float* %104, align 4
  %106 = load float*, float** %7, align 8
  %107 = getelementptr inbounds float, float* %106, i64 1
  store float %105, float* %107, align 4
  store i32 1, i32* %4, align 4
  br label %156

108:                                              ; preds = %90
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %152, %108
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %112 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %109
  %116 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %117 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @bstr_equals0(i32 %125, i8* %123)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %115
  %129 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %130 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load float, float* %136, align 8
  %138 = load float*, float** %7, align 8
  %139 = getelementptr inbounds float, float* %138, i64 0
  store float %137, float* %139, align 4
  %140 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %141 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load float, float* %147, align 4
  %149 = load float*, float** %7, align 8
  %150 = getelementptr inbounds float, float* %149, i64 1
  store float %148, float* %150, align 4
  store i32 1, i32* %4, align 4
  br label %156

151:                                              ; preds = %115
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %109

155:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %128, %95, %67, %21
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @bstr_equals0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
