; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_cmp_v0.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_cmp_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cube_cmp_v0(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @DIM(i32* %8)
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @DIM(i32* %10)
  %12 = call i64 @Min(i32 %9, i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @LL_COORD(i32* %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @UR_COORD(i32* %22, i32 %23)
  %25 = call i64 @Min(i32 %21, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @LL_COORD(i32* %26, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @UR_COORD(i32* %29, i32 %30)
  %32 = call i64 @Min(i32 %28, i32 %31)
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %238

35:                                               ; preds = %18
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @LL_COORD(i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @UR_COORD(i32* %39, i32 %40)
  %42 = call i64 @Min(i32 %38, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @LL_COORD(i32* %43, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @UR_COORD(i32* %46, i32 %47)
  %49 = call i64 @Min(i32 %45, i32 %48)
  %50 = icmp slt i64 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %238

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %96, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @LL_COORD(i32* %62, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @UR_COORD(i32* %65, i32 %66)
  %68 = call i64 @Max(i32 %64, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @LL_COORD(i32* %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @UR_COORD(i32* %72, i32 %73)
  %75 = call i64 @Max(i32 %71, i32 %74)
  %76 = icmp sgt i64 %68, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %238

78:                                               ; preds = %61
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @LL_COORD(i32* %79, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @UR_COORD(i32* %82, i32 %83)
  %85 = call i64 @Max(i32 %81, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @LL_COORD(i32* %86, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @UR_COORD(i32* %89, i32 %90)
  %92 = call i64 @Max(i32 %88, i32 %91)
  %93 = icmp slt i64 %85, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  store i32 -1, i32* %3, align 4
  br label %238

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %57

99:                                               ; preds = %57
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @DIM(i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @DIM(i32* %102)
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %168

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %133, %105
  %108 = load i32, i32* %6, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @DIM(i32* %109)
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @LL_COORD(i32* %113, i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @UR_COORD(i32* %116, i32 %117)
  %119 = call i64 @Min(i32 %115, i32 %118)
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %238

122:                                              ; preds = %112
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @LL_COORD(i32* %123, i32 %124)
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @UR_COORD(i32* %126, i32 %127)
  %129 = call i64 @Min(i32 %125, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %238

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %107

136:                                              ; preds = %107
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %164, %136
  %139 = load i32, i32* %6, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @DIM(i32* %140)
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %167

143:                                              ; preds = %138
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @LL_COORD(i32* %144, i32 %145)
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @UR_COORD(i32* %147, i32 %148)
  %150 = call i64 @Max(i32 %146, i32 %149)
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 1, i32* %3, align 4
  br label %238

153:                                              ; preds = %143
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @LL_COORD(i32* %154, i32 %155)
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @UR_COORD(i32* %157, i32 %158)
  %160 = call i64 @Max(i32 %156, i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  store i32 -1, i32* %3, align 4
  br label %238

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %138

167:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %238

168:                                              ; preds = %99
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @DIM(i32* %169)
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @DIM(i32* %171)
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %237

174:                                              ; preds = %168
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %202, %174
  %177 = load i32, i32* %6, align 4
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @DIM(i32* %178)
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %176
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @LL_COORD(i32* %182, i32 %183)
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @UR_COORD(i32* %185, i32 %186)
  %188 = call i64 @Min(i32 %184, i32 %187)
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  store i32 -1, i32* %3, align 4
  br label %238

191:                                              ; preds = %181
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @LL_COORD(i32* %192, i32 %193)
  %195 = load i32*, i32** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @UR_COORD(i32* %195, i32 %196)
  %198 = call i64 @Min(i32 %194, i32 %197)
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  store i32 1, i32* %3, align 4
  br label %238

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %176

205:                                              ; preds = %176
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %233, %205
  %208 = load i32, i32* %6, align 4
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @DIM(i32* %209)
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %212, label %236

212:                                              ; preds = %207
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @LL_COORD(i32* %213, i32 %214)
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @UR_COORD(i32* %216, i32 %217)
  %219 = call i64 @Max(i32 %215, i32 %218)
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %212
  store i32 -1, i32* %3, align 4
  br label %238

222:                                              ; preds = %212
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @LL_COORD(i32* %223, i32 %224)
  %226 = load i32*, i32** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @UR_COORD(i32* %226, i32 %227)
  %229 = call i64 @Max(i32 %225, i32 %228)
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  store i32 1, i32* %3, align 4
  br label %238

232:                                              ; preds = %222
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %207

236:                                              ; preds = %207
  store i32 -1, i32* %3, align 4
  br label %238

237:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %237, %236, %231, %221, %200, %190, %167, %162, %152, %131, %121, %94, %77, %51, %34
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i64 @Min(i32, i32) #1

declare dso_local i32 @DIM(i32*) #1

declare dso_local i32 @LL_COORD(i32*, i32) #1

declare dso_local i32 @UR_COORD(i32*, i32) #1

declare dso_local i64 @Max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
