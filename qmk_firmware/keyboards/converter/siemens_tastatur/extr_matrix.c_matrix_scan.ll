; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/siemens_tastatur/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/siemens_tastatur/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@porta_buffer = common dso_local global i32 0, align 4
@portb_buffer = common dso_local global i32 0, align 4
@switch_buffer = common dso_local global i32 0, align 4
@matrix = common dso_local global i32* null, align 8
@B11 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = load i32, i32* @porta_buffer, align 4
  %2 = and i32 %1, 2047
  %3 = load i32, i32* @portb_buffer, align 4
  %4 = and i32 %3, 1016
  %5 = shl i32 %4, 8
  %6 = or i32 %2, %5
  store i32 %6, i32* @switch_buffer, align 4
  %7 = load i32, i32* @switch_buffer, align 4
  switch i32 %7, label %212 [
    i32 70478, label %8
    i32 227149, label %11
    i32 68556, label %14
    i32 93003, label %17
    i32 92106, label %20
    i32 221129, label %23
    i32 88904, label %26
    i32 164679, label %29
    i32 95174, label %32
    i32 82895, label %35
    i32 261573, label %38
    i32 261409, label %41
    i32 261495, label %44
    i32 261490, label %47
    i32 255994, label %50
    i32 99310, label %53
    i32 104435, label %56
    i32 109438, label %59
    i32 67523, label %62
    i32 261422, label %65
    i32 261416, label %68
    i32 261434, label %71
    i32 261421, label %74
    i32 261419, label %77
    i32 261541, label %80
    i32 261546, label %83
    i32 261430, label %86
    i32 261424, label %89
    i32 261551, label %92
    i32 261410, label %95
    i32 88020, label %98
    i32 116600, label %101
    i32 231405, label %104
    i32 105332, label %107
    i32 261501, label %110
    i32 261566, label %113
    i32 261548, label %116
    i32 261563, label %119
    i32 261433, label %122
    i32 261560, label %125
    i32 261559, label %128
    i32 261429, label %131
    i32 261556, label %134
    i32 261427, label %137
    i32 261539, label %140
    i32 261412, label %143
    i32 65499, label %146
    i32 261621, label %149
    i32 261631, label %152
    i32 246756, label %155
    i32 232300, label %158
    i32 237558, label %161
    i32 261628, label %164
    i32 261542, label %167
    i32 261415, label %170
    i32 261436, label %173
    i32 261545, label %176
    i32 261565, label %179
    i32 261553, label %182
    i32 261554, label %185
    i32 197459, label %188
    i32 228305, label %191
    i32 222162, label %194
    i32 261471, label %197
    i32 114432, label %200
    i32 102379, label %203
    i32 261993, label %206
    i32 238459, label %209
  ]

8:                                                ; preds = %0
  %9 = load i32*, i32** @matrix, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 1, i32* %10, align 4
  br label %249

11:                                               ; preds = %0
  %12 = load i32*, i32** @matrix, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 2, i32* %13, align 4
  br label %249

14:                                               ; preds = %0
  %15 = load i32*, i32** @matrix, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 4, i32* %16, align 4
  br label %249

17:                                               ; preds = %0
  %18 = load i32*, i32** @matrix, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 8, i32* %19, align 4
  br label %249

20:                                               ; preds = %0
  %21 = load i32*, i32** @matrix, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 16, i32* %22, align 4
  br label %249

23:                                               ; preds = %0
  %24 = load i32*, i32** @matrix, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 32, i32* %25, align 4
  br label %249

26:                                               ; preds = %0
  %27 = load i32*, i32** @matrix, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 64, i32* %28, align 4
  br label %249

29:                                               ; preds = %0
  %30 = load i32*, i32** @matrix, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 128, i32* %31, align 4
  br label %249

32:                                               ; preds = %0
  %33 = load i32*, i32** @matrix, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 256, i32* %34, align 4
  br label %249

35:                                               ; preds = %0
  %36 = load i32*, i32** @matrix, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 512, i32* %37, align 4
  br label %249

38:                                               ; preds = %0
  %39 = load i32*, i32** @matrix, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 1024, i32* %40, align 4
  br label %249

41:                                               ; preds = %0
  %42 = load i32*, i32** @matrix, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 2048, i32* %43, align 4
  br label %249

44:                                               ; preds = %0
  %45 = load i32*, i32** @matrix, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 4096, i32* %46, align 4
  br label %249

47:                                               ; preds = %0
  %48 = load i32*, i32** @matrix, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 8192, i32* %49, align 4
  br label %249

