; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_elf.inc__patch_reloc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_elf.inc__patch_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i32)* @_patch_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_patch_reloc(i32 %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %297 [
    i32 147, label %27
    i32 146, label %177
  ]

27:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %66 [
    i32 144, label %31
    i32 143, label %39
    i32 145, label %46
    i32 142, label %53
    i32 141, label %60
  ]

31:                                               ; preds = %27
  store i32 2, i32* %18, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %15, align 4
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %36, 32768
  %38 = ashr i32 %37, 16
  store i32 %38, i32* %13, align 4
  br label %67

39:                                               ; preds = %27
  store i32 2, i32* %18, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %42, %43
  %45 = and i32 %44, 65535
  store i32 %45, i32* %13, align 4
  br label %67

46:                                               ; preds = %27
  store i32 14, i32* %17, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %15, align 4
  %51 = sub nsw i32 %49, %50
  %52 = ashr i32 %51, 2
  store i32 %52, i32* %13, align 4
  br label %67

53:                                               ; preds = %27
  store i32 24, i32* %17, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 %56, %57
  %59 = ashr i32 %58, 2
  store i32 %59, i32* %13, align 4
  br label %67

60:                                               ; preds = %27
  store i32 4, i32* %18, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %13, align 4
  br label %67

66:                                               ; preds = %27
  br label %67

67:                                               ; preds = %66, %60, %53, %46, %39, %31
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %139

70:                                               ; preds = %67
  %71 = load i32, i32* %17, align 4
  switch i32 %71, label %138 [
    i32 14, label %72
    i32 24, label %105
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 16383
  store i32 %74, i32* %13, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %85 = call i32 %77(i32 %80, i32 %83, i32* %84, i32 2)
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %88 = call i32 @r_read_le32(i32* %87)
  %89 = and i32 %88, -65533
  %90 = load i32, i32* %13, align 4
  %91 = shl i32 %90, 2
  %92 = or i32 %89, %91
  %93 = call i32 @r_write_le32(i32* %86, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %104 = call i32 %96(i32 %99, i32 %102, i32* %103, i32 2)
  br label %138

105:                                              ; preds = %70
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 16777215
  store i32 %107, i32* %13, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %109, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %118 = call i32 %110(i32 %113, i32 %116, i32* %117, i32 4)
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %121 = call i32 @r_read_le32(i32* %120)
  %122 = and i32 %121, -67108861
  %123 = load i32, i32* %13, align 4
  %124 = shl i32 %123, 2
  %125 = or i32 %122, %124
  %126 = call i32 @r_write_le32(i32* %119, i32 %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %137 = call i32 %129(i32 %132, i32 %135, i32* %136, i32 4)
  br label %138

138:                                              ; preds = %70, %105, %72
  br label %176

139:                                              ; preds = %67
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %175

142:                                              ; preds = %139
  %143 = load i32, i32* %18, align 4
  switch i32 %143, label %174 [
    i32 2, label %144
    i32 4, label %159
  ]

144:                                              ; preds = %142
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @r_write_le16(i32* %145, i32 %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %158 = call i32 %150(i32 %153, i32 %156, i32* %157, i32 2)
  br label %174

159:                                              ; preds = %142
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @r_write_le32(i32* %160, i32 %161)
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %164, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %173 = call i32 %165(i32 %168, i32 %171, i32* %172, i32 4)
  br label %174

174:                                              ; preds = %142, %159, %144
  br label %175

175:                                              ; preds = %174, %139
  br label %176

176:                                              ; preds = %175, %138
  br label %297

177:                                              ; preds = %6
  store i32 0, i32* %19, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %233 [
    i32 136, label %181
    i32 140, label %185
    i32 139, label %189
    i32 138, label %189
    i32 137, label %193
    i32 135, label %197
    i32 134, label %197
    i32 130, label %199
    i32 133, label %205
    i32 132, label %211
    i32 131, label %217
    i32 129, label %223
    i32 128, label %229
  ]

181:                                              ; preds = %177
  store i32 1, i32* %19, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %13, align 4
  br label %234

185:                                              ; preds = %177
  store i32 2, i32* %19, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %13, align 4
  br label %234

189:                                              ; preds = %177, %177
  store i32 4, i32* %19, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %190, %191
  store i32 %192, i32* %13, align 4
  br label %234

193:                                              ; preds = %177
  store i32 8, i32* %19, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %194, %195
  store i32 %196, i32* %13, align 4
  br label %234

197:                                              ; preds = %177, %177
  store i32 4, i32* %19, align 4
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %13, align 4
  br label %234

199:                                              ; preds = %177
  store i32 1, i32* %19, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %15, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %13, align 4
  br label %234

205:                                              ; preds = %177
  store i32 2, i32* %19, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 %208, %209
  store i32 %210, i32* %13, align 4
  br label %234

211:                                              ; preds = %177
  store i32 4, i32* %19, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %15, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %13, align 4
  br label %234

217:                                              ; preds = %177
  store i32 8, i32* %19, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* %15, align 4
  %222 = sub nsw i32 %220, %221
  store i32 %222, i32* %13, align 4
  br label %234

223:                                              ; preds = %177
  store i32 4, i32* %19, align 4
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %15, align 4
  %228 = sub nsw i32 %226, %227
  store i32 %228, i32* %13, align 4
  br label %234

229:                                              ; preds = %177
  store i32 8, i32* %19, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %230, %231
  store i32 %232, i32* %13, align 4
  br label %234

233:                                              ; preds = %177
  br label %234

234:                                              ; preds = %233, %229, %223, %217, %211, %205, %199, %197, %193, %189, %185, %181
  %235 = load i32, i32* %19, align 4
  switch i32 %235, label %296 [
    i32 0, label %236
    i32 1, label %237
    i32 2, label %251
    i32 4, label %266
    i32 8, label %281
  ]

236:                                              ; preds = %234
  br label %296

237:                                              ; preds = %234
  %238 = load i32, i32* %13, align 4
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %238, i32* %239, align 16
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %241, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %250 = call i32 %242(i32 %245, i32 %248, i32* %249, i32 1)
  br label %296

251:                                              ; preds = %234
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %253 = load i32, i32* %13, align 4
  %254 = call i32 @r_write_le16(i32* %252, i32 %253)
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %256, align 8
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %265 = call i32 %257(i32 %260, i32 %263, i32* %264, i32 2)
  br label %296

266:                                              ; preds = %234
  %267 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @r_write_le32(i32* %267, i32 %268)
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %271, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %280 = call i32 %272(i32 %275, i32 %278, i32* %279, i32 4)
  br label %296

281:                                              ; preds = %234
  %282 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @r_write_le64(i32* %282, i32 %283)
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  %287 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %286, align 8
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %295 = call i32 %287(i32 %290, i32 %293, i32* %294, i32 8)
  br label %296

296:                                              ; preds = %234, %281, %266, %251, %237, %236
  br label %297

297:                                              ; preds = %6, %296, %176
  ret void
}

declare dso_local i32 @r_write_le32(i32*, i32) #1

declare dso_local i32 @r_read_le32(i32*) #1

declare dso_local i32 @r_write_le16(i32*, i32) #1

declare dso_local i32 @r_write_le64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
