; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_xform.c_gl_xform_normals_3fv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_xform.c_gl_xform_normals_3fv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_xform_normals_3fv(i64 %0, [3 x i32]* %1, i32* %2, [3 x i32]* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca [3 x i32]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32]*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store [3 x i32]* %1, [3 x i32]** %7, align 8
  store i32* %2, i32** %8, align 8
  store [3 x i32]* %3, [3 x i32]** %9, align 8
  store i64 %4, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %173

44:                                               ; preds = %5
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 9
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %18, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 6
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %19, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 10
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %20, align 4
  store i64 0, i64* %11, align 8
  br label %72

72:                                               ; preds = %169, %44
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %172

76:                                               ; preds = %72
  %77 = load [3 x i32]*, [3 x i32]** %9, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %77, i64 %78
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %79, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %24, align 4
  %82 = load [3 x i32]*, [3 x i32]** %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 %83
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %84, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %25, align 4
  %87 = load [3 x i32]*, [3 x i32]** %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %87, i64 %88
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %89, i64 0, i64 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %26, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %18, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %98, %101
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %16, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* %19, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %22, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %14, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %20, align 4
  %123 = mul nsw i32 %121, %122
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %23, align 4
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %21, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %22, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %23, align 4
  %134 = mul nsw i32 %132, %133
  %135 = add nsw i32 %131, %134
  %136 = call i32 @GL_SQRT(i32 %135)
  store i32 %136, i32* %27, align 4
  %137 = load i32, i32* %27, align 4
  %138 = sitofp i32 %137 to double
  %139 = fcmp ogt double %138, 1.000000e-30
  br i1 %139, label %140, label %144

140:                                              ; preds = %76
  %141 = load i32, i32* %27, align 4
  %142 = sitofp i32 %141 to double
  %143 = fdiv double 1.000000e+00, %142
  br label %145

144:                                              ; preds = %76
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi double [ %143, %140 ], [ 1.000000e+00, %144 ]
  %147 = fptosi double %146 to i32
  store i32 %147, i32* %28, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %28, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load [3 x i32]*, [3 x i32]** %7, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %151, i64 %152
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %153, i64 0, i64 0
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %28, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load [3 x i32]*, [3 x i32]** %7, align 8
  %159 = load i64, i64* %11, align 8
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %158, i64 %159
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %160, i64 0, i64 1
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %28, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load [3 x i32]*, [3 x i32]** %7, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %165, i64 %166
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %167, i64 0, i64 2
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %145
  %170 = load i64, i64* %11, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %11, align 8
  br label %72

172:                                              ; preds = %72
  br label %270

173:                                              ; preds = %5
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %30, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %31, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %32, align 4
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %33, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 5
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %34, align 4
  %189 = load i32*, i32** %8, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 9
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %35, align 4
  %192 = load i32*, i32** %8, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %36, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 6
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %37, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 10
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %38, align 4
  store i64 0, i64* %29, align 8
  br label %201

201:                                              ; preds = %266, %173
  %202 = load i64, i64* %29, align 8
  %203 = load i64, i64* %6, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %269

205:                                              ; preds = %201
  %206 = load [3 x i32]*, [3 x i32]** %9, align 8
  %207 = load i64, i64* %29, align 8
  %208 = getelementptr inbounds [3 x i32], [3 x i32]* %206, i64 %207
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %208, i64 0, i64 0
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %39, align 4
  %211 = load [3 x i32]*, [3 x i32]** %9, align 8
  %212 = load i64, i64* %29, align 8
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %211, i64 %212
  %214 = getelementptr inbounds [3 x i32], [3 x i32]* %213, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %40, align 4
  %216 = load [3 x i32]*, [3 x i32]** %9, align 8
  %217 = load i64, i64* %29, align 8
  %218 = getelementptr inbounds [3 x i32], [3 x i32]* %216, i64 %217
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %218, i64 0, i64 2
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %41, align 4
  %221 = load i32, i32* %39, align 4
  %222 = load i32, i32* %30, align 4
  %223 = mul nsw i32 %221, %222
  %224 = load i32, i32* %40, align 4
  %225 = load i32, i32* %33, align 4
  %226 = mul nsw i32 %224, %225
  %227 = add nsw i32 %223, %226
  %228 = load i32, i32* %41, align 4
  %229 = load i32, i32* %36, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %227, %230
  %232 = load [3 x i32]*, [3 x i32]** %7, align 8
  %233 = load i64, i64* %29, align 8
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %232, i64 %233
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %234, i64 0, i64 0
  store i32 %231, i32* %235, align 4
  %236 = load i32, i32* %39, align 4
  %237 = load i32, i32* %31, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, i32* %40, align 4
  %240 = load i32, i32* %34, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %238, %241
  %243 = load i32, i32* %41, align 4
  %244 = load i32, i32* %37, align 4
  %245 = mul nsw i32 %243, %244
  %246 = add nsw i32 %242, %245
  %247 = load [3 x i32]*, [3 x i32]** %7, align 8
  %248 = load i64, i64* %29, align 8
  %249 = getelementptr inbounds [3 x i32], [3 x i32]* %247, i64 %248
  %250 = getelementptr inbounds [3 x i32], [3 x i32]* %249, i64 0, i64 1
  store i32 %246, i32* %250, align 4
  %251 = load i32, i32* %39, align 4
  %252 = load i32, i32* %32, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32, i32* %40, align 4
  %255 = load i32, i32* %35, align 4
  %256 = mul nsw i32 %254, %255
  %257 = add nsw i32 %253, %256
  %258 = load i32, i32* %41, align 4
  %259 = load i32, i32* %38, align 4
  %260 = mul nsw i32 %258, %259
  %261 = add nsw i32 %257, %260
  %262 = load [3 x i32]*, [3 x i32]** %7, align 8
  %263 = load i64, i64* %29, align 8
  %264 = getelementptr inbounds [3 x i32], [3 x i32]* %262, i64 %263
  %265 = getelementptr inbounds [3 x i32], [3 x i32]* %264, i64 0, i64 2
  store i32 %261, i32* %265, align 4
  br label %266

266:                                              ; preds = %205
  %267 = load i64, i64* %29, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %29, align 8
  br label %201

269:                                              ; preds = %201
  br label %270

270:                                              ; preds = %269, %172
  ret void
}

declare dso_local i32 @GL_SQRT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
