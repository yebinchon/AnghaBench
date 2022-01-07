; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_uint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halveImage_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halveImage_uint(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %9
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %54

33:                                               ; preds = %30, %9
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 1
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @halve1Dimage_uint(i32 %44, i32 %45, i32 %46, i32* %47, i32* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %231

54:                                               ; preds = %30
  %55 = load i32, i32* %11, align 4
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %23, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %17, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %24, align 4
  %64 = load i32*, i32** %14, align 8
  store i32* %64, i32** %25, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %26, align 8
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %151, label %69

69:                                               ; preds = %54
  store i32 0, i32* %19, align 4
  br label %70

70:                                               ; preds = %147, %69
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %23, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %150

74:                                               ; preds = %70
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %135, %74
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %22, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %138

79:                                               ; preds = %75
  store i32 0, i32* %21, align 4
  br label %80

80:                                               ; preds = %127, %79
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %130

84:                                               ; preds = %80
  %85 = load i8*, i8** %26, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to double
  %89 = load i8*, i8** %26, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = fadd double %88, %95
  %97 = load i8*, i8** %26, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = bitcast i8* %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = sitofp i32 %102 to double
  %104 = fadd double %96, %103
  %105 = load i8*, i8** %26, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to double
  %115 = fadd double %104, %114
  %116 = fdiv double %115, 4.000000e+00
  %117 = fadd double %116, 5.000000e-01
  %118 = fptosi double %117 to i32
  %119 = load i32*, i32** %25, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %25, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %25, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i8*, i8** %26, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %26, align 8
  br label %127

127:                                              ; preds = %84
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %21, align 4
  br label %80

130:                                              ; preds = %80
  %131 = load i32, i32* %17, align 4
  %132 = load i8*, i8** %26, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %26, align 8
  br label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %20, align 4
  br label %75

138:                                              ; preds = %75
  %139 = load i32, i32* %24, align 4
  %140 = load i8*, i8** %26, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %26, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i8*, i8** %26, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %26, align 8
  br label %147

147:                                              ; preds = %138
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %70

150:                                              ; preds = %70
  br label %231

151:                                              ; preds = %54
  store i32 0, i32* %19, align 4
  br label %152

152:                                              ; preds = %227, %151
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %23, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %230

156:                                              ; preds = %152
  store i32 0, i32* %20, align 4
  br label %157

157:                                              ; preds = %215, %156
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %22, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %218

161:                                              ; preds = %157
  store i32 0, i32* %21, align 4
  br label %162

162:                                              ; preds = %207, %161
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %210

166:                                              ; preds = %162
  %167 = load i8*, i8** %26, align 8
  %168 = call i64 @__GLU_SWAP_4_BYTES(i8* %167)
  %169 = trunc i64 %168 to i32
  %170 = load i8*, i8** %26, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = call i64 @__GLU_SWAP_4_BYTES(i8* %173)
  %175 = trunc i64 %174 to i32
  %176 = add nsw i32 %169, %175
  %177 = load i8*, i8** %26, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = call i64 @__GLU_SWAP_4_BYTES(i8* %180)
  %182 = trunc i64 %181 to i32
  %183 = add nsw i32 %176, %182
  %184 = load i8*, i8** %26, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = call i64 @__GLU_SWAP_4_BYTES(i8* %190)
  %192 = trunc i64 %191 to i32
  %193 = add nsw i32 %183, %192
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %27, align 4
  %195 = sdiv i32 %194, 4
  %196 = sitofp i32 %195 to double
  %197 = fadd double %196, 5.000000e-01
  %198 = fptosi double %197 to i32
  %199 = load i32*, i32** %25, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 %198, i32* %200, align 4
  %201 = load i32*, i32** %25, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %25, align 8
  %203 = load i32, i32* %15, align 4
  %204 = load i8*, i8** %26, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %26, align 8
  br label %207

207:                                              ; preds = %166
  %208 = load i32, i32* %21, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %21, align 4
  br label %162

210:                                              ; preds = %162
  %211 = load i32, i32* %17, align 4
  %212 = load i8*, i8** %26, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %26, align 8
  br label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %20, align 4
  br label %157

218:                                              ; preds = %157
  %219 = load i32, i32* %24, align 4
  %220 = load i8*, i8** %26, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %26, align 8
  %223 = load i32, i32* %16, align 4
  %224 = load i8*, i8** %26, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %26, align 8
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %152

230:                                              ; preds = %152
  br label %231

231:                                              ; preds = %39, %230, %150
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @halve1Dimage_uint(i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @__GLU_SWAP_4_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
