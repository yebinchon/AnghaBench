; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_convert_to_wined3d_declaration.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_convert_to_wined3d_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }
%struct.wined3d_vertex_element = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"d3d9_elements %p, wined3d_elements %p, element_count %p\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@D3DERR_OUTOFVIDEOMEMORY = common dso_local global i32 0, align 4
@d3d_dtype_lookup = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid element type %#x.\0A\00", align 1
@WINED3D_OUTPUT_SLOT_SEMANTIC = common dso_local global i32 0, align 4
@WINED3D_INPUT_PER_VERTEX_DATA = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.wined3d_vertex_element**, i32*)* @convert_to_wined3d_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_wined3d_declaration(%struct.TYPE_8__* %0, %struct.wined3d_vertex_element** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.wined3d_vertex_element**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.wined3d_vertex_element** %1, %struct.wined3d_vertex_element*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %11, %struct.wined3d_vertex_element** %12, i32* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  br label %16

16:                                               ; preds = %28, %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 1
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = icmp slt i32 %23, 128
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i1 [ false, %16 ], [ %25, %22 ]
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %16

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @E_FAIL, align 4
  store i32 %33, i32* %4, align 4
  br label %178

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 48
  %40 = trunc i64 %39 to i32
  %41 = call %struct.wined3d_vertex_element* @heap_alloc(i32 %40)
  %42 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  store %struct.wined3d_vertex_element* %41, %struct.wined3d_vertex_element** %42, align 8
  %43 = icmp ne %struct.wined3d_vertex_element* %41, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @D3DERR_OUTOFVIDEOMEMORY, align 4
  store i32 %46, i32* %4, align 4
  br label %178

47:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %171, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %174

52:                                               ; preds = %48
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @d3d_dtype_lookup, align 8
  %60 = call i64 @ARRAY_SIZE(%struct.TYPE_9__* %59)
  %61 = icmp uge i64 %58, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %71 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %70, align 8
  %72 = call i32 @heap_free(%struct.wined3d_vertex_element* %71)
  %73 = load i32, i32* @E_FAIL, align 4
  store i32 %73, i32* %4, align 4
  br label %178

74:                                               ; preds = %52
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @d3d_dtype_lookup, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %86 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %86, i64 %88
  %90 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %89, i32 0, i32 8
  store i32 %84, i32* %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %98 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %98, i64 %100
  %102 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %101, i32 0, i32 7
  store i32 %96, i32* %102, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %110 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %110, i64 %112
  %114 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %113, i32 0, i32 6
  store i32 %108, i32* %114, align 8
  %115 = load i32, i32* @WINED3D_OUTPUT_SLOT_SEMANTIC, align 4
  %116 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %117 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %117, i64 %119
  %121 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %120, i32 0, i32 5
  store i32 %115, i32* %121, align 4
  %122 = load i32, i32* @WINED3D_INPUT_PER_VERTEX_DATA, align 4
  %123 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %124 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %124, i64 %126
  %128 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %127, i32 0, i32 4
  store i32 %122, i32* %128, align 8
  %129 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %130 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %130, i64 %132
  %134 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %142 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %142, i64 %144
  %146 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %145, i32 0, i32 2
  store i32 %140, i32* %146, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %154 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %154, i64 %156
  %158 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %157, i32 0, i32 1
  store i32 %152, i32* %158, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %6, align 8
  %166 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %166, i64 %168
  %170 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 8
  br label %171

171:                                              ; preds = %74
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %48

174:                                              ; preds = %48
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* @D3D_OK, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %62, %44, %32
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, %struct.wined3d_vertex_element**, i32*) #1

declare dso_local %struct.wined3d_vertex_element* @heap_alloc(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @heap_free(%struct.wined3d_vertex_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
