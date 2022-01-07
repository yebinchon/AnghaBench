; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_spDivide.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_spDivide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIBITMASK = common dso_local global i32 0, align 4
@MAX_DIGIT = common dso_local global i32 0, align 4
@B_J = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @spDivide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spDivide(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @HIBITMASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @MAX_DIGIT, align 4
  store i32 %28, i32* %5, align 4
  br label %267

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @LOHALF(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @HIHALF(i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LOHALF(i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @HIHALF(i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @LOHALF(i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @HIHALF(i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %29
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @TOHIGH(i32 %61)
  %63 = load i32, i32* %17, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %55
  br label %74

74:                                               ; preds = %73, %29
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 0, i32* %75, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %74
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @spMultSub(i32* %83, i32 %84, i32 %85, i32 %86)
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @HIHALF(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %92, %82
  br label %101

101:                                              ; preds = %100, %74
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %20, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @TOHIGH(i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @B_J, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %101
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %13, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %120, %101
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @TOHIGH(i32 %132)
  %134 = load i32, i32* %16, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @B_J, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %126
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %12, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %139, %126
  br label %149

149:                                              ; preds = %148, %120
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @HIHALF(i32 %151)
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @LOHALF(i32 %155)
  %157 = call i32 @TOHIGH(i32 %156)
  %158 = load i32, i32* %16, align 4
  %159 = or i32 %157, %158
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @spMultSub(i32* %161, i32 %162, i32 %163, i32 %164)
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @HIHALF(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %149
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %9, align 4
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %173
  store i32 %176, i32* %174, align 4
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %170, %149
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @TOHIGH(i32 %179)
  %181 = load i32*, i32** %6, align 8
  store i32 %180, i32* %181, align 4
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %14, align 4
  %186 = sdiv i32 %184, %185
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sub nsw i32 %187, %190
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @TOHIGH(i32 %192)
  %194 = load i32, i32* %15, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @B_J, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %178
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %13, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* %12, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %228

205:                                              ; preds = %199, %178
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @TOHIGH(i32 %211)
  %213 = load i32, i32* %15, align 4
  %214 = or i32 %212, %213
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @B_J, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %205
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %13, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load i32, i32* %12, align 4
  %223 = icmp sgt i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %10, align 4
  br label %227

227:                                              ; preds = %224, %218, %205
  br label %228

228:                                              ; preds = %227, %199
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @HIHALF(i32 %230)
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %231, i32* %232, align 4
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @LOHALF(i32 %234)
  %236 = call i32 @TOHIGH(i32 %235)
  %237 = load i32, i32* %15, align 4
  %238 = or i32 %236, %237
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %238, i32* %239, align 4
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %13, align 4
  %244 = call i32 @spMultSub(i32* %240, i32 %241, i32 %242, i32 %243)
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @HIHALF(i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %228
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %9, align 4
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, %252
  store i32 %255, i32* %253, align 4
  %256 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %249, %228
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @LOHALF(i32 %258)
  %260 = load i32*, i32** %6, align 8
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %259
  store i32 %262, i32* %260, align 4
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %7, align 8
  store i32 %264, i32* %265, align 4
  %266 = load i32, i32* %20, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %257, %25
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @LOHALF(i32) #1

declare dso_local i32 @HIHALF(i32) #1

declare dso_local i32 @TOHIGH(i32) #1

declare dso_local i32 @spMultSub(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
