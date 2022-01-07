; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_init_edge_face_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_init_edge_face_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_face_map = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edge_face_map*, i32*, i32*, i32)* @init_edge_face_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_edge_face_map(%struct.edge_face_map* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.edge_face_map*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.edge_face_map* %0, %struct.edge_face_map** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load i32, i32* %9, align 4
  %19 = mul nsw i32 3, %18
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i8* @HeapAlloc(i32 %17, i32 0, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %26 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %28 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %32, i32* %5, align 4
  br label %153

33:                                               ; preds = %4
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 3, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 12
  %39 = trunc i64 %38 to i32
  %40 = call i8* @HeapAlloc(i32 %34, i32 0, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_2__*
  %42 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %43 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %42, i32 0, i32 0
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %45 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %5, align 4
  br label %153

50:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 3, %53
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %58 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @list_init(i32* %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %51

67:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %148, %67
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %151

72:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %144, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %147

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 3, %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 3, %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = srem i32 %89, 3
  %91 = add nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %15, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %76
  %109 = load i32, i32* %10, align 4
  %110 = mul nsw i32 3, %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %115 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %123 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 %121, i32* %128, align 4
  %129 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %130 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load %struct.edge_face_map*, %struct.edge_face_map** %6, align 8
  %136 = getelementptr inbounds %struct.edge_face_map, %struct.edge_face_map* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = call i32 @list_add_head(i32* %134, i32* %141)
  br label %143

143:                                              ; preds = %108, %76
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %73

147:                                              ; preds = %73
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %68

151:                                              ; preds = %68
  %152 = load i32, i32* @D3D_OK, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %48, %31
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
