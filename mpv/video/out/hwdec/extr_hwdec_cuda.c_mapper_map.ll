; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_mapper_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_mapper_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_15__**, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.cuda_mapper_priv* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_11__ = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { i64, i32 (%struct.ra_hwdec_mapper*, i32)*, i32 (%struct.ra_hwdec_mapper*, i32)*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (i32*)*, i32 (i32)*, i32 (%struct.TYPE_17__*, i32)*, i32 (i32)* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cuda_mapper_priv = type { %struct.TYPE_18__, i32*, i32 }
%struct.TYPE_18__ = type { i32 }

@CU_MEMORYTYPE_ARRAY = common dso_local global i32 0, align 4
@CU_MEMORYTYPE_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_map(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.cuda_mapper_priv*, align 8
  %5 = alloca %struct.cuda_hw_priv*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %12 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %13 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %12, i32 0, i32 3
  %14 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %13, align 8
  store %struct.cuda_mapper_priv* %14, %struct.cuda_mapper_priv** %4, align 8
  %15 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %16 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %18, align 8
  store %struct.cuda_hw_priv* %19, %struct.cuda_hw_priv** %5, align 8
  %20 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %21 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %4, align 8
  %27 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  %30 = call i32 @CHECK_CU(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %166

35:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %139, %35
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %4, align 8
  %39 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %142

43:                                               ; preds = %36
  %44 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %45 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %44, i32 0, i32 2
  %46 = load i32 (%struct.ra_hwdec_mapper*, i32)*, i32 (%struct.ra_hwdec_mapper*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.ra_hwdec_mapper*, i32)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %50 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %49, i32 0, i32 2
  %51 = load i32 (%struct.ra_hwdec_mapper*, i32)*, i32 (%struct.ra_hwdec_mapper*, i32)** %50, align 8
  %52 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 %51(%struct.ra_hwdec_mapper* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %154

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %60 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %4, align 8
  %61 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @mp_image_plane_w(%struct.TYPE_18__* %61, i32 %62)
  %64 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %65 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %66, i64 %68
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %63, %75
  store i32 %76, i32* %59, align 4
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %78 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %4, align 8
  %79 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @mp_image_plane_h(%struct.TYPE_18__* %79, i32 %80)
  store i32 %81, i32* %77, align 4
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %83 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %4, align 8
  %84 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %82, align 4
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %91 = load i32, i32* @CU_MEMORYTYPE_ARRAY, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %94 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %95 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %93, align 4
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  %104 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %105 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %103, align 4
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 7
  %114 = load i32, i32* @CU_MEMORYTYPE_DEVICE, align 4
  store i32 %114, i32* %113, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %116, align 8
  %118 = call i32 %117(%struct.TYPE_17__* %11, i32 0)
  %119 = call i32 @CHECK_CU(i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %58
  br label %154

123:                                              ; preds = %58
  %124 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %125 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %124, i32 0, i32 1
  %126 = load i32 (%struct.ra_hwdec_mapper*, i32)*, i32 (%struct.ra_hwdec_mapper*, i32)** %125, align 8
  %127 = icmp ne i32 (%struct.ra_hwdec_mapper*, i32)* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %130 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %129, i32 0, i32 1
  %131 = load i32 (%struct.ra_hwdec_mapper*, i32)*, i32 (%struct.ra_hwdec_mapper*, i32)** %130, align 8
  %132 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 %131(%struct.ra_hwdec_mapper* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %128
  br label %154

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %123
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %36

142:                                              ; preds = %36
  %143 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %144 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i32 (i32)*, i32 (i32)** %149, align 8
  %151 = call i32 %150(i32 0)
  %152 = call i32 @CHECK_CU(i32 %151)
  br label %153

153:                                              ; preds = %147, %142
  br label %154

154:                                              ; preds = %153, %136, %122, %56
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32 (i32*)*, i32 (i32*)** %156, align 8
  %158 = call i32 %157(i32* %7)
  %159 = call i32 @CHECK_CU(i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %2, align 4
  br label %166

164:                                              ; preds = %154
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %162, %33
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @mp_image_plane_w(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mp_image_plane_h(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
