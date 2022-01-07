; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_z80.c_z80_anal_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_z80.c_z80_anal_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i32 }

@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CRET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_STACK_INC = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_PUSH = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_POP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CCALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i64, i32*, i32, i32)* @z80_anal_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z80_anal_op(i32* %0, %struct.TYPE_4__* %1, i64 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 10
  %18 = call i32 @z80_op_size(i32* %14, i32 %15, i32* %13, i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = call i32 @memset(%struct.TYPE_4__* %19, i8 signext 0, i32 64)
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 9
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %464 [
    i32 0, label %33
    i32 3, label %37
    i32 4, label %37
    i32 12, label %37
    i32 19, label %37
    i32 20, label %37
    i32 28, label %37
    i32 35, label %37
    i32 36, label %37
    i32 44, label %37
    i32 51, label %37
    i32 52, label %37
    i32 60, label %37
    i32 9, label %41
    i32 25, label %41
    i32 41, label %41
    i32 57, label %41
    i32 128, label %41
    i32 129, label %41
    i32 130, label %41
    i32 131, label %41
    i32 132, label %41
    i32 133, label %41
    i32 134, label %41
    i32 135, label %41
    i32 198, label %41
    i32 144, label %45
    i32 145, label %45
    i32 146, label %45
    i32 147, label %45
    i32 148, label %45
    i32 149, label %45
    i32 150, label %45
    i32 151, label %45
    i32 214, label %45
    i32 34, label %49
    i32 50, label %65
    i32 42, label %81
    i32 58, label %97
    i32 192, label %113
    i32 200, label %113
    i32 208, label %113
    i32 216, label %113
    i32 224, label %113
    i32 232, label %113
    i32 240, label %113
    i32 248, label %113
    i32 201, label %117
    i32 237, label %128
    i32 221, label %171
    i32 253, label %171
    i32 5, label %208
    i32 11, label %208
    i32 13, label %208
    i32 21, label %208
    i32 27, label %208
    i32 29, label %208
    i32 37, label %208
    i32 43, label %208
    i32 45, label %208
    i32 53, label %208
    i32 59, label %208
    i32 61, label %208
    i32 197, label %212
    i32 213, label %212
    i32 229, label %212
    i32 245, label %212
    i32 193, label %216
    i32 209, label %216
    i32 225, label %216
    i32 241, label %216
    i32 64, label %220
    i32 73, label %220
    i32 82, label %220
    i32 91, label %220
    i32 100, label %220
    i32 109, label %220
    i32 127, label %220
    i32 118, label %221
    i32 16, label %225
    i32 24, label %248
    i32 32, label %264
    i32 40, label %264
    i32 48, label %264
    i32 56, label %264
    i32 194, label %293
    i32 202, label %293
    i32 210, label %293
    i32 218, label %293
    i32 226, label %293
    i32 234, label %293
    i32 242, label %293
    i32 250, label %293
    i32 195, label %320
    i32 233, label %340
    i32 199, label %344
    i32 207, label %350
    i32 215, label %356
    i32 223, label %362
    i32 231, label %368
    i32 239, label %374
    i32 247, label %380
    i32 255, label %386
    i32 196, label %392
    i32 212, label %392
    i32 228, label %392
    i32 244, label %392
    i32 204, label %392
    i32 220, label %392
    i32 236, label %392
    i32 252, label %392
    i32 205, label %419
    i32 203, label %438
  ]

33:                                               ; preds = %6
  %34 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  br label %464

37:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %38 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  br label %464

41:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %42 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  br label %464

45:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6
  %46 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  br label %464

49:                                               ; preds = %6
  %50 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 2, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %57, %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %464

65:                                               ; preds = %6
  %66 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %73, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %464

81:                                               ; preds = %6
  %82 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 2, i32* %86, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %89, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %464

97:                                               ; preds = %6
  %98 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %105, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %464

113:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %114 = load i8*, i8** @R_ANAL_OP_TYPE_CRET, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  br label %464

117:                                              ; preds = %6
  %118 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  %123 = load i8*, i8** @R_ANAL_STACK_INC, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  store i32 -2, i32* %127, align 8
  br label %464

128:                                              ; preds = %6
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %170 [
    i32 67, label %132
    i32 83, label %132
    i32 99, label %132
    i32 115, label %132
    i32 75, label %148
    i32 91, label %148
    i32 107, label %148
    i32 123, label %148
    i32 69, label %164
    i32 77, label %164
  ]

132:                                              ; preds = %128, %128, %128, %128
  %133 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i32 2, i32* %137, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 8
  %145 = or i32 %140, %144
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  br label %170

148:                                              ; preds = %128, %128, %128, %128
  %149 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32 2, i32* %153, align 4
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 8
  %161 = or i32 %156, %160
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %170

164:                                              ; preds = %128, %128
  %165 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %128, %164, %148, %132
  br label %464

171:                                              ; preds = %6, %6
  %172 = load i32*, i32** %10, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %207 [
    i32 34, label %175
    i32 42, label %191
  ]

175:                                              ; preds = %171
  %176 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 6
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  store i32 2, i32* %180, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 8
  %188 = or i32 %183, %187
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  br label %207

191:                                              ; preds = %171
  %192 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32 2, i32* %196, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %202, 8
  %204 = or i32 %199, %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %171, %191, %175
  br label %464

208:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %209 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 6
  store i8* %209, i8** %211, align 8
  br label %464

212:                                              ; preds = %6, %6, %6, %6
  %213 = load i8*, i8** @R_ANAL_OP_TYPE_PUSH, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 6
  store i8* %213, i8** %215, align 8
  br label %464

216:                                              ; preds = %6, %6, %6, %6
  %217 = load i8*, i8** @R_ANAL_OP_TYPE_POP, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 6
  store i8* %217, i8** %219, align 8
  br label %464

220:                                              ; preds = %6, %6, %6, %6, %6, %6, %6
  br label %464

221:                                              ; preds = %6
  %222 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 6
  store i8* %222, i8** %224, align 8
  br label %464

225:                                              ; preds = %6
  %226 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 6
  store i8* %226, i8** %228, align 8
  %229 = load i64, i64* %9, align 8
  %230 = load i32*, i32** %10, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %229, %233
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = trunc i64 %237 to i32
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  %241 = load i64, i64* %9, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %241, %243
  %245 = trunc i64 %244 to i32
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 8
  br label %464

248:                                              ; preds = %6
  %249 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 6
  store i8* %249, i8** %251, align 8
  %252 = load i64, i64* %9, align 8
  %253 = load i32*, i32** %10, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %252, %256
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %257, %259
  %261 = trunc i64 %260 to i32
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  br label %464

264:                                              ; preds = %6, %6, %6, %6
  %265 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 6
  store i8* %265, i8** %267, align 8
  %268 = load i64, i64* %9, align 8
  %269 = load i32, i32* %11, align 4
  %270 = icmp sgt i32 %269, 1
  br i1 %270, label %271, label %276

271:                                              ; preds = %264
  %272 = load i32*, i32** %10, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  br label %277

276:                                              ; preds = %264
  br label %277

277:                                              ; preds = %276, %271
  %278 = phi i64 [ %275, %271 ], [ 0, %276 ]
  %279 = add nsw i64 %268, %278
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %279, %281
  %283 = trunc i64 %282 to i32
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 4
  %286 = load i64, i64* %9, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %286, %288
  %290 = trunc i64 %289 to i32
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 8
  store i32 %290, i32* %292, align 8
  br label %464

293:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %294 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 6
  store i8* %294, i8** %296, align 8
  %297 = load i32, i32* %11, align 4
  %298 = icmp sgt i32 %297, 2
  br i1 %298, label %299, label %308

299:                                              ; preds = %293
  %300 = load i32*, i32** %10, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %10, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %305, 8
  %307 = or i32 %302, %306
  br label %309

308:                                              ; preds = %293
  br label %309

309:                                              ; preds = %308, %299
  %310 = phi i32 [ %307, %299 ], [ 0, %308 ]
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 5
  store i32 %310, i32* %312, align 4
  %313 = load i64, i64* %9, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %313, %315
  %317 = trunc i64 %316 to i32
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 8
  store i32 %317, i32* %319, align 8
  br label %464

320:                                              ; preds = %6
  %321 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 6
  store i8* %321, i8** %323, align 8
  %324 = load i32, i32* %11, align 4
  %325 = icmp sgt i32 %324, 2
  br i1 %325, label %326, label %335

326:                                              ; preds = %320
  %327 = load i32*, i32** %10, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %10, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 2
  %332 = load i32, i32* %331, align 4
  %333 = shl i32 %332, 8
  %334 = or i32 %329, %333
  br label %336

335:                                              ; preds = %320
  br label %336

336:                                              ; preds = %335, %326
  %337 = phi i32 [ %334, %326 ], [ 0, %335 ]
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 5
  store i32 %337, i32* %339, align 4
  br label %464

340:                                              ; preds = %6
  %341 = load i8*, i8** @R_ANAL_OP_TYPE_UJMP, align 8
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 6
  store i8* %341, i8** %343, align 8
  br label %464

344:                                              ; preds = %6
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 5
  store i32 0, i32* %346, align 4
  %347 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 6
  store i8* %347, i8** %349, align 8
  br label %464

350:                                              ; preds = %6
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 5
  store i32 8, i32* %352, align 4
  %353 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 6
  store i8* %353, i8** %355, align 8
  br label %464

356:                                              ; preds = %6
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 5
  store i32 16, i32* %358, align 4
  %359 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 6
  store i8* %359, i8** %361, align 8
  br label %464

362:                                              ; preds = %6
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 5
  store i32 24, i32* %364, align 4
  %365 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 6
  store i8* %365, i8** %367, align 8
  br label %464

368:                                              ; preds = %6
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 5
  store i32 32, i32* %370, align 4
  %371 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 6
  store i8* %371, i8** %373, align 8
  br label %464

374:                                              ; preds = %6
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 5
  store i32 40, i32* %376, align 4
  %377 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 6
  store i8* %377, i8** %379, align 8
  br label %464

380:                                              ; preds = %6
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 5
  store i32 48, i32* %382, align 4
  %383 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 6
  store i8* %383, i8** %385, align 8
  br label %464

386:                                              ; preds = %6
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 5
  store i32 56, i32* %388, align 4
  %389 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 6
  store i8* %389, i8** %391, align 8
  br label %464

392:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %393 = load i8*, i8** @R_ANAL_OP_TYPE_CCALL, align 8
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 6
  store i8* %393, i8** %395, align 8
  %396 = load i32, i32* %11, align 4
  %397 = icmp sgt i32 %396, 2
  br i1 %397, label %398, label %407

398:                                              ; preds = %392
  %399 = load i32*, i32** %10, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 1
  %401 = load i32, i32* %400, align 4
  %402 = load i32*, i32** %10, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 2
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, 8
  %406 = or i32 %401, %405
  br label %408

407:                                              ; preds = %392
  br label %408

408:                                              ; preds = %407, %398
  %409 = phi i32 [ %406, %398 ], [ 0, %407 ]
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 5
  store i32 %409, i32* %411, align 4
  %412 = load i64, i64* %9, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = add nsw i64 %412, %414
  %416 = trunc i64 %415 to i32
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 8
  store i32 %416, i32* %418, align 8
  br label %464

419:                                              ; preds = %6
  %420 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 6
  store i8* %420, i8** %422, align 8
  %423 = load i8*, i8** @R_ANAL_STACK_INC, align 8
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 7
  store i8* %423, i8** %425, align 8
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 4
  store i32 2, i32* %427, align 8
  %428 = load i32*, i32** %10, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 1
  %430 = load i32, i32* %429, align 4
  %431 = load i32*, i32** %10, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 2
  %433 = load i32, i32* %432, align 4
  %434 = shl i32 %433, 8
  %435 = or i32 %430, %434
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 5
  store i32 %435, i32* %437, align 4
  br label %464

438:                                              ; preds = %6
  %439 = load i32*, i32** %10, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 1
  %441 = load i32, i32* %440, align 4
  %442 = sdiv i32 %441, 8
  switch i32 %442, label %463 [
    i32 0, label %443
    i32 2, label %443
    i32 4, label %443
    i32 6, label %443
    i32 1, label %447
    i32 3, label %447
    i32 5, label %447
    i32 7, label %447
    i32 8, label %451
    i32 9, label %451
    i32 10, label %451
    i32 11, label %451
    i32 12, label %451
    i32 13, label %451
    i32 14, label %451
    i32 15, label %451
    i32 16, label %455
    i32 17, label %455
    i32 18, label %455
    i32 19, label %455
    i32 20, label %455
    i32 21, label %455
    i32 22, label %455
    i32 23, label %455
    i32 24, label %459
    i32 25, label %459
    i32 26, label %459
    i32 27, label %459
    i32 28, label %459
    i32 29, label %459
    i32 30, label %459
    i32 31, label %459
  ]

443:                                              ; preds = %438, %438, %438, %438
  %444 = load i8*, i8** @R_ANAL_OP_TYPE_ROL, align 8
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 6
  store i8* %444, i8** %446, align 8
  br label %463

447:                                              ; preds = %438, %438, %438, %438
  %448 = load i8*, i8** @R_ANAL_OP_TYPE_ROR, align 8
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 6
  store i8* %448, i8** %450, align 8
  br label %463

451:                                              ; preds = %438, %438, %438, %438, %438, %438, %438, %438
  %452 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 6
  store i8* %452, i8** %454, align 8
  br label %463

455:                                              ; preds = %438, %438, %438, %438, %438, %438, %438, %438
  %456 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %457 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 6
  store i8* %456, i8** %458, align 8
  br label %463

459:                                              ; preds = %438, %438, %438, %438, %438, %438, %438, %438
  %460 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 6
  store i8* %460, i8** %462, align 8
  br label %463

463:                                              ; preds = %438, %459, %455, %451, %447, %443
  br label %464

464:                                              ; preds = %6, %463, %419, %408, %386, %380, %374, %368, %362, %356, %350, %344, %340, %336, %309, %277, %248, %225, %221, %220, %216, %212, %208, %207, %170, %117, %113, %97, %81, %65, %49, %45, %41, %37, %33
  %465 = load i32, i32* %13, align 4
  ret i32 %465
}

declare dso_local i32 @z80_op_size(i32*, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
