; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_lambda_2d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_sample_lambda_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i64, i32, i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"Bad min filter in sample_2d_texture\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad mag filter in sample_2d_texture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)* @sample_lambda_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_lambda_2d(%struct.gl_texture_object* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.gl_texture_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %270, %10
  %23 = load i64, i64* %21, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %273

26:                                               ; preds = %22
  %27 = load i64*, i64** %16, align 8
  %28 = load i64, i64* %21, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %32 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %206

35:                                               ; preds = %26
  %36 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %37 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %203 [
    i32 130, label %39
    i32 133, label %67
    i32 128, label %95
    i32 131, label %122
    i32 129, label %149
    i32 132, label %176
  ]

39:                                               ; preds = %35
  %40 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %41 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %42 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64*, i64** %13, align 8
  %47 = load i64, i64* %21, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %14, align 8
  %51 = load i64, i64* %21, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = load i64, i64* %21, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32*, i32** %18, align 8
  %58 = load i64, i64* %21, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32*, i32** %19, align 8
  %61 = load i64, i64* %21, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32*, i32** %20, align 8
  %64 = load i64, i64* %21, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @sample_2d_nearest(%struct.gl_texture_object* %40, i32 %45, i64 %49, i64 %53, i32* %56, i32* %59, i32* %62, i32* %65)
  br label %205

67:                                               ; preds = %35
  %68 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %69 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %70 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64*, i64** %13, align 8
  %75 = load i64, i64* %21, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %14, align 8
  %79 = load i64, i64* %21, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = load i64, i64* %21, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32*, i32** %18, align 8
  %86 = load i64, i64* %21, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32*, i32** %19, align 8
  %89 = load i64, i64* %21, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32*, i32** %20, align 8
  %92 = load i64, i64* %21, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = call i32 @sample_2d_linear(%struct.gl_texture_object* %68, i32 %73, i64 %77, i64 %81, i32* %84, i32* %87, i32* %90, i32* %93)
  br label %205

95:                                               ; preds = %35
  %96 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %97 = load i64*, i64** %13, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %14, align 8
  %102 = load i64, i64* %21, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %16, align 8
  %106 = load i64, i64* %21, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = load i64, i64* %21, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32*, i32** %18, align 8
  %113 = load i64, i64* %21, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32*, i32** %19, align 8
  %116 = load i64, i64* %21, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32*, i32** %20, align 8
  %119 = load i64, i64* %21, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = call i32 @sample_2d_nearest_mipmap_nearest(%struct.gl_texture_object* %96, i64 %100, i64 %104, i64 %108, i32* %111, i32* %114, i32* %117, i32* %120)
  br label %205

122:                                              ; preds = %35
  %123 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %124 = load i64*, i64** %13, align 8
  %125 = load i64, i64* %21, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %14, align 8
  %129 = load i64, i64* %21, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %16, align 8
  %133 = load i64, i64* %21, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = load i64, i64* %21, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32*, i32** %18, align 8
  %140 = load i64, i64* %21, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32*, i32** %19, align 8
  %143 = load i64, i64* %21, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32*, i32** %20, align 8
  %146 = load i64, i64* %21, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = call i32 @sample_2d_linear_mipmap_nearest(%struct.gl_texture_object* %123, i64 %127, i64 %131, i64 %135, i32* %138, i32* %141, i32* %144, i32* %147)
  br label %205

149:                                              ; preds = %35
  %150 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %151 = load i64*, i64** %13, align 8
  %152 = load i64, i64* %21, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %14, align 8
  %156 = load i64, i64* %21, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %16, align 8
  %160 = load i64, i64* %21, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i32*, i32** %17, align 8
  %164 = load i64, i64* %21, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32*, i32** %18, align 8
  %167 = load i64, i64* %21, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32*, i32** %19, align 8
  %170 = load i64, i64* %21, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32*, i32** %20, align 8
  %173 = load i64, i64* %21, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = call i32 @sample_2d_nearest_mipmap_linear(%struct.gl_texture_object* %150, i64 %154, i64 %158, i64 %162, i32* %165, i32* %168, i32* %171, i32* %174)
  br label %205

176:                                              ; preds = %35
  %177 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %178 = load i64*, i64** %13, align 8
  %179 = load i64, i64* %21, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %14, align 8
  %183 = load i64, i64* %21, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %16, align 8
  %187 = load i64, i64* %21, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = load i64, i64* %21, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32*, i32** %18, align 8
  %194 = load i64, i64* %21, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32*, i32** %19, align 8
  %197 = load i64, i64* %21, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32*, i32** %20, align 8
  %200 = load i64, i64* %21, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = call i32 @sample_2d_linear_mipmap_linear(%struct.gl_texture_object* %177, i64 %181, i64 %185, i64 %189, i32* %192, i32* %195, i32* %198, i32* %201)
  br label %205

203:                                              ; preds = %35
  %204 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %273

205:                                              ; preds = %176, %149, %122, %95, %67, %39
  br label %269

206:                                              ; preds = %26
  %207 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %208 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  switch i32 %209, label %266 [
    i32 130, label %210
    i32 133, label %238
  ]

210:                                              ; preds = %206
  %211 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %212 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %213 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i64*, i64** %13, align 8
  %218 = load i64, i64* %21, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %14, align 8
  %222 = load i64, i64* %21, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load i32*, i32** %17, align 8
  %226 = load i64, i64* %21, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32*, i32** %18, align 8
  %229 = load i64, i64* %21, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load i32*, i32** %19, align 8
  %232 = load i64, i64* %21, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32*, i32** %20, align 8
  %235 = load i64, i64* %21, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = call i32 @sample_2d_nearest(%struct.gl_texture_object* %211, i32 %216, i64 %220, i64 %224, i32* %227, i32* %230, i32* %233, i32* %236)
  br label %268

238:                                              ; preds = %206
  %239 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %240 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %241 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load i64*, i64** %13, align 8
  %246 = load i64, i64* %21, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load i64*, i64** %14, align 8
  %250 = load i64, i64* %21, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load i32*, i32** %17, align 8
  %254 = load i64, i64* %21, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32*, i32** %18, align 8
  %257 = load i64, i64* %21, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32*, i32** %19, align 8
  %260 = load i64, i64* %21, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = load i32*, i32** %20, align 8
  %263 = load i64, i64* %21, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = call i32 @sample_2d_linear(%struct.gl_texture_object* %239, i32 %244, i64 %248, i64 %252, i32* %255, i32* %258, i32* %261, i32* %264)
  br label %268

266:                                              ; preds = %206
  %267 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %238, %210
  br label %269

269:                                              ; preds = %268, %205
  br label %270

270:                                              ; preds = %269
  %271 = load i64, i64* %21, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %21, align 8
  br label %22

273:                                              ; preds = %203, %22
  ret void
}

declare dso_local i32 @sample_2d_nearest(%struct.gl_texture_object*, i32, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_2d_linear(%struct.gl_texture_object*, i32, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_2d_nearest_mipmap_nearest(%struct.gl_texture_object*, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_2d_linear_mipmap_nearest(%struct.gl_texture_object*, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_2d_nearest_mipmap_linear(%struct.gl_texture_object*, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sample_2d_linear_mipmap_linear(%struct.gl_texture_object*, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gl_problem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
