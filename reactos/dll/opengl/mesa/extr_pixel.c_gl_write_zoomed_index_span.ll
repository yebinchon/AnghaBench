; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_write_zoomed_index_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_write_zoomed_index_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_zoomed_index_span(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %30 = load i32, i32* @MAX_WIDTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %23, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  %34 = load i32, i32* @MAX_WIDTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %25, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_WIDTH, align 4
  %43 = call i32 @MIN2(i32 %41, i32 %42)
  store i32 %43, i32* %26, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %44, %48
  %50 = call i64 @ABSF(i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %7
  store i32 1, i32* %27, align 4
  br label %253

55:                                               ; preds = %7
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sitofp i32 %59 to double
  %61 = fcmp olt double %60, 0.000000e+00
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %71, %75
  %77 = add nsw i32 %70, %76
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %80, %84
  %86 = add nsw i32 %78, %85
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %66
  store i32 1, i32* %27, align 4
  br label %253

91:                                               ; preds = %66
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %28, align 4
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %28, align 4
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %17, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 1, i32* %27, align 4
  br label %253

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %108, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %107
  %116 = load i32, i32* %17, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %116, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 1, i32* %27, align 4
  br label %253

124:                                              ; preds = %115, %107
  store i32 0, i32* %22, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %22, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %127, %124
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %26, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %26, align 4
  store i32 %138, i32* %15, align 4
  br label %144

139:                                              ; preds = %133
  %140 = load i32, i32* %15, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1, i32* %27, align 4
  br label %253

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143, %137
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @MAX_WIDTH, align 4
  %147 = icmp sle i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sitofp i32 %153 to float
  %155 = fcmp oeq float %154, -1.000000e+00
  br i1 %155, label %156, label %188

156:                                              ; preds = %144
  store i32 0, i32* %21, align 4
  br label %157

157:                                              ; preds = %184, %156
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %187

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %163, %164
  %166 = sub nsw i32 %162, %165
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %20, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %33, i64 %174
  store i32 %172, i32* %175, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %20, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %36, i64 %182
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %161
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %21, align 4
  br label %157

187:                                              ; preds = %157
  br label %234

188:                                              ; preds = %144
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sitofp i32 %192 to float
  %194 = fdiv float 1.000000e+00, %193
  %195 = fptosi float %194 to i32
  store i32 %195, i32* %29, align 4
  store i32 0, i32* %21, align 4
  br label %196

196:                                              ; preds = %230, %188
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %233

200:                                              ; preds = %196
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %22, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %29, align 4
  %205 = mul nsw i32 %203, %204
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %200
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %209, %210
  %212 = sub nsw i32 %211, 1
  store i32 %212, i32* %20, align 4
  br label %213

213:                                              ; preds = %208, %200
  %214 = load i32*, i32** %13, align 8
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %21, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %33, i64 %220
  store i32 %218, i32* %221, align 4
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* %20, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %21, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %36, i64 %228
  store i32 %226, i32* %229, align 4
  br label %230

230:                                              ; preds = %213
  %231 = load i32, i32* %21, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %21, align 4
  br label %196

233:                                              ; preds = %196
  br label %234

234:                                              ; preds = %233, %187
  %235 = load i32, i32* %16, align 4
  store i32 %235, i32* %19, align 4
  br label %236

236:                                              ; preds = %249, %234
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %17, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %236
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %22, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* @GL_BITMAP, align 4
  %248 = call i32 @gl_write_index_span(%struct.TYPE_8__* %241, i32 %242, i32 %245, i32 %246, i32* %36, i32* %33, i32 %247)
  br label %249

249:                                              ; preds = %240
  %250 = load i32, i32* %19, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %19, align 4
  br label %236

252:                                              ; preds = %236
  store i32 0, i32* %27, align 4
  br label %253

253:                                              ; preds = %252, %142, %123, %106, %90, %54
  %254 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %27, align 4
  switch i32 %255, label %257 [
    i32 0, label %256
    i32 1, label %256
  ]

256:                                              ; preds = %253, %253
  ret void

257:                                              ; preds = %253
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MIN2(i32, i32) #2

declare dso_local i64 @ABSF(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @gl_write_index_span(%struct.TYPE_8__*, i32, i32, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
