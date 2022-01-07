; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_GetPixelMapuiv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_GetPixelMapuiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glGetPixelMapfv\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetPixelMapuiv(%struct.TYPE_7__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %14 = call i32 @gl_error(%struct.TYPE_7__* %12, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %241

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %237 [
    i32 131, label %17
    i32 128, label %31
    i32 130, label %45
    i32 132, label %69
    i32 133, label %93
    i32 134, label %117
    i32 129, label %141
    i32 135, label %165
    i32 136, label %189
    i32 137, label %213
  ]

17:                                               ; preds = %15
  %18 = load i64*, i64** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 19
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @MEMCPY(i64* %18, i32 %22, i32 %29)
  br label %241

31:                                               ; preds = %15
  %32 = load i64*, i64** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 18
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @MEMCPY(i64* %32, i32 %36, i32 %43)
  br label %241

45:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 17
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @FLOAT_TO_UINT(i32 %60)
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %46

68:                                               ; preds = %46
  br label %241

69:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 16
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @FLOAT_TO_UINT(i32 %84)
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %77
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %70

92:                                               ; preds = %70
  br label %241

93:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %95, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 15
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @FLOAT_TO_UINT(i32 %108)
  %110 = load i64*, i64** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %109, i64* %112, align 8
  br label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %7, align 8
  br label %94

116:                                              ; preds = %94
  br label %241

117:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %118

118:                                              ; preds = %137, %117
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 14
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @FLOAT_TO_UINT(i32 %132)
  %134 = load i64*, i64** %6, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %125
  %138 = load i64, i64* %7, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %7, align 8
  br label %118

140:                                              ; preds = %118
  br label %241

141:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %142

142:                                              ; preds = %161, %141
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %143, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 13
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @FLOAT_TO_UINT(i32 %156)
  %158 = load i64*, i64** %6, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %149
  %162 = load i64, i64* %7, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %7, align 8
  br label %142

164:                                              ; preds = %142
  br label %241

165:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %166

166:                                              ; preds = %185, %165
  %167 = load i64, i64* %7, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %167, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %166
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 12
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %7, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @FLOAT_TO_UINT(i32 %180)
  %182 = load i64*, i64** %6, align 8
  %183 = load i64, i64* %7, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %173
  %186 = load i64, i64* %7, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %7, align 8
  br label %166

188:                                              ; preds = %166
  br label %241

189:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %190

190:                                              ; preds = %209, %189
  %191 = load i64, i64* %7, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 8
  %195 = load i64, i64* %194, align 8
  %196 = icmp ult i64 %191, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %190
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 11
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @FLOAT_TO_UINT(i32 %204)
  %206 = load i64*, i64** %6, align 8
  %207 = load i64, i64* %7, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %205, i64* %208, align 8
  br label %209

209:                                              ; preds = %197
  %210 = load i64, i64* %7, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %7, align 8
  br label %190

212:                                              ; preds = %190
  br label %241

213:                                              ; preds = %15
  store i64 0, i64* %7, align 8
  br label %214

214:                                              ; preds = %233, %213
  %215 = load i64, i64* %7, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 9
  %219 = load i64, i64* %218, align 8
  %220 = icmp ult i64 %215, %219
  br i1 %220, label %221, label %236

221:                                              ; preds = %214
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 10
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @FLOAT_TO_UINT(i32 %228)
  %230 = load i64*, i64** %6, align 8
  %231 = load i64, i64* %7, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  store i64 %229, i64* %232, align 8
  br label %233

233:                                              ; preds = %221
  %234 = load i64, i64* %7, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %7, align 8
  br label %214

236:                                              ; preds = %214
  br label %241

237:                                              ; preds = %15
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %239 = load i32, i32* @GL_INVALID_ENUM, align 4
  %240 = call i32 @gl_error(%struct.TYPE_7__* %238, i32 %239, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %241

241:                                              ; preds = %11, %237, %236, %212, %188, %164, %140, %116, %92, %68, %31, %17
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @MEMCPY(i64*, i32, i32) #1

declare dso_local i64 @FLOAT_TO_UINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
