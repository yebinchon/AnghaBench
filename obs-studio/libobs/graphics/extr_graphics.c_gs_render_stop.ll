; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_render_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_render_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i64, %struct.TYPE_6__*, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@thread_graphics = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"gs_render_stop\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"gs_render_stop: normal count does not match vertex count\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"gs_render_stop: color count does not match vertex count\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"gs_render_stop: texture vertex count does not match vertex count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_render_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thread_graphics, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = call i32 @gs_valid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %174

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %60, label %18

18:                                               ; preds = %11
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @da_free(i64 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @da_free(i64 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @da_free(i64 %37)
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %51, %23
  %40 = load i64, i64* %4, align 8
  %41 = icmp ult i64 %40, 16
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @da_free(i64 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @gs_vbdata_destroy(i32* %57)
  br label %59

59:                                               ; preds = %54, %18
  br label %174

60:                                               ; preds = %11
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i32, i32* @LOG_ERROR, align 4
  %78 = call i32 @blog(i32 %77, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @min_size(i64 %79, i64 %83)
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %76, %66, %60
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %95, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load i32, i32* @LOG_ERROR, align 4
  %103 = call i32 @blog(i32 %102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @min_size(i64 %104, i64 %108)
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %101, %91, %85
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %110
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %124, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %118
  %131 = load i32, i32* @LOG_ERROR, align 4
  %132 = call i32 @blog(i32 %131, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i64, i64* %5, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @min_size(i64 %133, i64 %139)
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %130, %118, %110
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @gs_vertexbuffer_flush(i32* %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @gs_load_vertexbuffer(i32* %153)
  %155 = call i32 @gs_load_indexbuffer(i32* null)
  %156 = load i32, i32* %2, align 4
  %157 = load i64, i64* %5, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @gs_draw(i32 %156, i32 0, i32 %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = call i32 @reset_immediate_arrays(%struct.TYPE_5__* %160)
  br label %171

162:                                              ; preds = %141
  %163 = call i32* (...) @gs_render_save()
  store i32* %163, i32** %6, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @gs_load_vertexbuffer(i32* %164)
  %166 = call i32 @gs_load_indexbuffer(i32* null)
  %167 = load i32, i32* %2, align 4
  %168 = call i32 @gs_draw(i32 %167, i32 0, i32 0)
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @gs_vertexbuffer_destroy(i32* %169)
  br label %171

171:                                              ; preds = %162, %146
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  br label %174

174:                                              ; preds = %171, %59, %10
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local i32 @da_free(i64) #1

declare dso_local i32 @gs_vbdata_destroy(i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @min_size(i64, i64) #1

declare dso_local i32 @gs_vertexbuffer_flush(i32*) #1

declare dso_local i32 @gs_load_vertexbuffer(i32*) #1

declare dso_local i32 @gs_load_indexbuffer(i32*) #1

declare dso_local i32 @gs_draw(i32, i32, i32) #1

declare dso_local i32 @reset_immediate_arrays(%struct.TYPE_5__*) #1

declare dso_local i32* @gs_render_save(...) #1

declare dso_local i32 @gs_vertexbuffer_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
