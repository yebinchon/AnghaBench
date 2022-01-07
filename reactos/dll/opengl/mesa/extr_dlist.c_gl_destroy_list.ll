; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_destroy_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_gl_destroy_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_8__*, i32 }
%struct.gl_image = type { i32 }

@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@InstSize = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_destroy_list(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gl_image*, align 8
  %9 = alloca %struct.gl_image*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @HashLookup(i32 %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @GL_FALSE, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @GL_TRUE, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %247, %25
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %248

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %235 [
    i32 134, label %36
    i32 133, label %59
    i32 136, label %82
    i32 140, label %99
    i32 138, label %117
    i32 139, label %135
    i32 132, label %153
    i32 131, label %170
    i32 130, label %188
    i32 129, label %206
    i32 128, label %214
    i32 137, label %222
    i32 135, label %231
  ]

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 6
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = bitcast %struct.TYPE_8__* %45 to i32*
  %47 = call i32 @gl_free_control_points(%struct.TYPE_9__* %37, i32 %41, i32* %46)
  %48 = load i32*, i32** @InstSize, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %5, align 8
  br label %247

59:                                               ; preds = %31
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 10
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = bitcast %struct.TYPE_8__* %68 to i32*
  %70 = call i32 @gl_free_control_points(%struct.TYPE_9__* %60, i32 %64, i32* %69)
  %71 = load i32*, i32** @InstSize, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %80
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %5, align 8
  br label %247

82:                                               ; preds = %31
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 5
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @free(%struct.TYPE_8__* %86)
  %88 = load i32*, i32** @InstSize, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %5, align 8
  br label %247

99:                                               ; preds = %31
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 7
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = bitcast %struct.TYPE_8__* %103 to %struct.gl_image*
  %105 = call i32 @gl_free_image(%struct.gl_image* %104)
  %106 = load i32*, i32** @InstSize, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %115
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %5, align 8
  br label %247

117:                                              ; preds = %31
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 3
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = bitcast %struct.TYPE_8__* %121 to %struct.gl_image*
  %123 = call i32 @gl_free_image(%struct.gl_image* %122)
  %124 = load i32*, i32** @InstSize, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %133
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %5, align 8
  br label %247

135:                                              ; preds = %31
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 3
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = bitcast %struct.TYPE_8__* %139 to %struct.gl_image*
  %141 = call i32 @gl_free_image(%struct.gl_image* %140)
  %142 = load i32*, i32** @InstSize, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %151
  store %struct.TYPE_8__* %152, %struct.TYPE_8__** %5, align 8
  br label %247

153:                                              ; preds = %31
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = call i32 @free(%struct.TYPE_8__* %157)
  %159 = load i32*, i32** @InstSize, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %168
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %5, align 8
  br label %247

170:                                              ; preds = %31
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i64 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = bitcast %struct.TYPE_8__* %174 to %struct.gl_image*
  %176 = call i32 @gl_free_image(%struct.gl_image* %175)
  %177 = load i32*, i32** @InstSize, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %177, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %186
  store %struct.TYPE_8__* %187, %struct.TYPE_8__** %5, align 8
  br label %247

188:                                              ; preds = %31
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 9
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = bitcast %struct.TYPE_8__* %192 to %struct.gl_image*
  %194 = call i32 @gl_free_image(%struct.gl_image* %193)
  %195 = load i32*, i32** @InstSize, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %204
  store %struct.TYPE_8__* %205, %struct.TYPE_8__** %5, align 8
  br label %247

206:                                              ; preds = %31
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 7
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = bitcast %struct.TYPE_8__* %210 to %struct.gl_image*
  store %struct.gl_image* %211, %struct.gl_image** %8, align 8
  %212 = load %struct.gl_image*, %struct.gl_image** %8, align 8
  %213 = call i32 @gl_free_image(%struct.gl_image* %212)
  br label %247

214:                                              ; preds = %31
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 9
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = bitcast %struct.TYPE_8__* %218 to %struct.gl_image*
  store %struct.gl_image* %219, %struct.gl_image** %9, align 8
  %220 = load %struct.gl_image*, %struct.gl_image** %9, align 8
  %221 = call i32 @gl_free_image(%struct.gl_image* %220)
  br label %247

222:                                              ; preds = %31
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 1
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %227, %struct.TYPE_8__** %5, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %229 = call i32 @free(%struct.TYPE_8__* %228)
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %230, %struct.TYPE_8__** %6, align 8
  br label %247

231:                                              ; preds = %31
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %233 = call i32 @free(%struct.TYPE_8__* %232)
  %234 = load i32, i32* @GL_TRUE, align 4
  store i32 %234, i32* %7, align 4
  br label %247

235:                                              ; preds = %31
  %236 = load i32*, i32** @InstSize, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i64 %245
  store %struct.TYPE_8__* %246, %struct.TYPE_8__** %5, align 8
  br label %247

247:                                              ; preds = %235, %231, %222, %214, %206, %188, %170, %153, %135, %117, %99, %82, %59, %36
  br label %27

248:                                              ; preds = %27
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %4, align 4
  %255 = call i32 @HashRemove(i32 %253, i32 %254)
  ret void
}

declare dso_local i64 @HashLookup(i32, i32) #1

declare dso_local i32 @gl_free_control_points(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @gl_free_image(%struct.gl_image*) #1

declare dso_local i32 @HashRemove(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
