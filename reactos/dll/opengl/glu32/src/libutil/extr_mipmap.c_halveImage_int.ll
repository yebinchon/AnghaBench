; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halveImage_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halveImage_int(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
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
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %9
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %55

34:                                               ; preds = %31, %9
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 1
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @halve1Dimage_int(i32 %45, i32 %46, i32 %47, i32* %48, i32* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  br label %236

55:                                               ; preds = %31
  %56 = load i32, i32* %11, align 4
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %17, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %24, align 4
  %65 = load i32*, i32** %14, align 8
  store i32* %65, i32** %25, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %26, align 8
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %153, label %70

70:                                               ; preds = %55
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %149, %70
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %23, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %152

75:                                               ; preds = %71
  store i32 0, i32* %20, align 4
  br label %76

76:                                               ; preds = %137, %75
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %22, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %140

80:                                               ; preds = %76
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %129, %80
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %81
  %86 = load i8*, i8** %26, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sitofp i32 %88 to float
  %90 = load i8*, i8** %26, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = sitofp i32 %95 to float
  %97 = fadd float %89, %96
  %98 = load i8*, i8** %26, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to float
  %105 = fadd float %97, %104
  %106 = load i8*, i8** %26, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = sitofp i32 %114 to float
  %116 = fadd float %105, %115
  %117 = fdiv float %116, 4.000000e+00
  %118 = fpext float %117 to double
  %119 = fadd double %118, 5.000000e-01
  %120 = fptosi double %119 to i32
  %121 = load i32*, i32** %25, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %120, i32* %122, align 4
  %123 = load i32*, i32** %25, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %25, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i8*, i8** %26, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %26, align 8
  br label %129

129:                                              ; preds = %85
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %21, align 4
  br label %81

132:                                              ; preds = %81
  %133 = load i32, i32* %17, align 4
  %134 = load i8*, i8** %26, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %26, align 8
  br label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %20, align 4
  br label %76

140:                                              ; preds = %76
  %141 = load i32, i32* %24, align 4
  %142 = load i8*, i8** %26, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %26, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load i8*, i8** %26, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %26, align 8
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %19, align 4
  br label %71

152:                                              ; preds = %71
  br label %236

153:                                              ; preds = %55
  store i32 0, i32* %19, align 4
  br label %154

154:                                              ; preds = %232, %153
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %235

158:                                              ; preds = %154
  store i32 0, i32* %20, align 4
  br label %159

159:                                              ; preds = %220, %158
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %223

163:                                              ; preds = %159
  store i32 0, i32* %21, align 4
  br label %164

164:                                              ; preds = %212, %163
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %215

168:                                              ; preds = %164
  %169 = load i8*, i8** %26, align 8
  %170 = call i32 @__GLU_SWAP_4_BYTES(i8* %169)
  store i32 %170, i32* %27, align 4
  %171 = load i32, i32* %27, align 4
  store i32 %171, i32* %28, align 4
  %172 = load i8*, i8** %26, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = call i32 @__GLU_SWAP_4_BYTES(i8* %175)
  store i32 %176, i32* %27, align 4
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %28, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %28, align 4
  %180 = load i8*, i8** %26, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = call i32 @__GLU_SWAP_4_BYTES(i8* %183)
  store i32 %184, i32* %27, align 4
  %185 = load i32, i32* %27, align 4
  %186 = load i32, i32* %28, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %28, align 4
  %188 = load i8*, i8** %26, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = call i32 @__GLU_SWAP_4_BYTES(i8* %194)
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* %27, align 4
  %197 = load i32, i32* %28, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %28, align 4
  %199 = load i32, i32* %28, align 4
  %200 = sdiv i32 %199, 4
  %201 = sitofp i32 %200 to double
  %202 = fadd double %201, 5.000000e-01
  %203 = fptosi double %202 to i32
  %204 = load i32*, i32** %25, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %25, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %25, align 8
  %208 = load i32, i32* %15, align 4
  %209 = load i8*, i8** %26, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %26, align 8
  br label %212

212:                                              ; preds = %168
  %213 = load i32, i32* %21, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %21, align 4
  br label %164

215:                                              ; preds = %164
  %216 = load i32, i32* %17, align 4
  %217 = load i8*, i8** %26, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %26, align 8
  br label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %20, align 4
  br label %159

223:                                              ; preds = %159
  %224 = load i32, i32* %24, align 4
  %225 = load i8*, i8** %26, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %26, align 8
  %228 = load i32, i32* %16, align 4
  %229 = load i8*, i8** %26, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %26, align 8
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %19, align 4
  br label %154

235:                                              ; preds = %154
  br label %236

236:                                              ; preds = %40, %235, %152
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @halve1Dimage_int(i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__GLU_SWAP_4_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
