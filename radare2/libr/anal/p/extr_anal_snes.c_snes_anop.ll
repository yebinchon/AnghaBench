; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_snes.c_snes_anop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_snes.c_snes_anop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i8*, i32, i32 }

@snesflags = common dso_local global %struct.TYPE_6__* null, align 8
@snes_op = common dso_local global i32* null, align 8
@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XCHG = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_PUSH = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_POP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ACMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SAL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SHR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_COND_NE = common dso_local global i32 0, align 4
@R_ANAL_COND_EQ = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UCALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i64*, i32, i32)* @snes_anop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snes_anop(i32* %0, %struct.TYPE_5__* %1, i32 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = call i32 @memset(%struct.TYPE_5__* %14, i8 signext 0, i32 40)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snesflags, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snesflags, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @snes_op, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = call i32 @snes_op_get_size(i32 %18, i32 %21, i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  store i32 0, i32* %7, align 4
  br label %348

38:                                               ; preds = %6
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  switch i64 %49, label %344 [
    i64 234, label %50
    i64 251, label %54
    i64 0, label %58
    i64 2, label %58
    i64 27, label %62
    i64 59, label %62
    i64 91, label %62
    i64 123, label %62
    i64 138, label %62
    i64 152, label %62
    i64 154, label %62
    i64 155, label %62
    i64 168, label %62
    i64 170, label %62
    i64 186, label %62
    i64 187, label %62
    i64 72, label %66
    i64 139, label %66
    i64 11, label %66
    i64 75, label %66
    i64 8, label %66
    i64 218, label %66
    i64 90, label %66
    i64 104, label %70
    i64 171, label %70
    i64 43, label %70
    i64 40, label %70
    i64 250, label %70
    i64 122, label %70
    i64 97, label %74
    i64 99, label %74
    i64 101, label %74
    i64 103, label %74
    i64 105, label %74
    i64 109, label %74
    i64 111, label %74
    i64 113, label %74
    i64 114, label %74
    i64 115, label %74
    i64 117, label %74
    i64 119, label %74
    i64 121, label %74
    i64 125, label %74
    i64 127, label %74
    i64 26, label %74
    i64 230, label %74
    i64 238, label %74
    i64 246, label %74
    i64 254, label %74
    i64 232, label %74
    i64 200, label %74
    i64 35, label %78
    i64 37, label %78
    i64 39, label %78
    i64 41, label %78
    i64 45, label %78
    i64 47, label %78
    i64 49, label %78
    i64 50, label %78
    i64 51, label %78
    i64 53, label %78
    i64 55, label %78
    i64 57, label %78
    i64 61, label %78
    i64 63, label %78
    i64 36, label %82
    i64 44, label %82
    i64 52, label %82
    i64 60, label %82
    i64 137, label %82
    i64 193, label %86
    i64 195, label %86
    i64 197, label %86
    i64 199, label %86
    i64 201, label %86
    i64 205, label %86
    i64 207, label %86
    i64 209, label %86
    i64 210, label %86
    i64 211, label %86
    i64 213, label %86
    i64 215, label %86
    i64 217, label %86
    i64 221, label %86
    i64 223, label %86
    i64 224, label %86
    i64 228, label %86
    i64 236, label %86
    i64 192, label %86
    i64 196, label %86
    i64 204, label %86
    i64 1, label %90
    i64 3, label %90
    i64 5, label %90
    i64 7, label %90
    i64 9, label %90
    i64 13, label %90
    i64 15, label %90
    i64 17, label %90
    i64 18, label %90
    i64 19, label %90
    i64 21, label %90
    i64 23, label %90
    i64 25, label %90
    i64 29, label %90
    i64 31, label %90
    i64 65, label %94
    i64 67, label %94
    i64 69, label %94
    i64 71, label %94
    i64 73, label %94
    i64 77, label %94
    i64 79, label %94
    i64 81, label %94
    i64 82, label %94
    i64 83, label %94
    i64 85, label %94
    i64 87, label %94
    i64 89, label %94
    i64 93, label %94
    i64 95, label %94
    i64 6, label %98
    i64 10, label %98
    i64 14, label %98
    i64 22, label %98
    i64 30, label %98
    i64 70, label %102
    i64 74, label %102
    i64 78, label %102
    i64 86, label %102
    i64 94, label %102
    i64 38, label %106
    i64 42, label %106
    i64 46, label %106
    i64 54, label %106
    i64 62, label %106
    i64 102, label %110
    i64 106, label %110
    i64 110, label %110
    i64 118, label %110
    i64 126, label %110
    i64 225, label %114
    i64 227, label %114
    i64 229, label %114
    i64 231, label %114
    i64 233, label %114
    i64 237, label %114
    i64 239, label %114
    i64 241, label %114
    i64 242, label %114
    i64 243, label %114
    i64 245, label %114
    i64 247, label %114
    i64 249, label %114
    i64 253, label %114
    i64 255, label %114
    i64 58, label %114
    i64 198, label %114
    i64 206, label %114
    i64 214, label %114
    i64 222, label %114
    i64 202, label %114
    i64 136, label %114
    i64 129, label %118
    i64 131, label %118
    i64 133, label %118
    i64 135, label %118
    i64 141, label %118
    i64 143, label %118
    i64 145, label %118
    i64 146, label %118
    i64 147, label %118
    i64 149, label %118
    i64 151, label %118
    i64 153, label %118
    i64 157, label %118
    i64 159, label %118
    i64 134, label %118
    i64 142, label %118
    i64 150, label %118
    i64 132, label %118
    i64 140, label %118
    i64 148, label %118
    i64 100, label %118
    i64 116, label %118
    i64 156, label %118
    i64 158, label %118
    i64 161, label %122
    i64 163, label %122
    i64 165, label %122
    i64 167, label %122
    i64 169, label %122
    i64 173, label %122
    i64 175, label %122
    i64 177, label %122
    i64 178, label %122
    i64 179, label %122
    i64 181, label %122
    i64 183, label %122
    i64 185, label %122
    i64 189, label %122
    i64 191, label %122
    i64 162, label %122
    i64 166, label %122
    i64 174, label %122
    i64 182, label %122
    i64 190, label %122
    i64 160, label %122
    i64 164, label %122
    i64 172, label %122
    i64 180, label %122
    i64 188, label %122
    i64 76, label %126
    i64 92, label %140
    i64 128, label %162
    i64 130, label %177
    i64 108, label %191
    i64 124, label %191
    i64 220, label %191
    i64 16, label %197
    i64 48, label %197
    i64 80, label %197
    i64 112, label %197
    i64 144, label %197
    i64 176, label %197
    i64 208, label %216
    i64 240, label %238
    i64 32, label %260
    i64 34, label %272
    i64 252, label %292
    i64 64, label %296
    i64 96, label %296
    i64 107, label %296
    i64 194, label %302
    i64 226, label %323
  ]

50:                                               ; preds = %38
  %51 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  br label %344

54:                                               ; preds = %38
  %55 = load i8*, i8** @R_ANAL_OP_TYPE_XCHG, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  br label %344

58:                                               ; preds = %38, %38
  %59 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  br label %344

62:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %63 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  br label %344

66:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  %67 = load i8*, i8** @R_ANAL_OP_TYPE_PUSH, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  br label %344

70:                                               ; preds = %38, %38, %38, %38, %38, %38
  %71 = load i8*, i8** @R_ANAL_OP_TYPE_POP, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  br label %344

74:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %75 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  br label %344

78:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %79 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  br label %344

82:                                               ; preds = %38, %38, %38, %38, %38
  %83 = load i8*, i8** @R_ANAL_OP_TYPE_ACMP, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %344

86:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %87 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  br label %344

90:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %91 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  br label %344

94:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %95 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  br label %344

98:                                               ; preds = %38, %38, %38, %38, %38
  %99 = load i8*, i8** @R_ANAL_OP_TYPE_SAL, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  br label %344

102:                                              ; preds = %38, %38, %38, %38, %38
  %103 = load i8*, i8** @R_ANAL_OP_TYPE_SHR, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  br label %344

106:                                              ; preds = %38, %38, %38, %38, %38
  %107 = load i8*, i8** @R_ANAL_OP_TYPE_ROL, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  br label %344

110:                                              ; preds = %38, %38, %38, %38, %38
  %111 = load i8*, i8** @R_ANAL_OP_TYPE_ROR, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  br label %344

114:                                              ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %115 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  br label %344

118:                                              ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %119 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  br label %344

122:                                              ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %123 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  br label %344

126:                                              ; preds = %38
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  store i32 1, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 16711680
  %131 = load i64*, i64** %11, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 1
  %133 = call i32 @ut8p_bw(i64* %132)
  %134 = or i32 %130, %133
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  br label %344

140:                                              ; preds = %38
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  %143 = load i64*, i64** %11, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  %148 = load i64, i64* %147, align 8
  %149 = shl i64 %148, 8
  %150 = or i64 %145, %149
  %151 = load i64*, i64** %11, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 3
  %153 = load i64, i64* %152, align 8
  %154 = shl i64 %153, 16
  %155 = or i64 %150, %154
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 5
  store i8* %159, i8** %161, align 8
  br label %344

162:                                              ; preds = %38
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 2
  %167 = load i64*, i64** %11, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = add nsw i32 %166, %170
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 5
  store i8* %174, i8** %176, align 8
  br label %344

177:                                              ; preds = %38
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  store i32 1, i32* %179, align 4
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 3
  %182 = load i64*, i64** %11, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 1
  %184 = call i32 @ut8p_bw(i64* %183)
  %185 = add nsw i32 %181, %184
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  br label %344

191:                                              ; preds = %38, %38, %38
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  store i32 1, i32* %193, align 4
  %194 = load i8*, i8** @R_ANAL_OP_TYPE_UJMP, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  br label %344

197:                                              ; preds = %38, %38, %38, %38, %38, %38
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  store i32 1, i32* %199, align 4
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 2
  %202 = load i64*, i64** %11, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = add nsw i32 %201, %205
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 2
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 6
  store i32 %210, i32* %212, align 8
  %213 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 5
  store i8* %213, i8** %215, align 8
  br label %344

216:                                              ; preds = %38
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  store i32 1, i32* %218, align 4
  %219 = load i32, i32* @R_ANAL_COND_NE, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 2
  %224 = load i64*, i64** %11, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = add nsw i32 %223, %227
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 2
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 8
  %235 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 5
  store i8* %235, i8** %237, align 8
  br label %344

238:                                              ; preds = %38
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 3
  store i32 1, i32* %240, align 4
  %241 = load i32, i32* @R_ANAL_COND_EQ, align 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 2
  %246 = load i64*, i64** %11, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 1
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = add nsw i32 %245, %249
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %10, align 4
  %254 = add nsw i32 %253, 2
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 6
  store i32 %254, i32* %256, align 8
  %257 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 5
  store i8* %257, i8** %259, align 8
  br label %344

260:                                              ; preds = %38
  %261 = load i32, i32* %10, align 4
  %262 = and i32 %261, 16711680
  %263 = load i64*, i64** %11, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 1
  %265 = call i32 @ut8p_bw(i64* %264)
  %266 = or i32 %262, %265
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 8
  %269 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 5
  store i8* %269, i8** %271, align 8
  br label %344

272:                                              ; preds = %38
  %273 = load i64*, i64** %11, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64*, i64** %11, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 2
  %278 = load i64, i64* %277, align 8
  %279 = shl i64 %278, 8
  %280 = or i64 %275, %279
  %281 = load i64*, i64** %11, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 3
  %283 = load i64, i64* %282, align 8
  %284 = shl i64 %283, 16
  %285 = or i64 %280, %284
  %286 = trunc i64 %285 to i32
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 4
  store i32 %286, i32* %288, align 8
  %289 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 5
  store i8* %289, i8** %291, align 8
  br label %344

292:                                              ; preds = %38
  %293 = load i8*, i8** @R_ANAL_OP_TYPE_UCALL, align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 5
  store i8* %293, i8** %295, align 8
  br label %344

296:                                              ; preds = %38, %38, %38
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 3
  store i32 1, i32* %298, align 4
  %299 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 5
  store i8* %299, i8** %301, align 8
  br label %344

302:                                              ; preds = %38
  %303 = load i64*, i64** %11, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 1
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  %307 = and i32 %306, 16
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %302
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snesflags, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 1
  store i32 0, i32* %311, align 4
  br label %312

312:                                              ; preds = %309, %302
  %313 = load i64*, i64** %11, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 1
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  %317 = and i32 %316, 32
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %312
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snesflags, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  store i32 0, i32* %321, align 4
  br label %322

322:                                              ; preds = %319, %312
  br label %344

323:                                              ; preds = %38
  %324 = load i64*, i64** %11, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 1
  %326 = load i64, i64* %325, align 8
  %327 = trunc i64 %326 to i32
  %328 = and i32 %327, 16
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %323
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snesflags, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  store i32 1, i32* %332, align 4
  br label %333

333:                                              ; preds = %330, %323
  %334 = load i64*, i64** %11, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 1
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = and i32 %337, 32
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %333
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snesflags, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  store i32 1, i32* %342, align 4
  br label %343

343:                                              ; preds = %340, %333
  br label %344

344:                                              ; preds = %38, %343, %322, %296, %292, %272, %260, %238, %216, %197, %191, %177, %162, %140, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  store i32 %347, i32* %7, align 4
  br label %348

348:                                              ; preds = %344, %35
  %349 = load i32, i32* %7, align 4
  ret i32 %349
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i8 signext, i32) #1

declare dso_local i32 @snes_op_get_size(i32, i32, i32*) #1

declare dso_local i32 @ut8p_bw(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
