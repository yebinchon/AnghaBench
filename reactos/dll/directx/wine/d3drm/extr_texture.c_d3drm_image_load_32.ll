; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_texture.c_d3drm_image_load_32.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_texture.c_d3drm_image_load_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32, i32, i32, i32*, i64 }

@D3DRM_OK = common dso_local global i32 0, align 4
@D3DRMERR_BADALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate image buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32, i32, i32, i64)* @d3drm_image_load_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3drm_image_load_32(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i64, i64* %13, align 8
  %26 = call i64 @d3drm_image_palettise(%struct.TYPE_4__* %21, i8* %22, i32 %23, i32 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @D3DRM_OK, align 4
  store i32 %29, i32* %7, align 4
  br label %168

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sdiv i32 0, %32
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @D3DRMERR_BADALLOC, align 4
  store i32 %36, i32* %7, align 4
  br label %168

37:                                               ; preds = %30
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 0, %41
  %43 = mul nsw i32 %42, 3
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 3
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %43, %40 ], [ %46, %44 ]
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 4
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i8* @heap_alloc(i32 %53)
  store i8* %54, i8** %14, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @D3DRMERR_BADALLOC, align 4
  store i32 %58, i32* %7, align 4
  br label %168

59:                                               ; preds = %47
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  br label %73

71:                                               ; preds = %59
  %72 = load i8*, i8** %9, align 8
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i8* [ %70, %62 ], [ %72, %71 ]
  store i8* %74, i8** %15, align 8
  %75 = load i8*, i8** %14, align 8
  store i8* %75, i8** %16, align 8
  store i32 0, i32* %20, align 4
  br label %76

76:                                               ; preds = %143, %73
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %146

80:                                               ; preds = %76
  store i32 0, i32* %19, align 4
  br label %81

81:                                               ; preds = %131, %80
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %81
  %86 = load i8*, i8** %15, align 8
  %87 = load i32, i32* %19, align 4
  %88 = mul nsw i32 %87, 3
  %89 = add nsw i32 %88, 0
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %16, align 8
  %94 = load i32, i32* %19, align 4
  %95 = mul nsw i32 %94, 4
  %96 = add nsw i32 %95, 0
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  store i8 %92, i8* %98, align 1
  %99 = load i8*, i8** %15, align 8
  %100 = load i32, i32* %19, align 4
  %101 = mul nsw i32 %100, 3
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %16, align 8
  %107 = load i32, i32* %19, align 4
  %108 = mul nsw i32 %107, 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  store i8 %105, i8* %111, align 1
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %19, align 4
  %114 = mul nsw i32 %113, 3
  %115 = add nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %16, align 8
  %120 = load i32, i32* %19, align 4
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  store i8 %118, i8* %124, align 1
  %125 = load i8*, i8** %16, align 8
  %126 = load i32, i32* %19, align 4
  %127 = mul nsw i32 %126, 4
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  store i8 -1, i8* %130, align 1
  br label %131

131:                                              ; preds = %85
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %19, align 4
  br label %81

134:                                              ; preds = %81
  %135 = load i32, i32* %17, align 4
  %136 = load i8*, i8** %15, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %15, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load i8*, i8** %16, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %16, align 8
  br label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %20, align 4
  br label %76

146:                                              ; preds = %76
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 32, i32* %148, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load i8*, i8** %14, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  store i32 16711680, i32* %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 5
  store i32 65280, i32* %160, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 6
  store i32 255, i32* %162, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 8
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 7
  store i32* null, i32** %166, align 8
  %167 = load i32, i32* @D3DRM_OK, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %146, %56, %35, %28
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i64 @d3drm_image_palettise(%struct.TYPE_4__*, i8*, i32, i32, i64) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
