; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_GetPixelMapusv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_GetPixelMapusv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glGetPixelMapfv\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetPixelMapusv(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %14 = call i32 @gl_error(%struct.TYPE_7__* %12, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %259

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %255 [
    i32 131, label %17
    i32 128, label %40
    i32 130, label %63
    i32 132, label %87
    i32 133, label %111
    i32 134, label %135
    i32 129, label %159
    i32 135, label %183
    i32 136, label %207
    i32 137, label %231
  ]

17:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 19
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %18

39:                                               ; preds = %18
  br label %259

40:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 18
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %41

62:                                               ; preds = %41
  br label %259

63:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 17
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @FLOAT_TO_USHORT(i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %71
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %64

86:                                               ; preds = %64
  br label %259

87:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %89, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 16
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @FLOAT_TO_USHORT(i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %95
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  br label %88

110:                                              ; preds = %88
  br label %259

111:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %112

112:                                              ; preds = %131, %111
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %113, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 15
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @FLOAT_TO_USHORT(i32 %126)
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %119
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %7, align 8
  br label %112

134:                                              ; preds = %112
  br label %259

135:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %136

136:                                              ; preds = %155, %135
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ult i64 %137, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %136
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 14
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @FLOAT_TO_USHORT(i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %143
  %156 = load i64, i64* %7, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %7, align 8
  br label %136

158:                                              ; preds = %136
  br label %259

159:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %160

160:                                              ; preds = %179, %159
  %161 = load i64, i64* %7, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp ult i64 %161, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %160
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 13
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %7, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @FLOAT_TO_USHORT(i32 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %175, i32* %178, align 4
  br label %179

179:                                              ; preds = %167
  %180 = load i64, i64* %7, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %7, align 8
  br label %160

182:                                              ; preds = %160
  br label %259

183:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %184

184:                                              ; preds = %203, %183
  %185 = load i64, i64* %7, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = icmp ult i64 %185, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %184
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 12
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %7, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @FLOAT_TO_USHORT(i32 %198)
  %200 = load i32*, i32** %6, align 8
  %201 = load i64, i64* %7, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %199, i32* %202, align 4
  br label %203

203:                                              ; preds = %191
  %204 = load i64, i64* %7, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %7, align 8
  br label %184

206:                                              ; preds = %184
  br label %259

207:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %208

208:                                              ; preds = %227, %207
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 8
  %213 = load i64, i64* %212, align 8
  %214 = icmp ult i64 %209, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %208
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 11
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %7, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @FLOAT_TO_USHORT(i32 %222)
  %224 = load i32*, i32** %6, align 8
  %225 = load i64, i64* %7, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %215
  %228 = load i64, i64* %7, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %7, align 8
  br label %208

230:                                              ; preds = %208
  br label %259

231:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %232

232:                                              ; preds = %251, %231
  %233 = load i64, i64* %7, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 9
  %237 = load i64, i64* %236, align 8
  %238 = icmp ult i64 %233, %237
  br i1 %238, label %239, label %254

239:                                              ; preds = %232
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 10
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* %7, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @FLOAT_TO_USHORT(i32 %246)
  %248 = load i32*, i32** %6, align 8
  %249 = load i64, i64* %7, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 %247, i32* %250, align 4
  br label %251

251:                                              ; preds = %239
  %252 = load i64, i64* %7, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %7, align 8
  br label %232

254:                                              ; preds = %232
  br label %259

255:                                              ; preds = %15
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %257 = load i32, i32* @GL_INVALID_ENUM, align 4
  %258 = call i32 @gl_error(%struct.TYPE_7__* %256, i32 %257, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %259

259:                                              ; preds = %11, %255, %254, %230, %206, %182, %158, %134, %110, %86, %62, %39
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @FLOAT_TO_USHORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
