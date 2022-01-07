; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_arcompact_genops.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_arcompact_genops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i8*, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ARC_REG_LIMM = common dso_local global i32 0, align 4
@ARC_REG_PCL = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MUL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CALL = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_ILL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_IO = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SAL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SAR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SHR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ABS = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOT = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XCHG = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NULL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*)* @arcompact_genops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcompact_genops(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 44, i1 false)
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 12582912
  %13 = ashr i32 %12, 22
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 4128768
  %19 = ashr i32 %18, 16
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 4032
  %25 = ashr i32 %24, 6
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 63
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 117440512
  %36 = ashr i32 %35, 24
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 28672
  %41 = ashr i32 %40, 9
  %42 = or i32 %36, %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ARC_REG_LIMM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 8, i32* %51, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i32 %54, i32* %55, align 4
  br label %116

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ARC_REG_LIMM, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 8, i32* %71, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i32 %74, i32* %75, align 4
  br label %115

76:                                               ; preds = %64, %60
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ARC_REG_LIMM, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 8, i32* %87, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i32 %90, i32* %91, align 4
  br label %114

92:                                               ; preds = %80, %76
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 32
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ARC_REG_LIMM, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 8, i32* %108, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %101, %96, %92
  br label %114

114:                                              ; preds = %113, %85
  br label %115

115:                                              ; preds = %114, %69
  br label %116

