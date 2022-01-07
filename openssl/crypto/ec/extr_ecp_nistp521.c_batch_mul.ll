; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_batch_mul.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp521.c_batch_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32**, i32, i32*, i32, [17 x [3 x i32]]*, [3 x i32]*)* @batch_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batch_mul(i32 %0, i32 %1, i32 %2, i32** %3, i32 %4, i32* %5, i32 %6, [17 x [3 x i32]]* %7, [3 x i32]* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [17 x [3 x i32]]*, align 8
  %18 = alloca [3 x i32]*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32** %3, i32*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store [17 x [3 x i32]]* %7, [17 x [3 x i32]]** %17, align 8
  store [3 x i32]* %8, [3 x i32]** %18, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %22, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %32 = call i32 @memset(i32* %31, i32 0, i32 12)
  store i32 1, i32* %20, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 520, i32 130
  store i32 %36, i32* %19, align 4
  br label %37

37:                                               ; preds = %255, %9
  %38 = load i32, i32* %19, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %258

40:                                               ; preds = %37
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @point_double(i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %43, %40
  %58 = load i32, i32* %22, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %124

60:                                               ; preds = %57
  %61 = load i32, i32* %19, align 4
  %62 = icmp sle i32 %61, 130
  br i1 %62, label %63, label %124

63:                                               ; preds = %60
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %19, align 4
  %66 = add nsw i32 %65, 390
  %67 = call i32 @get_bit(i32* %64, i32 %66)
  %68 = shl i32 %67, 3
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp slt i32 %69, 130
  br i1 %70, label %71, label %91

71:                                               ; preds = %63
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, 260
  %75 = call i32 @get_bit(i32* %72, i32 %74)
  %76 = shl i32 %75, 2
  %77 = load i32, i32* %25, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %25, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, 130
  %82 = call i32 @get_bit(i32* %79, i32 %81)
  %83 = shl i32 %82, 1
  %84 = load i32, i32* %25, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %25, align 4
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @get_bit(i32* %86, i32 %87)
  %89 = load i32, i32* %25, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %25, align 4
  br label %91

91:                                               ; preds = %71, %63
  %92 = load i32, i32* %25, align 4
  %93 = load [3 x i32]*, [3 x i32]** %18, align 8
  %94 = bitcast [3 x i32]* %93 to i32**
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %96 = call i32 @select_point(i32 %92, i32 16, i32** %94, i32* %95)
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @point_add(i32 %101, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 1, i32 %113, i32 %115, i32 %117)
  br label %123

119:                                              ; preds = %91
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %122 = call i32 @memcpy(i32* %120, i32* %121, i32 12)
  store i32 0, i32* %20, align 4
  br label %123

123:                                              ; preds = %119, %99
  br label %124

124:                                              ; preds = %123, %60, %57
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %254

127:                                              ; preds = %124
  %128 = load i32, i32* %19, align 4
  %129 = srem i32 %128, 5
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %254

131:                                              ; preds = %127
  store i32 0, i32* %21, align 4
  br label %132

132:                                              ; preds = %250, %131
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %253

136:                                              ; preds = %132
  %137 = load i32**, i32*** %13, align 8
  %138 = load i32, i32* %21, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 4
  %144 = call i32 @get_bit(i32* %141, i32 %143)
  %145 = shl i32 %144, 5
  store i32 %145, i32* %25, align 4
  %146 = load i32**, i32*** %13, align 8
  %147 = load i32, i32* %21, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, 3
  %153 = call i32 @get_bit(i32* %150, i32 %152)
  %154 = shl i32 %153, 4
  %155 = load i32, i32* %25, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %25, align 4
  %157 = load i32**, i32*** %13, align 8
  %158 = load i32, i32* %21, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 2
  %164 = call i32 @get_bit(i32* %161, i32 %163)
  %165 = shl i32 %164, 3
  %166 = load i32, i32* %25, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %25, align 4
  %168 = load i32**, i32*** %13, align 8
  %169 = load i32, i32* %21, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %19, align 4
  %174 = add nsw i32 %173, 1
  %175 = call i32 @get_bit(i32* %172, i32 %174)
  %176 = shl i32 %175, 2
  %177 = load i32, i32* %25, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %25, align 4
  %179 = load i32**, i32*** %13, align 8
  %180 = load i32, i32* %21, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %19, align 4
  %185 = call i32 @get_bit(i32* %183, i32 %184)
  %186 = shl i32 %185, 1
  %187 = load i32, i32* %25, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %25, align 4
  %189 = load i32**, i32*** %13, align 8
  %190 = load i32, i32* %21, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %19, align 4
  %195 = sub nsw i32 %194, 1
  %196 = call i32 @get_bit(i32* %193, i32 %195)
  %197 = load i32, i32* %25, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %25, align 4
  %199 = load i32, i32* %25, align 4
  %200 = call i32 @ec_GFp_nistp_recode_scalar_bits(i32* %26, i32* %27, i32 %199)
  %201 = load i32, i32* %27, align 4
  %202 = load [17 x [3 x i32]]*, [17 x [3 x i32]]** %17, align 8
  %203 = load i32, i32* %21, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [17 x [3 x i32]], [17 x [3 x i32]]* %202, i64 %204
  %206 = getelementptr inbounds [17 x [3 x i32]], [17 x [3 x i32]]* %205, i64 0, i64 0
  %207 = bitcast [3 x i32]* %206 to i32**
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %209 = call i32 @select_point(i32 %201, i32 17, i32** %207, i32* %208)
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @felem_neg(i32 %211, i32 %213)
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %26, align 4
  %220 = sub nsw i32 0, %219
  %221 = call i32 @copy_conditional(i32 %216, i32 %218, i32 %220)
  %222 = load i32, i32* %20, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %245, label %224

224:                                              ; preds = %136
  %225 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %16, align 4
  %238 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %239 = load i32, i32* %238, align 16
  %240 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @point_add(i32 %226, i32 %228, i32 %230, i32 %232, i32 %234, i32 %236, i32 %237, i32 %239, i32 %241, i32 %243)
  br label %249

245:                                              ; preds = %136
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %248 = call i32 @memcpy(i32* %246, i32* %247, i32 12)
  store i32 0, i32* %20, align 4
  br label %249

249:                                              ; preds = %245, %224
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %21, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %21, align 4
  br label %132

253:                                              ; preds = %132
  br label %254

254:                                              ; preds = %253, %127, %124
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %19, align 4
  br label %37

258:                                              ; preds = %37
  %259 = load i32, i32* %10, align 4
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @felem_assign(i32 %259, i32 %261)
  %263 = load i32, i32* %11, align 4
  %264 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @felem_assign(i32 %263, i32 %265)
  %267 = load i32, i32* %12, align 4
  %268 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @felem_assign(i32 %267, i32 %269)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_bit(i32*, i32) #1

declare dso_local i32 @select_point(i32, i32, i32**, i32*) #1

declare dso_local i32 @point_add(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ec_GFp_nistp_recode_scalar_bits(i32*, i32*, i32) #1

declare dso_local i32 @felem_neg(i32, i32) #1

declare dso_local i32 @copy_conditional(i32, i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
