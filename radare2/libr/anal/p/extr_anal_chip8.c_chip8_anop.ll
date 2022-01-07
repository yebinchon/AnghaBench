; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_chip8.c_chip8_anop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_chip8.c_chip8_anop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i8*, i32 }

@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SHR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SHL = common dso_local global i8* null, align 8
@R_META_TYPE_COMMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"KEYPAD\00", align 1
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32*, i32, i32)* @chip8_anop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip8_anop(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = call i32 @memset(%struct.TYPE_4__* %17, i8 signext 0, i32 40)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @r_read_be16(i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %13, align 4
  %24 = and i32 %23, 4095
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %15, align 8
  %27 = load i32, i32* %13, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %16, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, 61440
  switch i32 %38, label %294 [
    i32 0, label %39
    i32 4096, label %47
    i32 8192, label %54
    i32 12288, label %61
    i32 16384, label %82
    i32 20480, label %103
    i32 24576, label %124
    i32 28672, label %128
    i32 32768, label %132
    i32 36864, label %171
    i32 40960, label %196
    i32 45056, label %200
    i32 57344, label %207
    i32 61440, label %239
  ]

39:                                               ; preds = %6
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 238
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %39
  br label %294

47:                                               ; preds = %6
  %48 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  br label %294

54:                                               ; preds = %6
  %55 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %294

61:                                               ; preds = %6
  %62 = load i8*, i8** @R_ANAL_OP_TYPE_RJMP, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 2
  %70 = add nsw i32 %65, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %75, %78
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %294

82:                                               ; preds = %6
  %83 = load i8*, i8** @R_ANAL_OP_TYPE_RJMP, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %86, %90
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %96, %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %294

103:                                              ; preds = %6
  %104 = load i8*, i8** @R_ANAL_OP_TYPE_RJMP, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 2
  %112 = add nsw i32 %107, %111
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %117, %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %294

124:                                              ; preds = %6
  %125 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %294

128:                                              ; preds = %6
  %129 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %294

132:                                              ; preds = %6
  %133 = load i32, i32* %14, align 4
  switch i32 %133, label %170 [
    i32 0, label %134
    i32 1, label %138
    i32 2, label %142
    i32 3, label %146
    i32 4, label %150
    i32 5, label %154
    i32 6, label %158
    i32 7, label %162
    i32 14, label %166
  ]

134:                                              ; preds = %132
  %135 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %170

138:                                              ; preds = %132
  %139 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %170

142:                                              ; preds = %132
  %143 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  br label %170

146:                                              ; preds = %132
  %147 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %170

150:                                              ; preds = %132
  %151 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  br label %170

154:                                              ; preds = %132
  %155 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %170

158:                                              ; preds = %132
  %159 = load i8*, i8** @R_ANAL_OP_TYPE_SHR, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %170

162:                                              ; preds = %132
  %163 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  br label %170

166:                                              ; preds = %132
  %167 = load i8*, i8** @R_ANAL_OP_TYPE_SHL, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %132, %166, %162, %158, %154, %150, %146, %142, %138, %134
  br label %294

171:                                              ; preds = %6
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %171
  %175 = load i8*, i8** @R_ANAL_OP_TYPE_RJMP, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = mul nsw i32 %181, 2
  %183 = add nsw i32 %178, %182
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %188, %191
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %174, %171
  br label %294

196:                                              ; preds = %6
  %197 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  br label %294

200:                                              ; preds = %6
  %201 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  store i8* %201, i8** %203, align 8
  %204 = load i8*, i8** %15, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  br label %294

207:                                              ; preds = %6
  %208 = load i32, i32* %16, align 4
  %209 = icmp eq i32 %208, 158
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %16, align 4
  %212 = icmp eq i32 %211, 161
  br i1 %212, label %213, label %238

213:                                              ; preds = %210, %207
  %214 = load i32*, i32** %7, align 8
  %215 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @r_meta_set_string(i32* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %218 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %224, 2
  %226 = add nsw i32 %221, %225
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %231, %234
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %213, %210
  br label %294

239:                                              ; preds = %6
  %240 = load i32, i32* %16, align 4
  switch i32 %240, label %293 [
    i32 7, label %241
    i32 10, label %245
    i32 21, label %253
    i32 24, label %257
    i32 30, label %261
    i32 41, label %265
    i32 48, label %269
    i32 51, label %273
    i32 85, label %277
    i32 101, label %281
    i32 117, label %285
    i32 133, label %289
  ]

241:                                              ; preds = %239
  %242 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  store i8* %242, i8** %244, align 8
  br label %293

245:                                              ; preds = %239
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* @R_META_TYPE_COMMENT, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @r_meta_set_string(i32* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %250 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  br label %293

253:                                              ; preds = %239
  %254 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  store i8* %254, i8** %256, align 8
  br label %293

257:                                              ; preds = %239
  %258 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  br label %293

261:                                              ; preds = %239
  %262 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  br label %293

265:                                              ; preds = %239
  %266 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  store i8* %266, i8** %268, align 8
  br label %293

269:                                              ; preds = %239
  %270 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  store i8* %270, i8** %272, align 8
  br label %293

273:                                              ; preds = %239
  %274 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  br label %293

277:                                              ; preds = %239
  %278 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  store i8* %278, i8** %280, align 8
  br label %293

281:                                              ; preds = %239
  %282 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  br label %293

285:                                              ; preds = %239
  %286 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 1
  store i8* %286, i8** %288, align 8
  br label %293

289:                                              ; preds = %239
  %290 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  store i8* %290, i8** %292, align 8
  br label %293

293:                                              ; preds = %239, %289, %285, %281, %277, %273, %269, %265, %261, %257, %253, %245, %241
  br label %294

294:                                              ; preds = %6, %293, %238, %200, %196, %195, %170, %128, %124, %103, %82, %61, %54, %47, %46
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  ret i32 %297
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i8 signext, i32) #1

declare dso_local i32 @r_read_be16(i32*) #1

declare dso_local i32 @r_meta_set_string(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
