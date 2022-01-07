; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_write_zoomed_stencil_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_write_zoomed_stencil_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_zoomed_stencil_span(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %27 = load i32, i32* @MAX_WIDTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %22, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAX_WIDTH, align 4
  %37 = call i32 @MIN2(i32 %35, i32 %36)
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %38, %42
  %44 = call i64 @ABSF(i32 %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %6
  store i32 1, i32* %24, align 4
  br label %230

49:                                               ; preds = %6
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sitofp i32 %53 to double
  %55 = fcmp olt double %54, 0.000000e+00
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %65, %69
  %71 = add nsw i32 %64, %70
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %74, %78
  %80 = add nsw i32 %72, %79
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %60
  store i32 1, i32* %24, align 4
  br label %230

85:                                               ; preds = %60
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %25, align 4
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1, i32* %24, align 4
  br label %230

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %102, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 1, i32* %24, align 4
  br label %230

118:                                              ; preds = %109, %101
  store i32 0, i32* %20, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* %23, align 4
  store i32 %132, i32* %13, align 4
  br label %138

133:                                              ; preds = %127
  %134 = load i32, i32* %13, align 4
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 1, i32* %24, align 4
  br label %230

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %131
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @MAX_WIDTH, align 4
  %141 = icmp sle i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sitofp i32 %147 to float
  %149 = fcmp oeq float %148, -1.000000e+00
  br i1 %149, label %150, label %174

150:                                              ; preds = %138
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %170, %150
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %157, %158
  %160 = sub nsw i32 %156, %159
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %18, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %19, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %30, i64 %168
  store i32 %166, i32* %169, align 4
  br label %170

170:                                              ; preds = %155
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %151

173:                                              ; preds = %151
  br label %212

174:                                              ; preds = %138
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sitofp i32 %178 to float
  %180 = fdiv float 1.000000e+00, %179
  %181 = fptosi float %180 to i32
  store i32 %181, i32* %26, align 4
  store i32 0, i32* %19, align 4
  br label %182

182:                                              ; preds = %208, %174
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %182
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %26, align 4
  %191 = mul nsw i32 %189, %190
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %18, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %186
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %195, %196
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  br label %199

199:                                              ; preds = %194, %186
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %30, i64 %206
  store i32 %204, i32* %207, align 4
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %19, align 4
  br label %182

211:                                              ; preds = %182
  br label %212

212:                                              ; preds = %211, %173
  %213 = load i32, i32* %14, align 4
  store i32 %213, i32* %17, align 4
  br label %214

214:                                              ; preds = %226, %212
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %214
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %20, align 4
  %223 = add nsw i32 %221, %222
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @gl_write_stencil_span(%struct.TYPE_8__* %219, i32 %220, i32 %223, i32 %224, i32* %30)
  br label %226

226:                                              ; preds = %218
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %17, align 4
  br label %214

229:                                              ; preds = %214
  store i32 0, i32* %24, align 4
  br label %230

230:                                              ; preds = %229, %136, %117, %100, %84, %48
  %231 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %24, align 4
  switch i32 %232, label %234 [
    i32 0, label %233
    i32 1, label %233
  ]

233:                                              ; preds = %230, %230
  ret void

234:                                              ; preds = %230
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MIN2(i32, i32) #2

declare dso_local i64 @ABSF(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @gl_write_stencil_span(%struct.TYPE_8__*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
