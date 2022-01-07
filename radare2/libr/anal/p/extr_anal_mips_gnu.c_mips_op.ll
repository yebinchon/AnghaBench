; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mips_gnu.c_mips_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mips_gnu.c_mips_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_9__**, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UCALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_DIV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"0x%08x,pc,=\00", align 1
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"pc,lr,=,0x%08x,pc,=\00", align 1
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_REG_TYPE_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32*, i32, i32)* @mips_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_op(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 16
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 4
  store i32 %29, i32* %16, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %7, align 4
  br label %371

34:                                               ; preds = %6
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = call i32 @memset(%struct.TYPE_10__* %35, i32 0, i32 56)
  %37 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 9
  %50 = call i32 @r_strbuf_init(i32* %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @r_read_ble32(i32* %51, i32 %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %34
  %59 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %371

63:                                               ; preds = %34
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 2
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %146

70:                                               ; preds = %63
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 63
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  switch i32 %75, label %144 [
    i32 0, label %76
    i32 2, label %77
    i32 3, label %78
    i32 4, label %79
    i32 6, label %80
    i32 7, label %81
    i32 8, label %82
    i32 9, label %105
    i32 12, label %111
    i32 13, label %115
    i32 16, label %119
    i32 18, label %119
    i32 17, label %119
    i32 19, label %119
    i32 24, label %119
    i32 25, label %119
    i32 26, label %119
    i32 27, label %119
    i32 32, label %123
    i32 33, label %123
    i32 34, label %127
    i32 35, label %127
    i32 36, label %131
    i32 37, label %135
    i32 38, label %139
    i32 39, label %143
    i32 42, label %143
    i32 43, label %143
  ]

76:                                               ; preds = %70
  br label %145

77:                                               ; preds = %70
  br label %145

78:                                               ; preds = %70
  br label %145

79:                                               ; preds = %70
  br label %145

80:                                               ; preds = %70
  br label %145

81:                                               ; preds = %70
  br label %145

82:                                               ; preds = %70
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 3
  %87 = shl i32 %86, 3
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 5
  %92 = add nsw i32 %87, %91
  %93 = icmp eq i32 %92, 31
  br i1 %93, label %94, label %98

94:                                               ; preds = %82
  %95 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  br label %102

98:                                               ; preds = %82
  %99 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %145

105:                                              ; preds = %70
  %106 = load i8*, i8** @R_ANAL_OP_TYPE_UCALL, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 6
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %145

111:                                              ; preds = %70
  %112 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  br label %145

115:                                              ; preds = %70
  %116 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  br label %145

119:                                              ; preds = %70, %70, %70, %70, %70, %70, %70, %70
  %120 = load i8*, i8** @R_ANAL_OP_TYPE_DIV, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  br label %145

123:                                              ; preds = %70, %70
  %124 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  br label %145

127:                                              ; preds = %70, %70
  %128 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  br label %145

131:                                              ; preds = %70
  %132 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 6
  store i8* %132, i8** %134, align 8
  br label %145

135:                                              ; preds = %70
  %136 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  br label %145

139:                                              ; preds = %70
  %140 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  br label %145

143:                                              ; preds = %70, %70, %70
  br label %145

144:                                              ; preds = %70
  br label %145

145:                                              ; preds = %144, %143, %139, %135, %131, %127, %123, %119, %115, %111, %105, %102, %81, %80, %79, %78, %77, %76
  br label %369

146:                                              ; preds = %63
  %147 = load i32, i32* %15, align 4
  %148 = and i32 %147, 62
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %211

150:                                              ; preds = %146
  %151 = load i32*, i32** %11, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 3
  %155 = shl i32 %154, 24
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 16
  %160 = add nsw i32 %155, %159
  %161 = load i32*, i32** %11, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 8
  %165 = add nsw i32 %160, %164
  %166 = load i32*, i32** %11, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  %170 = shl i32 %169, 2
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %10, align 4
  %172 = and i32 %171, -268435456
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %15, align 4
  switch i32 %173, label %210 [
    i32 2, label %174
    i32 3, label %190
  ]

174:                                              ; preds = %150
  %175 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %178, %179
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  store i32 1, i32* %184, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 9
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = call i32 @r_strbuf_setf(i32* %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %188)
  br label %210

190:                                              ; preds = %150
  %191 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 6
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %194, %195
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i32 1, i32* %204, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 9
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = call i32 @r_strbuf_setf(i32* %206, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %208)
  br label %210

210:                                              ; preds = %150, %190, %174
  br label %368

211:                                              ; preds = %146
  %212 = load i32, i32* %15, align 4
  %213 = and i32 %212, 28
  %214 = icmp eq i32 %213, 28
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load i32*, i32** %11, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 63
  store i32 %219, i32* %20, align 4
  %220 = load i32, i32* %20, align 4
  switch i32 %220, label %225 [
    i32 0, label %221
    i32 1, label %222
    i32 2, label %223
    i32 3, label %224
  ]

221:                                              ; preds = %215
  br label %225

222:                                              ; preds = %215
  br label %225

223:                                              ; preds = %215
  br label %225

224:                                              ; preds = %215
  br label %225

225:                                              ; preds = %215, %224, %223, %222, %221
  br label %367

226:                                              ; preds = %211
  %227 = load i32*, i32** %11, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 3
  %231 = shl i32 %230, 3
  %232 = load i32*, i32** %11, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = ashr i32 %234, 5
  %236 = add nsw i32 %231, %235
  store i32 %236, i32* %21, align 4
  %237 = load i32*, i32** %11, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 31
  store i32 %240, i32* %22, align 4
  %241 = load i32*, i32** %11, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %243, 8
  %245 = load i32*, i32** %11, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 3
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %244, %247
  store i32 %248, i32* %23, align 4
  %249 = load i32, i32* %15, align 4
  %250 = ashr i32 %249, 2
  %251 = xor i32 %250, 3
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %226
  %254 = load i32, i32* %23, align 4
  %255 = and i32 %254, 32768
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i32, i32* %23, align 4
  %259 = sub nsw i32 65536, %258
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %23, align 4
  br label %261

261:                                              ; preds = %257, %253, %226
  %262 = load i32, i32* %15, align 4
  switch i32 %262, label %366 [
    i32 1, label %263
    i32 4, label %263
    i32 5, label %263
    i32 6, label %263
    i32 7, label %263
    i32 15, label %280
    i32 9, label %299
    i32 8, label %337
    i32 10, label %337
    i32 11, label %337
    i32 12, label %337
    i32 13, label %337
    i32 14, label %337
    i32 32, label %337
    i32 33, label %337
    i32 35, label %337
    i32 36, label %337
    i32 37, label %337
    i32 40, label %337
    i32 41, label %337
    i32 43, label %337
    i32 49, label %337
    i32 57, label %337
    i32 29, label %338
  ]

263:                                              ; preds = %261, %261, %261, %261, %261
  %264 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 6
  store i8* %264, i8** %266, align 8
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %23, align 4
  %269 = shl i32 %268, 2
  %270 = add nsw i32 %267, %269
  %271 = add nsw i32 %270, 4
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 8
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 4
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  br label %366

280:                                              ; preds = %261
  %281 = call i8* (...) @r_anal_value_new()
  %282 = bitcast i8* %281 to %struct.TYPE_8__*
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 8
  store %struct.TYPE_8__* %282, %struct.TYPE_8__** %284, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %22, align 4
  %289 = call i32 @mips_reg_decode(i32 %288)
  %290 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %291 = call i8* @r_reg_get(i32 %287, i32 %289, i32 %290)
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 8
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  store i8* %291, i8** %295, align 8
  %296 = load i32, i32* %23, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 5
  store i32 %296, i32* %298, align 4
  br label %366

299:                                              ; preds = %261
  %300 = call i8* (...) @r_anal_value_new()
  %301 = bitcast i8* %300 to %struct.TYPE_8__*
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 8
  store %struct.TYPE_8__* %301, %struct.TYPE_8__** %303, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %22, align 4
  %308 = call i32 @mips_reg_decode(i32 %307)
  %309 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %310 = call i8* @r_reg_get(i32 %306, i32 %308, i32 %309)
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 8
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  store i8* %310, i8** %314, align 8
  %315 = call i8* (...) @r_anal_value_new()
  %316 = bitcast i8* %315 to %struct.TYPE_9__*
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 7
  %319 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %319, i64 0
  store %struct.TYPE_9__* %316, %struct.TYPE_9__** %320, align 8
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %21, align 4
  %325 = call i32 @mips_reg_decode(i32 %324)
  %326 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %327 = call i8* @r_reg_get(i32 %323, i32 %325, i32 %326)
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 7
  %330 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %330, i64 0
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  store i8* %327, i8** %333, align 8
  %334 = load i32, i32* %23, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 5
  store i32 %334, i32* %336, align 4
  br label %366

337:                                              ; preds = %261, %261, %261, %261, %261, %261, %261, %261, %261, %261, %261, %261, %261, %261, %261, %261
  br label %366

338:                                              ; preds = %261
  %339 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 6
  store i8* %339, i8** %341, align 8
  %342 = load i32, i32* %10, align 4
  %343 = load i32*, i32** %11, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 3
  %345 = load i32, i32* %344, align 4
  %346 = load i32*, i32** %11, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 2
  %348 = load i32, i32* %347, align 4
  %349 = shl i32 %348, 8
  %350 = or i32 %345, %349
  %351 = load i32*, i32** %11, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 1
  %353 = load i32, i32* %352, align 4
  %354 = shl i32 %353, 16
  %355 = or i32 %350, %354
  %356 = mul nsw i32 4, %355
  %357 = add nsw i32 %342, %356
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 3
  store i32 %357, i32* %359, align 4
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 8
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 4
  store i32 %361, i32* %363, align 8
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 1
  store i32 1, i32* %365, align 4
  br label %366

366:                                              ; preds = %261, %338, %337, %299, %280, %263
  br label %367

367:                                              ; preds = %366, %225
  br label %368

368:                                              ; preds = %367, %210
  br label %369

369:                                              ; preds = %368, %145
  %370 = load i32, i32* %16, align 4
  store i32 %370, i32* %7, align 4
  br label %371

371:                                              ; preds = %369, %58, %32
  %372 = load i32, i32* %7, align 4
  ret i32 %372
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i64 @r_read_ble32(i32*, i32) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i64) #1

declare dso_local i8* @r_anal_value_new(...) #1

declare dso_local i8* @r_reg_get(i32, i32, i32) #1

declare dso_local i32 @mips_reg_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
