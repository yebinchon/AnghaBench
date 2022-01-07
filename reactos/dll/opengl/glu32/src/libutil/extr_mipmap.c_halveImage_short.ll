; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_short.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halveImage_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halveImage_short(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %27 = alloca i64, align 8
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
  %54 = call i32 @halve1Dimage_short(i32 %45, i32 %46, i32 %47, i32* %48, i32* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  br label %232

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
  br i1 %69, label %147, label %70

70:                                               ; preds = %55
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %143, %70
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %23, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %146

75:                                               ; preds = %71
  store i32 0, i32* %20, align 4
  br label %76

76:                                               ; preds = %131, %75
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %22, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %134

80:                                               ; preds = %76
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %123, %80
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %126

85:                                               ; preds = %81
  %86 = load i8*, i8** %26, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %26, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %88, %94
  %96 = load i8*, i8** %26, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = bitcast i8* %99 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %95, %101
  %103 = load i8*, i8** %26, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %102, %111
  %113 = add nsw i32 %112, 2
  %114 = sdiv i32 %113, 4
  %115 = load i32*, i32** %25, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %25, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %25, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i8*, i8** %26, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %26, align 8
  br label %123

123:                                              ; preds = %85
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  br label %81

126:                                              ; preds = %81
  %127 = load i32, i32* %17, align 4
  %128 = load i8*, i8** %26, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %26, align 8
  br label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %20, align 4
  br label %76

134:                                              ; preds = %76
  %135 = load i32, i32* %24, align 4
  %136 = load i8*, i8** %26, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %26, align 8
  %139 = load i32, i32* %16, align 4
  %140 = load i8*, i8** %26, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %26, align 8
  br label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %71

146:                                              ; preds = %71
  br label %232

147:                                              ; preds = %55
  store i32 0, i32* %19, align 4
  br label %148

148:                                              ; preds = %228, %147
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %23, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %231

152:                                              ; preds = %148
  store i32 0, i32* %20, align 4
  br label %153

153:                                              ; preds = %216, %152
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %22, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %219

157:                                              ; preds = %153
  store i32 0, i32* %21, align 4
  br label %158

158:                                              ; preds = %208, %157
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %211

162:                                              ; preds = %158
  %163 = load i8*, i8** %26, align 8
  %164 = call i64 @__GLU_SWAP_2_BYTES(i8* %163)
  store i64 %164, i64* %27, align 8
  %165 = bitcast i64* %27 to i32*
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %28, align 4
  %167 = load i8*, i8** %26, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = call i64 @__GLU_SWAP_2_BYTES(i8* %170)
  store i64 %171, i64* %27, align 8
  %172 = bitcast i64* %27 to i32*
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %28, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %28, align 4
  %176 = load i8*, i8** %26, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = call i64 @__GLU_SWAP_2_BYTES(i8* %179)
  store i64 %180, i64* %27, align 8
  %181 = bitcast i64* %27 to i32*
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %28, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %28, align 4
  %185 = load i8*, i8** %26, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = call i64 @__GLU_SWAP_2_BYTES(i8* %191)
  store i64 %192, i64* %27, align 8
  %193 = bitcast i64* %27 to i32*
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %28, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %28, align 4
  %197 = load i32, i32* %28, align 4
  %198 = add nsw i32 %197, 2
  %199 = sdiv i32 %198, 4
  %200 = load i32*, i32** %25, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %25, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %25, align 8
  %204 = load i32, i32* %15, align 4
  %205 = load i8*, i8** %26, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %26, align 8
  br label %208

208:                                              ; preds = %162
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %21, align 4
  br label %158

211:                                              ; preds = %158
  %212 = load i32, i32* %17, align 4
  %213 = load i8*, i8** %26, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %26, align 8
  br label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %20, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %20, align 4
  br label %153

219:                                              ; preds = %153
  %220 = load i32, i32* %24, align 4
  %221 = load i8*, i8** %26, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8* %223, i8** %26, align 8
  %224 = load i32, i32* %16, align 4
  %225 = load i8*, i8** %26, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %26, align 8
  br label %228

228:                                              ; preds = %219
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %19, align 4
  br label %148

231:                                              ; preds = %148
  br label %232

232:                                              ; preds = %40, %231, %146
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @halve1Dimage_short(i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @__GLU_SWAP_2_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
