; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_exp.c_BN_mod_exp_simple.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_exp.c_BN_mod_exp_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_exp_simple(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %26 = load i32, i32* @TABLE_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %23, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %24, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @BN_num_bits(i32* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @BN_one(i32* %35)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %228

37:                                               ; preds = %5
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @BN_CTX_start(i32* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = call i32* @BN_CTX_get(i32* %40)
  store i32* %41, i32** %22, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %211

44:                                               ; preds = %37
  %45 = getelementptr inbounds i32, i32* %29, i64 0
  %46 = call i32 @BN_init(i32* %45)
  store i32 1, i32* %20, align 4
  %47 = getelementptr inbounds i32, i32* %29, i64 0
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @BN_mod(i32* %47, i32* %48, i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %211

54:                                               ; preds = %44
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @BN_window_bits_for_exponent_size(i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %100

59:                                               ; preds = %54
  %60 = load i32*, i32** %22, align 8
  %61 = getelementptr inbounds i32, i32* %29, i64 0
  %62 = getelementptr inbounds i32, i32* %29, i64 0
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @BN_mod_mul(i32* %60, i32* %61, i32* %62, i32* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %211

68:                                               ; preds = %59
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 %69, 1
  %71 = shl i32 1, %70
  store i32 %71, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %95, %68
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %29, i64 %78
  %80 = call i32 @BN_init(i32* %79)
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %29, i64 %82
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %29, i64 %86
  %88 = load i32*, i32** %22, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @BN_mod_mul(i32* %83, i32* %87, i32* %88, i32* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %76
  br label %211

94:                                               ; preds = %76
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %72

98:                                               ; preds = %72
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %20, align 4
  br label %100

100:                                              ; preds = %98, %54
  store i32 1, i32* %21, align 4
  store i32 0, i32* %19, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @BN_one(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %211

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %209, %130, %107
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i64 @BN_is_bit_set(i32* %109, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %113
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @BN_mod_mul(i32* %117, i32* %118, i32* %119, i32* %120, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %211

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %113
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %210

130:                                              ; preds = %126
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %16, align 4
  br label %108

133:                                              ; preds = %108
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %13, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %12, align 4
  br label %135

135:                                              ; preds = %162, %133
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %135
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %12, align 4
  %142 = sub nsw i32 %140, %141
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %165

145:                                              ; preds = %139
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i64 @BN_is_bit_set(i32* %146, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %145
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %17, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32, i32* %19, align 4
  %157 = shl i32 %156, %155
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = or i32 %158, 1
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %152, %145
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %135

165:                                              ; preds = %144, %135
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %21, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %189, label %170

170:                                              ; preds = %165
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %185, %170
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i32*, i32** %7, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = call i32 @BN_mod_mul(i32* %176, i32* %177, i32* %178, i32* %179, i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %175
  br label %211

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %171

188:                                              ; preds = %171
  br label %189

189:                                              ; preds = %188, %165
  %190 = load i32*, i32** %7, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %19, align 4
  %193 = ashr i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %29, i64 %194
  %196 = load i32*, i32** %10, align 8
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @BN_mod_mul(i32* %190, i32* %191, i32* %195, i32* %196, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %189
  br label %211

201:                                              ; preds = %189
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %16, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %210

209:                                              ; preds = %201
  br label %108

210:                                              ; preds = %208, %129
  store i32 1, i32* %15, align 4
  br label %211

211:                                              ; preds = %210, %200, %183, %124, %106, %93, %67, %53, %43
  %212 = load i32*, i32** %11, align 8
  %213 = call i32 @BN_CTX_end(i32* %212)
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %223, %211
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %20, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %29, i64 %220
  %222 = call i32 @BN_clear_free(i32* %221)
  br label %223

223:                                              ; preds = %218
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  br label %214

226:                                              ; preds = %214
  %227 = load i32, i32* %15, align 4
  store i32 %227, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %228

228:                                              ; preds = %226, %34
  %229 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BN_num_bits(i32*) #2

declare dso_local i32 @BN_one(i32*) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i32 @BN_init(i32*) #2

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_window_bits_for_exponent_size(i32) #2

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @BN_is_bit_set(i32*, i32) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
