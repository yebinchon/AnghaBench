; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_vertex_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_vertex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_format = type { i32, i32, i32, i32, i32, i32 }

@format_vertex_info = common dso_local global %struct.TYPE_3__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Invalid attribute size for vertex format %s (%#x).\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*)* @init_format_vertex_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_format_vertex_info(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.wined3d_format*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %105, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %108

11:                                               ; preds = %6
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info* %12, i32 %18)
  store %struct.wined3d_format* %19, %struct.wined3d_format** %4, align 8
  %20 = icmp ne %struct.wined3d_format* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %110

23:                                               ; preds = %11
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %25 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  br label %105

37:                                               ; preds = %23
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %53 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %69 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %77 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %79 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %82 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @calculate_vertex_attribute_size(i32 %80, i32 %83)
  %85 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %86 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = icmp ne i32 %84, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %37
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @debug_d3dformat(i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @format_vertex_info, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %101)
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %2, align 4
  br label %110

104:                                              ; preds = %37
  br label %105

105:                                              ; preds = %104, %36
  %106 = load i32, i32* %5, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %6

108:                                              ; preds = %6
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %88, %21
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.wined3d_format* @get_format_internal(%struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @calculate_vertex_attribute_size(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