116:                                              ; preds = %115, %49
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i32 %122, i32* %123, align 4
  br label %139

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 6
  %134 = or i32 %130, %133
  %135 = call i8* @SEX_S12(i32 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %128, %124
  br label %139

139:                                              ; preds = %138, %120
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %437 [
    i32 0, label %142
    i32 1, label %166
    i32 20, label %166
    i32 21, label %166
    i32 22, label %166
    i32 2, label %170
    i32 3, label %170
    i32 14, label %170
    i32 23, label %170
    i32 24, label %170
    i32 25, label %170
    i32 4, label %174
    i32 6, label %174
    i32 16, label %174
    i32 19, label %174
    i32 5, label %178
    i32 15, label %178
    i32 7, label %182
    i32 18, label %182
    i32 8, label %186
    i32 9, label %186
    i32 10, label %190
    i32 11, label %248
    i32 12, label %248
    i32 13, label %248
    i32 17, label %248
    i32 26, label %252
    i32 27, label %252
    i32 28, label %252
    i32 29, label %252
    i32 33, label %256
    i32 32, label %258
    i32 35, label %269
    i32 34, label %271
    i32 30, label %282
    i32 31, label %282
    i32 36, label %282
    i32 37, label %282
    i32 38, label %282
    i32 39, label %282
    i32 44, label %282
    i32 45, label %282
    i32 46, label %282
    i32 56, label %282
    i32 57, label %282
    i32 58, label %282
    i32 59, label %282
    i32 60, label %282
    i32 61, label %282
    i32 62, label %282
    i32 63, label %282
    i32 40, label %286
    i32 41, label %353
    i32 42, label %357
    i32 43, label %357
    i32 47, label %361
    i32 48, label %433
    i32 49, label %433
    i32 50, label %433
    i32 51, label %433
    i32 52, label %433
    i32 53, label %433
    i32 54, label %433
    i32 55, label %433
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %165

150:                                              ; preds = %146, %142
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ARC_REG_PCL, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, -4
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %157, %159
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  br label %165

165:                                              ; preds = %155, %150, %146
  br label %166

166:                                              ; preds = %139, %139, %139, %139, %165
  %167 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  br label %437

170:                                              ; preds = %139, %139, %139, %139, %139, %139
  %171 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  br label %437

174:                                              ; preds = %139, %139, %139, %139
  %175 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  br label %437

178:                                              ; preds = %139, %139
  %179 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  br label %437

182:                                              ; preds = %139, %139
  %183 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  br label %437

186:                                              ; preds = %139, %139
  %187 = load i8*, i8** @R_ANAL_OP_TYPE_CMOV, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  br label %437

190:                                              ; preds = %139
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 6
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %200, %202
  %204 = call i8* @SEX_S12(i32 %203)
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  br label %247

208:                                              ; preds = %190
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 3
  br i1 %211, label %212, label %246

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 31
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 8
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @map_cond2radare(i32 %218)
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @R_ANAL_OP_TYPE_CMOV, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, 32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %212
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  br label %245

234:                                              ; preds = %212
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @ARC_REG_LIMM, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %239, %234
  br label %245

245:                                              ; preds = %244, %229
  br label %246

246:                                              ; preds = %245, %208
  br label %247

247:                                              ; preds = %246, %194
  br label %437

248:                                              ; preds = %139, %139, %139, %139
  %249 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  br label %437

252:                                              ; preds = %139, %139, %139, %139
  %253 = load i8*, i8** @R_ANAL_OP_TYPE_MUL, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  store i8* %253, i8** %255, align 8
  br label %437

256:                                              ; preds = %139
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  store i32 1, i32* %257, align 4
  br label %258

258:                                              ; preds = %139, %256
  %259 = load i32*, i32** %6, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, 32
  %263 = ashr i32 %262, 5
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 9
  store i32 %263, i32* %264, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* @R_ANAL_OP_TYPE_JMP, align 4
  %268 = call i32 @arcompact_genops_jmp(%struct.TYPE_8__* %265, i32 %266, %struct.TYPE_7__* %7, i32 %267)
  br label %437

269:                                              ; preds = %139
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  store i32 1, i32* %270, align 4
  br label %271

271:                                              ; preds = %139, %269
  %272 = load i32*, i32** %6, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, 32
  %276 = ashr i32 %275, 5
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 9
  store i32 %276, i32* %277, align 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* @R_ANAL_OP_TYPE_CALL, align 4
  %281 = call i32 @arcompact_genops_jmp(%struct.TYPE_8__* %278, i32 %279, %struct.TYPE_7__* %7, i32 %280)
  br label %437

282:                                              ; preds = %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139
  %283 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 3
  store i8* %283, i8** %285, align 8
  br label %437

286:                                              ; preds = %139
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  switch i32 %288, label %348 [
    i32 2, label %289
    i32 3, label %316
  ]

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = shl i32 %293, 6
  %295 = or i32 %291, %294
  %296 = shl i32 %295, 1
  %297 = call i32 @SEX_S13(i32 %296)
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i32 %297, i32* %298, align 4
  %299 = load i32, i32* %5, align 4
  %300 = and i32 %299, -4
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %300, %302
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 5
  store i32 %303, i32* %305, align 4
  %306 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 3
  store i8* %306, i8** %308, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %309, %312
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 4
  store i32 %313, i32* %315, align 8
  br label %352

316:                                              ; preds = %286
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = shl i32 %318, 1
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i32 %319, i32* %320, align 4
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 31
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 8
  store i32 %323, i32* %324, align 4
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = and i32 %326, 31
  %328 = call i8* @map_cond2radare(i32 %327)
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 6
  store i8* %328, i8** %330, align 8
  %331 = load i32, i32* %5, align 4
  %332 = and i32 %331, -4
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %332, %334
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 5
  store i32 %335, i32* %337, align 4
  %338 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 3
  store i8* %338, i8** %340, align 8
  %341 = load i32, i32* %5, align 4
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %341, %344
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 8
  br label %352

348:                                              ; preds = %286
  %349 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 3
  store i8* %349, i8** %351, align 8
  br label %352

352:                                              ; preds = %348, %316, %289
  br label %437

353:                                              ; preds = %139
  %354 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 3
  store i8* %354, i8** %356, align 8
  br label %437

357:                                              ; preds = %139, %139
  %358 = load i8*, i8** @R_ANAL_OP_TYPE_IO, align 8
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 3
  store i8* %358, i8** %360, align 8
  br label %437

361:                                              ; preds = %139
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  switch i32 %363, label %428 [
    i32 0, label %364
    i32 1, label %368
    i32 2, label %372
    i32 3, label %376
    i32 4, label %376
    i32 5, label %380
    i32 6, label %380
    i32 7, label %380
    i32 8, label %380
    i32 9, label %384
    i32 10, label %388
    i32 11, label %392
    i32 12, label %396
    i32 63, label %400
  ]

364:                                              ; preds = %361
  %365 = load i8*, i8** @R_ANAL_OP_TYPE_SAL, align 8
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 3
  store i8* %365, i8** %367, align 8
  br label %432

368:                                              ; preds = %361
  %369 = load i8*, i8** @R_ANAL_OP_TYPE_SAR, align 8
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 3
  store i8* %369, i8** %371, align 8
  br label %432

372:                                              ; preds = %361
  %373 = load i8*, i8** @R_ANAL_OP_TYPE_SHR, align 8
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 3
  store i8* %373, i8** %375, align 8
  br label %432

376:                                              ; preds = %361, %361
  %377 = load i8*, i8** @R_ANAL_OP_TYPE_ROR, align 8
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 3
  store i8* %377, i8** %379, align 8
  br label %432

380:                                              ; preds = %361, %361, %361, %361
  %381 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 3
  store i8* %381, i8** %383, align 8
  br label %432

384:                                              ; preds = %361
  %385 = load i8*, i8** @R_ANAL_OP_TYPE_ABS, align 8
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 3
  store i8* %385, i8** %387, align 8
  br label %432

388:                                              ; preds = %361
  %389 = load i8*, i8** @R_ANAL_OP_TYPE_NOT, align 8
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 3
  store i8* %389, i8** %391, align 8
  br label %432

392:                                              ; preds = %361
  %393 = load i8*, i8** @R_ANAL_OP_TYPE_ROL, align 8
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 3
  store i8* %393, i8** %395, align 8
  br label %432

396:                                              ; preds = %361
  %397 = load i8*, i8** @R_ANAL_OP_TYPE_XCHG, align 8
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 3
  store i8* %397, i8** %399, align 8
  br label %432

400:                                              ; preds = %361
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %402 = load i32, i32* %401, align 4
  switch i32 %402, label %423 [
    i32 1, label %403
    i32 2, label %407
    i32 3, label %411
    i32 4, label %415
    i32 5, label %419
  ]

403:                                              ; preds = %400
  %404 = load i8*, i8** @R_ANAL_OP_TYPE_NULL, align 8
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 3
  store i8* %404, i8** %406, align 8
  br label %427

407:                                              ; preds = %400
  %408 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 3
  store i8* %408, i8** %410, align 8
  br label %427

411:                                              ; preds = %400
  %412 = load i8*, i8** @R_ANAL_OP_TYPE_NULL, align 8
  %413 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 3
  store i8* %412, i8** %414, align 8
  br label %427

415:                                              ; preds = %400
  %416 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 3
  store i8* %416, i8** %418, align 8
  br label %427

419:                                              ; preds = %400
  %420 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 3
  store i8* %420, i8** %422, align 8
  br label %427

423:                                              ; preds = %400
  %424 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 3
  store i8* %424, i8** %426, align 8
  br label %427

427:                                              ; preds = %423, %419, %415, %411, %407, %403
  br label %432

428:                                              ; preds = %361
  %429 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 3
  store i8* %429, i8** %431, align 8
  br label %432

432:                                              ; preds = %428, %427, %396, %392, %388, %384, %380, %376, %372, %368, %364
  br label %437

433:                                              ; preds = %139, %139, %139, %139, %139, %139, %139, %139
  %434 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 3
  store i8* %434, i8** %436, align 8
  br label %437

437:                                              ; preds = %139, %433, %432, %357, %353, %352, %282, %271, %258, %252, %248, %247, %186, %182, %178, %174, %170, %166
  %438 = load i32, i32* %5, align 4
  %439 = load i32*, i32** %6, align 8
  %440 = call i32 @arccompact_dump_fields(i32 %438, i32* %439, %struct.TYPE_7__* %7)
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  ret i32 %443
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @SEX_S12(i32) #2

declare dso_local i8* @map_cond2radare(i32) #2

declare dso_local i32 @arcompact_genops_jmp(%struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @SEX_S13(i32) #2

declare dso_local i32 @arccompact_dump_fields(i32, i32*, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
