; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_code2asc.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_code2asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_LSHIFT = common dso_local global i32 0, align 4
@KC_RSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @code2asc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @code2asc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @get_mods()
  %6 = load i32, i32* @KC_LSHIFT, align 4
  %7 = call i32 @MOD_BIT(i32 %6)
  %8 = load i32, i32* @KC_RSHIFT, align 4
  %9 = call i32 @MOD_BIT(i32 %8)
  %10 = or i32 %7, %9
  %11 = and i32 %5, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %262 [
    i32 171, label %16
    i32 170, label %21
    i32 167, label %26
    i32 165, label %31
    i32 162, label %36
    i32 158, label %41
    i32 157, label %46
    i32 155, label %51
    i32 154, label %56
    i32 153, label %61
    i32 152, label %66
    i32 151, label %71
    i32 149, label %76
    i32 147, label %81
    i32 145, label %86
    i32 144, label %91
    i32 143, label %96
    i32 141, label %101
    i32 139, label %106
    i32 135, label %111
    i32 133, label %116
    i32 132, label %121
    i32 131, label %126
    i32 130, label %131
    i32 129, label %136
    i32 128, label %141
    i32 180, label %146
    i32 179, label %151
    i32 178, label %156
    i32 177, label %161
    i32 176, label %166
    i32 175, label %171
    i32 174, label %176
    i32 173, label %181
    i32 172, label %186
    i32 181, label %191
    i32 161, label %196
    i32 159, label %197
    i32 168, label %198
    i32 134, label %199
    i32 136, label %200
    i32 148, label %201
    i32 160, label %206
    i32 150, label %211
    i32 140, label %216
    i32 169, label %221
    i32 146, label %226
    i32 138, label %231
    i32 142, label %236
    i32 156, label %241
    i32 166, label %246
    i32 163, label %251
    i32 137, label %256
    i32 164, label %261
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 65, i32 97
  store i32 %20, i32* %2, align 4
  br label %263

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 66, i32 98
  store i32 %25, i32* %2, align 4
  br label %263

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 67, i32 99
  store i32 %30, i32* %2, align 4
  br label %263

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 68, i32 100
  store i32 %35, i32* %2, align 4
  br label %263

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 69, i32 101
  store i32 %40, i32* %2, align 4
  br label %263

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 70, i32 102
  store i32 %45, i32* %2, align 4
  br label %263

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 71, i32 103
  store i32 %50, i32* %2, align 4
  br label %263

51:                                               ; preds = %1
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 72, i32 104
  store i32 %55, i32* %2, align 4
  br label %263

56:                                               ; preds = %1
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 73, i32 105
  store i32 %60, i32* %2, align 4
  br label %263

61:                                               ; preds = %1
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 74, i32 106
  store i32 %65, i32* %2, align 4
  br label %263

66:                                               ; preds = %1
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 75, i32 107
  store i32 %70, i32* %2, align 4
  br label %263

71:                                               ; preds = %1
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 76, i32 108
  store i32 %75, i32* %2, align 4
  br label %263

76:                                               ; preds = %1
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 77, i32 109
  store i32 %80, i32* %2, align 4
  br label %263

81:                                               ; preds = %1
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 78, i32 110
  store i32 %85, i32* %2, align 4
  br label %263

86:                                               ; preds = %1
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 79, i32 111
  store i32 %90, i32* %2, align 4
  br label %263

91:                                               ; preds = %1
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 80, i32 112
  store i32 %95, i32* %2, align 4
  br label %263

96:                                               ; preds = %1
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 81, i32 113
  store i32 %100, i32* %2, align 4
  br label %263

101:                                              ; preds = %1
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 82, i32 114
  store i32 %105, i32* %2, align 4
  br label %263

106:                                              ; preds = %1
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 83, i32 115
  store i32 %110, i32* %2, align 4
  br label %263

111:                                              ; preds = %1
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 84, i32 116
  store i32 %115, i32* %2, align 4
  br label %263

116:                                              ; preds = %1
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 85, i32 117
  store i32 %120, i32* %2, align 4
  br label %263

121:                                              ; preds = %1
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 86, i32 118
  store i32 %125, i32* %2, align 4
  br label %263

126:                                              ; preds = %1
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 87, i32 119
  store i32 %130, i32* %2, align 4
  br label %263

131:                                              ; preds = %1
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 88, i32 120
  store i32 %135, i32* %2, align 4
  br label %263

136:                                              ; preds = %1
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 89, i32 121
  store i32 %140, i32* %2, align 4
  br label %263

141:                                              ; preds = %1
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 90, i32 122
  store i32 %145, i32* %2, align 4
  br label %263

146:                                              ; preds = %1
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 33, i32 49
  store i32 %150, i32* %2, align 4
  br label %263

151:                                              ; preds = %1
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 64, i32 50
  store i32 %155, i32* %2, align 4
  br label %263

156:                                              ; preds = %1
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 35, i32 51
  store i32 %160, i32* %2, align 4
  br label %263

161:                                              ; preds = %1
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 36, i32 52
  store i32 %165, i32* %2, align 4
  br label %263

166:                                              ; preds = %1
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 37, i32 53
  store i32 %170, i32* %2, align 4
  br label %263

171:                                              ; preds = %1
  %172 = load i32, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 94, i32 54
  store i32 %175, i32* %2, align 4
  br label %263

176:                                              ; preds = %1
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 38, i32 55
  store i32 %180, i32* %2, align 4
  br label %263

181:                                              ; preds = %1
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 42, i32 56
  store i32 %185, i32* %2, align 4
  br label %263

186:                                              ; preds = %1
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 40, i32 57
  store i32 %190, i32* %2, align 4
  br label %263

191:                                              ; preds = %1
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 41, i32 48
  store i32 %195, i32* %2, align 4
  br label %263

196:                                              ; preds = %1
  store i32 10, i32* %2, align 4
  br label %263

197:                                              ; preds = %1
  store i32 27, i32* %2, align 4
  br label %263

198:                                              ; preds = %1
  store i32 8, i32* %2, align 4
  br label %263

199:                                              ; preds = %1
  store i32 9, i32* %2, align 4
  br label %263

200:                                              ; preds = %1
  store i32 32, i32* %2, align 4
  br label %263

201:                                              ; preds = %1
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 95, i32 45
  store i32 %205, i32* %2, align 4
  br label %263

206:                                              ; preds = %1
  %207 = load i32, i32* %4, align 4
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 43, i32 61
  store i32 %210, i32* %2, align 4
  br label %263

211:                                              ; preds = %1
  %212 = load i32, i32* %4, align 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 123, i32 91
  store i32 %215, i32* %2, align 4
  br label %263

216:                                              ; preds = %1
  %217 = load i32, i32* %4, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 125, i32 93
  store i32 %220, i32* %2, align 4
  br label %263

221:                                              ; preds = %1
  %222 = load i32, i32* %4, align 4
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 124, i32 92
  store i32 %225, i32* %2, align 4
  br label %263

226:                                              ; preds = %1
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 124, i32 92
  store i32 %230, i32* %2, align 4
  br label %263

231:                                              ; preds = %1
  %232 = load i32, i32* %4, align 4
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 58, i32 59
  store i32 %235, i32* %2, align 4
  br label %263

236:                                              ; preds = %1
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 34, i32 39
  store i32 %240, i32* %2, align 4
  br label %263

241:                                              ; preds = %1
  %242 = load i32, i32* %4, align 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 126, i32 96
  store i32 %245, i32* %2, align 4
  br label %263

246:                                              ; preds = %1
  %247 = load i32, i32* %4, align 4
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 60, i32 44
  store i32 %250, i32* %2, align 4
  br label %263

251:                                              ; preds = %1
  %252 = load i32, i32* %4, align 4
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i32 62, i32 46
  store i32 %255, i32* %2, align 4
  br label %263

256:                                              ; preds = %1
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 63, i32 47
  store i32 %260, i32* %2, align 4
  br label %263

261:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %263

262:                                              ; preds = %1
  store i32 32, i32* %2, align 4
  br label %263

263:                                              ; preds = %262, %261, %256, %251, %246, %241, %236, %231, %226, %221, %216, %211, %206, %201, %200, %199, %198, %197, %196, %191, %186, %181, %176, %171, %166, %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
