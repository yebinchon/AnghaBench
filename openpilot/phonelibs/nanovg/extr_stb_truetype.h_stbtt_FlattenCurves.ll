; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt_FlattenCurves.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt_FlattenCurves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float, float, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32, float, i32**, i32*, i8*)* @stbtt_FlattenCurves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbtt_FlattenCurves(%struct.TYPE_3__* %0, i32 %1, float %2, i32** %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load float, float* %10, align 4
  %24 = load float, float* %10, align 4
  %25 = fmul float %23, %24
  store float %25, float* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %42, %6
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %17, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32* null, i32** %7, align 8
  br label %219

51:                                               ; preds = %45
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = load i8*, i8** %13, align 8
  %57 = call i64 @STBTT_malloc(i32 %55, i8* %56)
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32**, i32*** %11, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32**, i32*** %11, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32*, i32** %12, align 8
  store i32 0, i32* %64, align 4
  store i32* null, i32** %7, align 8
  br label %219

65:                                               ; preds = %51
  store i32 0, i32* %20, align 4
  br label %66

66:                                               ; preds = %204, %65
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %207

69:                                               ; preds = %66
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = load i8*, i8** %13, align 8
  %78 = call i64 @STBTT_malloc(i32 %76, i8* %77)
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %209

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %69
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %192, %84
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %195

89:                                               ; preds = %85
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %191 [
    i32 128, label %96
    i32 129, label %130
    i32 130, label %149
  ]

96:                                               ; preds = %89
  %97 = load i32, i32* %18, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %19, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32**, i32*** %11, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %99, %96
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %19, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load float, float* %116, align 4
  store float %117, float* %21, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load float, float* %122, align 4
  store float %123, float* %22, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = load float, float* %21, align 4
  %128 = load float, float* %22, align 4
  %129 = call i32 @stbtt__add_point(i32* %124, i32 %125, float %127, float %128)
  br label %191

130:                                              ; preds = %89
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load float, float* %135, align 4
  store float %136, float* %21, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load float, float* %141, align 4
  store float %142, float* %22, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  %146 = load float, float* %21, align 4
  %147 = load float, float* %22, align 4
  %148 = call i32 @stbtt__add_point(i32* %143, i32 %144, float %146, float %147)
  br label %191

149:                                              ; preds = %89
  %150 = load i32*, i32** %14, align 8
  %151 = load float, float* %21, align 4
  %152 = load float, float* %22, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load float, float* %169, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load float, float* %175, align 4
  %177 = load float, float* %16, align 4
  %178 = call i32 @stbtt__tesselate_curve(i32* %150, i32* %15, float %151, float %152, i32 %158, i32 %164, float %170, float %176, float %177, i32 0)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load float, float* %183, align 4
  store float %184, float* %21, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load float, float* %189, align 4
  store float %190, float* %22, align 4
  br label %191

191:                                              ; preds = %89, %149, %130, %108
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  br label %85

195:                                              ; preds = %85
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %19, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load i32**, i32*** %11, align 8
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %198, i32* %203, align 4
  br label %204

204:                                              ; preds = %195
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %66

207:                                              ; preds = %66
  %208 = load i32*, i32** %14, align 8
  store i32* %208, i32** %7, align 8
  br label %219

209:                                              ; preds = %82
  %210 = load i32*, i32** %14, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = call i32 @STBTT_free(i32* %210, i8* %211)
  %213 = load i32**, i32*** %11, align 8
  %214 = load i32*, i32** %213, align 8
  %215 = load i8*, i8** %13, align 8
  %216 = call i32 @STBTT_free(i32* %214, i8* %215)
  %217 = load i32**, i32*** %11, align 8
  store i32* null, i32** %217, align 8
  %218 = load i32*, i32** %12, align 8
  store i32 0, i32* %218, align 4
  store i32* null, i32** %7, align 8
  br label %219

219:                                              ; preds = %209, %207, %63, %50
  %220 = load i32*, i32** %7, align 8
  ret i32* %220
}

declare dso_local i64 @STBTT_malloc(i32, i8*) #1

declare dso_local i32 @stbtt__add_point(i32*, i32, float, float) #1

declare dso_local i32 @stbtt__tesselate_curve(i32*, i32*, float, float, i32, i32, float, float, float, i32) #1

declare dso_local i32 @STBTT_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