50:                                               ; preds = %0
  %51 = load i32*, i32** @matrix, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 32768, i32* %52, align 4
  br label %249

53:                                               ; preds = %0
  %54 = load i32*, i32** @matrix, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 65536, i32* %55, align 4
  br label %249

56:                                               ; preds = %0
  %57 = load i32*, i32** @matrix, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 131072, i32* %58, align 4
  br label %249

59:                                               ; preds = %0
  %60 = load i32*, i32** @matrix, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 262144, i32* %61, align 4
  br label %249

62:                                               ; preds = %0
  %63 = load i32*, i32** @matrix, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 1, i32* %64, align 4
  br label %249

65:                                               ; preds = %0
  %66 = load i32*, i32** @matrix, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 2, i32* %67, align 4
  br label %249

68:                                               ; preds = %0
  %69 = load i32*, i32** @matrix, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 4, i32* %70, align 4
  br label %249

71:                                               ; preds = %0
  %72 = load i32*, i32** @matrix, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 8, i32* %73, align 4
  br label %249

74:                                               ; preds = %0
  %75 = load i32*, i32** @matrix, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 16, i32* %76, align 4
  br label %249

77:                                               ; preds = %0
  %78 = load i32*, i32** @matrix, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 32, i32* %79, align 4
  br label %249

80:                                               ; preds = %0
  %81 = load i32*, i32** @matrix, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 64, i32* %82, align 4
  br label %249

83:                                               ; preds = %0
  %84 = load i32*, i32** @matrix, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 128, i32* %85, align 4
  br label %249

86:                                               ; preds = %0
  %87 = load i32*, i32** @matrix, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 256, i32* %88, align 4
  br label %249

89:                                               ; preds = %0
  %90 = load i32*, i32** @matrix, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 512, i32* %91, align 4
  br label %249

92:                                               ; preds = %0
  %93 = load i32*, i32** @matrix, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 1024, i32* %94, align 4
  br label %249

95:                                               ; preds = %0
  %96 = load i32*, i32** @matrix, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 2048, i32* %97, align 4
  br label %249

98:                                               ; preds = %0
  %99 = load i32*, i32** @matrix, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 4096, i32* %100, align 4
  br label %249

101:                                              ; preds = %0
  %102 = load i32*, i32** @matrix, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 32768, i32* %103, align 4
  br label %249

104:                                              ; preds = %0
  %105 = load i32*, i32** @matrix, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 65536, i32* %106, align 4
  br label %249

107:                                              ; preds = %0
  %108 = load i32*, i32** @matrix, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 131072, i32* %109, align 4
  br label %249

110:                                              ; preds = %0
  %111 = load i32*, i32** @matrix, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 262144, i32* %112, align 4
  br label %249

113:                                              ; preds = %0
  %114 = load i32*, i32** @matrix, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 2, i32* %115, align 4
  br label %249

116:                                              ; preds = %0
  %117 = load i32*, i32** @matrix, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 4, i32* %118, align 4
  br label %249

119:                                              ; preds = %0
  %120 = load i32*, i32** @matrix, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 8, i32* %121, align 4
  br label %249

122:                                              ; preds = %0
  %123 = load i32*, i32** @matrix, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 16, i32* %124, align 4
  br label %249

125:                                              ; preds = %0
  %126 = load i32*, i32** @matrix, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 32, i32* %127, align 4
  br label %249

128:                                              ; preds = %0
  %129 = load i32*, i32** @matrix, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32 64, i32* %130, align 4
  br label %249

131:                                              ; preds = %0
  %132 = load i32*, i32** @matrix, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  store i32 128, i32* %133, align 4
  br label %249

134:                                              ; preds = %0
  %135 = load i32*, i32** @matrix, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 256, i32* %136, align 4
  br label %249

137:                                              ; preds = %0
  %138 = load i32*, i32** @matrix, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 512, i32* %139, align 4
  br label %249

140:                                              ; preds = %0
  %141 = load i32*, i32** @matrix, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 1024, i32* %142, align 4
  br label %249

143:                                              ; preds = %0
  %144 = load i32*, i32** @matrix, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32 2048, i32* %145, align 4
  br label %249

146:                                              ; preds = %0
  %147 = load i32*, i32** @matrix, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 4096, i32* %148, align 4
  br label %249

149:                                              ; preds = %0
  %150 = load i32*, i32** @matrix, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  store i32 8192, i32* %151, align 4
  br label %249

