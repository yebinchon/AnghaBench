; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halve1Dimage_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halve1Dimage_int(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [2 x i32], align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %20, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %21, align 8
  %36 = load i32*, i32** %14, align 8
  store i32* %36, i32** %22, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %9
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 1
  br label %42

42:                                               ; preds = %39, %9
  %43 = phi i1 [ true, %9 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %131

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i32 1, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %118, %53
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %121

62:                                               ; preds = %58
  store i32 0, i32* %24, align 4
  br label %63

63:                                               ; preds = %110, %62
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %113

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i8*, i8** %21, align 8
  %72 = call i32 @__GLU_SWAP_4_BYTES(i8* %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = load i8*, i8** %21, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 @__GLU_SWAP_4_BYTES(i8* %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  br label %92

80:                                               ; preds = %67
  %81 = load i8*, i8** %21, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %21, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = bitcast i8* %88 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %80, %70
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to float
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = sitofp i32 %97 to float
  %99 = fadd float %95, %98
  %100 = fpext float %99 to double
  %101 = fdiv double %100, 2.000000e+00
  %102 = fptosi double %101 to i32
  %103 = load i32*, i32** %22, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i8*, i8** %21, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %21, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %22, align 8
  br label %110

110:                                              ; preds = %92
  %111 = load i32, i32* %24, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %24, align 4
  br label %63

113:                                              ; preds = %63
  %114 = load i32, i32* %17, align 4
  %115 = load i8*, i8** %21, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %21, align 8
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %23, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %23, align 4
  br label %58

121:                                              ; preds = %58
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %17, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sub nsw i32 %122, %125
  store i32 %126, i32* %26, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load i8*, i8** %21, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %21, align 8
  br label %224

131:                                              ; preds = %42
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %223

134:                                              ; preds = %131
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %17, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sub nsw i32 %135, %138
  store i32 %139, i32* %27, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 1
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  store i32 1, i32* %19, align 4
  store i32 0, i32* %23, align 4
  br label %144

144:                                              ; preds = %208, %134
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %211

148:                                              ; preds = %144
  store i32 0, i32* %28, align 4
  br label %149

149:                                              ; preds = %196, %148
  %150 = load i32, i32* %28, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %199

153:                                              ; preds = %149
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i8*, i8** %21, align 8
  %158 = call i32 @__GLU_SWAP_4_BYTES(i8* %157)
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %158, i32* %159, align 4
  %160 = load i8*, i8** %21, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = call i32 @__GLU_SWAP_4_BYTES(i8* %163)
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %164, i32* %165, align 4
  br label %178

166:                                              ; preds = %153
  %167 = load i8*, i8** %21, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %169, i32* %170, align 4
  %171 = load i8*, i8** %21, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = bitcast i8* %174 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %166, %156
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = sitofp i32 %180 to float
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = sitofp i32 %183 to float
  %185 = fadd float %181, %184
  %186 = fpext float %185 to double
  %187 = fdiv double %186, 2.000000e+00
  %188 = fptosi double %187 to i32
  %189 = load i32*, i32** %22, align 8
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %15, align 4
  %191 = load i8*, i8** %21, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %21, align 8
  %194 = load i32*, i32** %22, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %22, align 8
  br label %196

196:                                              ; preds = %178
  %197 = load i32, i32* %28, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %28, align 4
  br label %149

199:                                              ; preds = %149
  %200 = load i32, i32* %27, align 4
  %201 = load i8*, i8** %21, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %21, align 8
  %204 = load i32, i32* %16, align 4
  %205 = load i8*, i8** %21, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %21, align 8
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %23, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %23, align 4
  br label %144

211:                                              ; preds = %144
  %212 = load i8*, i8** %21, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = bitcast i32* %213 to i8*
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %12, align 4
  %217 = mul nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %214, i64 %218
  %220 = icmp eq i8* %212, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  br label %223

223:                                              ; preds = %211, %131
  br label %224

224:                                              ; preds = %223, %121
  %225 = load i32*, i32** %22, align 8
  %226 = bitcast i32* %225 to i8*
  %227 = load i32*, i32** %14, align 8
  %228 = bitcast i32* %227 to i8*
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %15, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %19, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %20, align 4
  %235 = mul nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %228, i64 %236
  %238 = icmp eq i8* %226, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @__GLU_SWAP_4_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
