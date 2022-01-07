; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_8051.c_i8051_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_8051.c_i8051_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i64 }

@_8051_ops = common dso_local global %struct.TYPE_12__* null, align 8
@R_ANAL_OP_FAMILY_CPU = common dso_local global i32 0, align 4
@R_ANAL_COND_AL = common dso_local global i32 0, align 4
@R_ANAL_COND_NE = common dso_local global i32 0, align 4
@R_ANAL_COND_EQ = common dso_local global i32 0, align 4
@R_ANAL_COND_HS = common dso_local global i32 0, align 4
@R_ANAL_COND_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"_xdata\00", align 1
@A_RI = common dso_local global i32 0, align 4
@A_RN = common dso_local global i32 0, align 4
@R_ANAL_STACK_INC = common dso_local global i8* null, align 8
@A_ADDR11 = common dso_local global i32 0, align 4
@A_ADDR16 = common dso_local global i32 0, align 4
@A_OFFSET = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_ESIL = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_HINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32*, i32, i32)* @i8051_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8051_op(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = call i32 @set_cpu_model(%struct.TYPE_11__* %18, i32 0)
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %49, %6
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %37, %44
  %46 = icmp ne i32 %34, %45
  br label %47

47:                                               ; preds = %28, %20
  %48 = phi i1 [ false, %20 ], [ %46, %28 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %20

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 -1, i32* %54, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  store i32 -1, i32* %58, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 -1, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %14, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 17
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 16
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 15
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 14
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @R_ANAL_OP_FAMILY_CPU, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 13
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %121 [
    i32 140, label %125
    i32 139, label %125
    i32 138, label %125
    i32 137, label %125
    i32 132, label %125
    i32 134, label %129
    i32 131, label %129
    i32 136, label %133
    i32 133, label %137
  ]

121:                                              ; preds = %52
  %122 = load i32, i32* @R_ANAL_COND_AL, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 12
  store i32 %122, i32* %124, align 8
  br label %141

125:                                              ; preds = %52, %52, %52, %52, %52
  %126 = load i32, i32* @R_ANAL_COND_NE, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 12
  store i32 %126, i32* %128, align 8
  br label %141

129:                                              ; preds = %52, %52
  %130 = load i32, i32* @R_ANAL_COND_EQ, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 12
  store i32 %130, i32* %132, align 8
  br label %141

133:                                              ; preds = %52
  %134 = load i32, i32* @R_ANAL_COND_HS, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 12
  store i32 %134, i32* %136, align 8
  br label %141

137:                                              ; preds = %52
  %138 = load i32, i32* @R_ANAL_COND_LO, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 12
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %137, %133, %129, %125, %121
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %148 [
    i32 140, label %151
    i32 139, label %151
    i32 138, label %151
    i32 137, label %151
    i32 136, label %151
    i32 135, label %151
    i32 134, label %151
    i32 133, label %151
    i32 132, label %151
    i32 131, label %151
  ]

148:                                              ; preds = %141
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 7
  store i32 0, i32* %150, align 4
  br label %154

151:                                              ; preds = %141, %141, %141, %141, %141, %141, %141, %141, %141, %141
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 7
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %14, align 4
  switch i32 %155, label %156 [
    i32 144, label %157
    i32 145, label %166
    i32 142, label %176
    i32 143, label %182
  ]

156:                                              ; preds = %154
  br label %203

157:                                              ; preds = %154
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @map_direct_addr(%struct.TYPE_11__* %158, i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  br label %203

166:                                              ; preds = %154
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @arg_bit(i32 %170)
  %172 = call i8* @map_direct_addr(%struct.TYPE_11__* %167, i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  br label %203

176:                                              ; preds = %154
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  br label %203

182:                                              ; preds = %154
  %183 = load i32*, i32** %10, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %185, 256
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %186, %189
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @i8051_reg_read(i32 %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %200 = add nsw i32 %195, %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %182, %176, %166, %157, %156
  %204 = load i32, i32* %15, align 4
  switch i32 %204, label %205 [
    i32 144, label %206
    i32 145, label %237
    i32 142, label %266
  ]

205:                                              ; preds = %203
  br label %286

206:                                              ; preds = %203
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* @A_RI, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @A_RN, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %210, %206
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @map_direct_addr(%struct.TYPE_11__* %215, i32 %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  br label %236

223:                                              ; preds = %210
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 144
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @map_direct_addr(%struct.TYPE_11__* %227, i32 %230)
  %232 = ptrtoint i8* %231 to i32
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %226, %223
  br label %236

236:                                              ; preds = %235, %214
  br label %286

237:                                              ; preds = %203
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* @A_RI, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @A_RN, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %241, %237
  %246 = load i32*, i32** %10, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  br label %253

249:                                              ; preds = %241
  %250 = load i32*, i32** %10, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  %252 = load i32, i32* %251, align 4
  br label %253

253:                                              ; preds = %249, %245
  %254 = phi i32 [ %248, %245 ], [ %252, %249 ]
  %255 = call i32 @arg_bit(i32 %254)
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @map_direct_addr(%struct.TYPE_11__* %258, i32 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  br label %286

266:                                              ; preds = %203
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* @A_RI, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* @A_RN, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %270, %266
  %275 = load i32*, i32** %10, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  br label %282

278:                                              ; preds = %270
  %279 = load i32*, i32** %10, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  br label %282

282:                                              ; preds = %278, %274
  %283 = phi i32 [ %277, %274 ], [ %281, %278 ]
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %282, %253, %236, %205
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_8051_ops, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  switch i32 %292, label %293 [
    i32 129, label %294
    i32 130, label %300
    i32 128, label %306
    i32 141, label %312
    i32 135, label %363
    i32 140, label %434
    i32 139, label %434
    i32 136, label %434
    i32 133, label %434
    i32 131, label %434
    i32 132, label %434
    i32 138, label %434
    i32 137, label %434
    i32 134, label %434
  ]

293:                                              ; preds = %286
  br label %459

294:                                              ; preds = %286
  %295 = load i8*, i8** @R_ANAL_STACK_INC, align 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 11
  store i8* %295, i8** %297, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 8
  store i32 1, i32* %299, align 8
  br label %459

300:                                              ; preds = %286
  %301 = load i8*, i8** @R_ANAL_STACK_INC, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 11
  store i8* %301, i8** %303, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 8
  store i32 -1, i32* %305, align 8
  br label %459

306:                                              ; preds = %286
  %307 = load i8*, i8** @R_ANAL_STACK_INC, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 11
  store i8* %307, i8** %309, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 8
  store i32 -2, i32* %311, align 8
  br label %459

312:                                              ; preds = %286
  %313 = load i8*, i8** @R_ANAL_STACK_INC, align 8
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 11
  store i8* %313, i8** %315, align 8
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 8
  store i32 2, i32* %317, align 8
  %318 = load i32, i32* %14, align 4
  %319 = load i32, i32* @A_ADDR11, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %339

321:                                              ; preds = %312
  %322 = load i32, i32* %9, align 4
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %322, %325
  %327 = load i32*, i32** %10, align 8
  %328 = call i8* @arg_addr11(i32 %326, i32* %327)
  %329 = ptrtoint i8* %328 to i32
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* %9, align 4
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %332, %335
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  br label %362

339:                                              ; preds = %312
  %340 = load i32, i32* %14, align 4
  %341 = load i32, i32* @A_ADDR16, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %361

343:                                              ; preds = %339
  %344 = load i32*, i32** %10, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = mul nsw i32 256, %346
  %348 = load i32*, i32** %10, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %347, %350
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 8
  %354 = load i32, i32* %9, align 4
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %354, %357
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 4
  br label %361

361:                                              ; preds = %343, %339
  br label %362

362:                                              ; preds = %361, %321
  br label %459

363:                                              ; preds = %286
  %364 = load i32, i32* %14, align 4
  %365 = load i32, i32* @A_ADDR11, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %385

367:                                              ; preds = %363
  %368 = load i32, i32* %9, align 4
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 4
  %372 = add nsw i32 %368, %371
  %373 = load i32*, i32** %10, align 8
  %374 = call i8* @arg_addr11(i32 %372, i32* %373)
  %375 = ptrtoint i8* %374 to i32
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  store i32 %375, i32* %377, align 8
  %378 = load i32, i32* %9, align 4
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %378, %381
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  store i32 %382, i32* %384, align 4
  br label %433

385:                                              ; preds = %363
  %386 = load i32, i32* %14, align 4
  %387 = load i32, i32* @A_ADDR16, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %407

389:                                              ; preds = %385
  %390 = load i32*, i32** %10, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 1
  %392 = load i32, i32* %391, align 4
  %393 = mul nsw i32 256, %392
  %394 = load i32*, i32** %10, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 2
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %393, %396
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 8
  %400 = load i32, i32* %9, align 4
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 5
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %400, %403
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 4
  br label %432

407:                                              ; preds = %385
  %408 = load i32, i32* %14, align 4
  %409 = load i32, i32* @A_OFFSET, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %431

411:                                              ; preds = %407
  %412 = load i32, i32* %9, align 4
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %412, %415
  %417 = load i32*, i32** %10, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = call i8* @arg_offset(i32 %416, i32 %419)
  %421 = ptrtoint i8* %420 to i32
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 8
  %424 = load i32, i32* %9, align 4
  %425 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %424, %427
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 1
  store i32 %428, i32* %430, align 4
  br label %431

431:                                              ; preds = %411, %407
  br label %432

432:                                              ; preds = %431, %389
  br label %433

433:                                              ; preds = %432, %367
  br label %459

434:                                              ; preds = %286, %286, %286, %286, %286, %286, %286, %286, %286
  %435 = load i32, i32* %9, align 4
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 5
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %435, %438
  %440 = load i32*, i32** %10, align 8
  %441 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 5
  %443 = load i32, i32* %442, align 4
  %444 = sub nsw i32 %443, 1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %440, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = call i8* @arg_offset(i32 %439, i32 %447)
  %449 = ptrtoint i8* %448 to i32
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 0
  store i32 %449, i32* %451, align 8
  %452 = load i32, i32* %9, align 4
  %453 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 4
  %456 = add nsw i32 %452, %455
  %457 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 1
  store i32 %456, i32* %458, align 4
  br label %459

459:                                              ; preds = %434, %433, %362, %306, %300, %294, %293
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = icmp ne i32 %462, -1
  br i1 %463, label %464, label %472

464:                                              ; preds = %459
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 9
  %467 = load i32, i32* %466, align 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %464
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 9
  store i32 1, i32* %471, align 4
  br label %472

472:                                              ; preds = %469, %464, %459
  %473 = load i32, i32* %12, align 4
  %474 = load i32, i32* @R_ANAL_OP_MASK_ESIL, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %494

477:                                              ; preds = %472
  %478 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %478, i8 0, i64 12, i1 false)
  %479 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %480 = load i32*, i32** %10, align 8
  %481 = load i32, i32* %11, align 4
  %482 = icmp sge i32 %481, 3
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  br label %486

484:                                              ; preds = %477
  %485 = load i32, i32* %11, align 4
  br label %486

486:                                              ; preds = %484, %483
  %487 = phi i32 [ 3, %483 ], [ %485, %484 ]
  %488 = call i32 @memcpy(i32* %479, i32* %480, i32 %487)
  %489 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %490 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %491 = load i32, i32* %9, align 4
  %492 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %493 = call i32 @analop_esil(%struct.TYPE_11__* %489, %struct.TYPE_10__* %490, i32 %491, i32* %492)
  br label %494

494:                                              ; preds = %486, %472
  store i32 0, i32* %17, align 4
  %495 = load i32, i32* %9, align 4
  %496 = load i32*, i32** %10, align 8
  %497 = load i32, i32* %11, align 4
  %498 = call i32 @r_8051_disas(i32 %495, i32* %496, i32 %497, i32* %17)
  %499 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 10
  store i32 %498, i32* %500, align 8
  %501 = load i32, i32* %17, align 4
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 5
  store i32 %501, i32* %503, align 4
  %504 = load i32, i32* %12, align 4
  %505 = load i32, i32* @R_ANAL_OP_MASK_HINT, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %494
  br label %509

509:                                              ; preds = %508, %494
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 5
  %512 = load i32, i32* %511, align 4
  ret i32 %512
}

declare dso_local i32 @set_cpu_model(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @map_direct_addr(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @arg_bit(i32) #1

declare dso_local i32 @i8051_reg_read(i32, i8*) #1

declare dso_local i8* @arg_addr11(i32, i32*) #1

declare dso_local i8* @arg_offset(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @analop_esil(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @r_8051_disas(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
