; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_material.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i32, %struct.TYPE_22__**)*, i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, i32*, i8**)* }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_18__, i32, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { float, float, float, float }
%struct.TYPE_18__ = type { float }

@.str = private unnamed_addr constant [33 x i8] c"incorrect data size (%ld bytes)\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@TID_D3DRMTextureFilename = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @parse_material to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_material(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  %19 = load i32 (%struct.TYPE_22__*, i32*, i8**)*, i32 (%struct.TYPE_22__*, i32*, i8**)** %18, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = bitcast i32** %8 to i8**
  %22 = call i32 %19(%struct.TYPE_22__* %20, i32* %7, i8** %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %169

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 44
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 3
  %39 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %38, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = call i32 %39(%struct.TYPE_22__* %40)
  %42 = load i32, i32* @E_FAIL, align 4
  store i32 %42, i32* %3, align 4
  br label %169

43:                                               ; preds = %28
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @memcpy(%struct.TYPE_18__* %46, i32* %47, i32 4)
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32* %57, i32** %8, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @memcpy(%struct.TYPE_18__* %60, i32* %61, i32 12)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  store float 1.000000e+00, float* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 12
  store i32* %68, i32** %8, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @memcpy(%struct.TYPE_18__* %71, i32* %72, i32 12)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  store float 1.000000e+00, float* %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  store float 0.000000e+00, float* %81, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  store float 0.000000e+00, float* %85, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  store float 0.000000e+00, float* %89, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  store float 1.000000e+00, float* %93, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  %98 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %97, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = call i32 %98(%struct.TYPE_22__* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i32*)** %104, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %107 = call i32 %105(%struct.TYPE_22__* %106, i32* %12)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @FAILED(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %43
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %169

113:                                              ; preds = %43
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %160, %113
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %163

118:                                              ; preds = %114
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load i32 (%struct.TYPE_22__*, i32, %struct.TYPE_22__**)*, i32 (%struct.TYPE_22__*, i32, %struct.TYPE_22__**)** %122, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 %123(%struct.TYPE_22__* %124, i32 %125, %struct.TYPE_22__** %10)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @FAILED(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %169

132:                                              ; preds = %118
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_22__*, i32*)*, i32 (%struct.TYPE_22__*, i32*)** %136, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %139 = call i32 %137(%struct.TYPE_22__* %138, i32* %9)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i64 @FAILED(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %165

144:                                              ; preds = %132
  %145 = call i64 @IsEqualGUID(i32* %9, i32* @TID_D3DRMTextureFilename)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = call i32 @parse_texture_filename(%struct.TYPE_22__* %148, i32** %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i64 @FAILED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %165

156:                                              ; preds = %147
  br label %157

157:                                              ; preds = %156, %144
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %159 = call i32 @IUnknown_Release(%struct.TYPE_22__* %158)
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %114

163:                                              ; preds = %114
  %164 = load i32, i32* @D3D_OK, align 4
  store i32 %164, i32* %3, align 4
  br label %169

165:                                              ; preds = %155, %143
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %167 = call i32 @IUnknown_Release(%struct.TYPE_22__* %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %163, %130, %111, %32, %26
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @parse_texture_filename(%struct.TYPE_22__*, i32**) #1

declare dso_local i32 @IUnknown_Release(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