152:                                              ; preds = %0
  %153 = load i32*, i32** @matrix, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32 16384, i32* %154, align 4
  br label %249

155:                                              ; preds = %0
  %156 = load i32*, i32** @matrix, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  store i32 32768, i32* %157, align 4
  br label %249

158:                                              ; preds = %0
  %159 = load i32*, i32** @matrix, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 65536, i32* %160, align 4
  br label %249

161:                                              ; preds = %0
  %162 = load i32*, i32** @matrix, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  store i32 131072, i32* %163, align 4
  br label %249

164:                                              ; preds = %0
  %165 = load i32*, i32** @matrix, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  store i32 262144, i32* %166, align 4
  br label %249

167:                                              ; preds = %0
  %168 = load i32*, i32** @matrix, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 2, i32* %169, align 4
  br label %249

170:                                              ; preds = %0
  %171 = load i32*, i32** @matrix, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  store i32 4, i32* %172, align 4
  br label %249

173:                                              ; preds = %0
  %174 = load i32*, i32** @matrix, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  store i32 8, i32* %175, align 4
  br label %249

176:                                              ; preds = %0
  %177 = load i32*, i32** @matrix, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  store i32 16, i32* %178, align 4
  br label %249

179:                                              ; preds = %0
  %180 = load i32*, i32** @matrix, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  store i32 32, i32* %181, align 4
  br label %249

182:                                              ; preds = %0
  %183 = load i32*, i32** @matrix, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  store i32 64, i32* %184, align 4
  br label %249

185:                                              ; preds = %0
  %186 = load i32*, i32** @matrix, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  store i32 128, i32* %187, align 4
  br label %249

188:                                              ; preds = %0
  %189 = load i32*, i32** @matrix, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  store i32 256, i32* %190, align 4
  br label %249

191:                                              ; preds = %0
  %192 = load i32*, i32** @matrix, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  store i32 512, i32* %193, align 4
  br label %249

194:                                              ; preds = %0
  %195 = load i32*, i32** @matrix, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  store i32 1024, i32* %196, align 4
  br label %249

197:                                              ; preds = %0
  %198 = load i32*, i32** @matrix, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  store i32 2048, i32* %199, align 4
  br label %249

200:                                              ; preds = %0
  %201 = load i32*, i32** @matrix, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  store i32 32768, i32* %202, align 4
  br label %249

203:                                              ; preds = %0
  %204 = load i32*, i32** @matrix, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  store i32 65536, i32* %205, align 4
  br label %249

206:                                              ; preds = %0
  %207 = load i32*, i32** @matrix, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  store i32 131072, i32* %208, align 4
  br label %249

209:                                              ; preds = %0
  %210 = load i32*, i32** @matrix, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  store i32 262144, i32* %211, align 4
  br label %249

212:                                              ; preds = %0
  %213 = load i32, i32* @portb_buffer, align 4
  %214 = and i32 %213, 4096
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i32*, i32** @matrix, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 16384, i32* %218, align 4
  br label %249

219:                                              ; preds = %212
  %220 = load i32, i32* @portb_buffer, align 4
  %221 = and i32 %220, 8192
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32*, i32** @matrix, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  store i32 16384, i32* %225, align 4
  br label %249

226:                                              ; preds = %219
  %227 = load i32, i32* @portb_buffer, align 4
  %228 = and i32 %227, 16384
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i32*, i32** @matrix, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 16384, i32* %232, align 4
  br label %249

233:                                              ; preds = %226
  %234 = load i32, i32* @portb_buffer, align 4
  %235 = and i32 %234, 32768
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i32*, i32** @matrix, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  store i32 1, i32* %239, align 4
  br label %249

240:                                              ; preds = %233
  %241 = load i32*, i32** @matrix, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 0, i32* %242, align 4
  %243 = load i32*, i32** @matrix, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  store i32 0, i32* %244, align 4
  %245 = load i32*, i32** @matrix, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 2
  store i32 0, i32* %246, align 4
  %247 = load i32*, i32** @matrix, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %240, %237, %230, %223, %216, %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8
  %250 = load i32, i32* @B11, align 4
  %251 = call i64 @readPin(i32 %250)
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %249
  %254 = load i32*, i32** @matrix, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, 1
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %253, %249
  store i32 65535, i32* @porta_buffer, align 4
  store i32 65535, i32* @portb_buffer, align 4
  %259 = call i32 (...) @matrix_scan_quantum()
  ret i32 1
}

declare dso_local i64 @readPin(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
