; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halveImage_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halveImage_float(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %27 = alloca %union.anon, align 4
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
  %53 = call i32 @halve1Dimage_float(i32 %44, i32 %45, i32 %46, i32* %47, i32* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %245

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
  br i1 %68, label %145, label %69

69:                                               ; preds = %54
  store i32 0, i32* %19, align 4
  br label %70

70:                                               ; preds = %141, %69
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %23, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %144

74:                                               ; preds = %70
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %129, %74
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %22, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %132

79:                                               ; preds = %75
  store i32 0, i32* %21, align 4
  br label %80

80:                                               ; preds = %121, %79
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  %85 = load i8*, i8** %26, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %26, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %87, %93
  %95 = load i8*, i8** %26, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = bitcast i8* %98 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %94, %100
  %102 = load i8*, i8** %26, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = bitcast i8* %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %101, %110
  %112 = sdiv i32 %111, 4
  %113 = load i32*, i32** %25, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %25, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %25, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i8*, i8** %26, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %26, align 8
  br label %121

121:                                              ; preds = %84
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %80

124:                                              ; preds = %80
  %125 = load i32, i32* %17, align 4
  %126 = load i8*, i8** %26, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %26, align 8
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %20, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %20, align 4
  br label %75

132:                                              ; preds = %75
  %133 = load i32, i32* %24, align 4
  %134 = load i8*, i8** %26, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %26, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i8*, i8** %26, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %26, align 8
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %70

144:                                              ; preds = %70
  br label %245

145:                                              ; preds = %54
  store i32 0, i32* %19, align 4
  br label %146

146:                                              ; preds = %241, %145
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %23, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %244

150:                                              ; preds = %146
  store i32 0, i32* %20, align 4
  br label %151

151:                                              ; preds = %229, %150
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %22, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %232

155:                                              ; preds = %151
  store i32 0, i32* %21, align 4
  br label %156

156:                                              ; preds = %221, %155
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %224

160:                                              ; preds = %156
  %161 = load i8*, i8** %26, align 8
  %162 = call i8* @__GLU_SWAP_4_BYTES(i8* %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = bitcast %union.anon* %27 to i32*
  store i32 %163, i32* %164, align 4
  %165 = bitcast %union.anon* %27 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %25, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %166, i32* %168, align 4
  %169 = load i8*, i8** %26, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = call i8* @__GLU_SWAP_4_BYTES(i8* %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = bitcast %union.anon* %27 to i32*
  store i32 %174, i32* %175, align 4
  %176 = bitcast %union.anon* %27 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %25, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i8*, i8** %26, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = call i8* @__GLU_SWAP_4_BYTES(i8* %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = bitcast %union.anon* %27 to i32*
  store i32 %187, i32* %188, align 4
  %189 = bitcast %union.anon* %27 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %25, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i8*, i8** %26, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = call i8* @__GLU_SWAP_4_BYTES(i8* %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = bitcast %union.anon* %27 to i32*
  store i32 %203, i32* %204, align 4
  %205 = bitcast %union.anon* %27 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %25, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load i32*, i32** %25, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = sdiv i32 %213, 4
  store i32 %214, i32* %212, align 4
  %215 = load i32*, i32** %25, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %25, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i8*, i8** %26, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %26, align 8
  br label %221

221:                                              ; preds = %160
  %222 = load i32, i32* %21, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %21, align 4
  br label %156

224:                                              ; preds = %156
  %225 = load i32, i32* %17, align 4
  %226 = load i8*, i8** %26, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8* %228, i8** %26, align 8
  br label %229

229:                                              ; preds = %224
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %20, align 4
  br label %151

232:                                              ; preds = %151
  %233 = load i32, i32* %24, align 4
  %234 = load i8*, i8** %26, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %26, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load i8*, i8** %26, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %26, align 8
  br label %241

241:                                              ; preds = %232
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %19, align 4
  br label %146

244:                                              ; preds = %146
  br label %245

245:                                              ; preds = %39, %244, %144
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @halve1Dimage_float(i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @__GLU_SWAP_4_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
