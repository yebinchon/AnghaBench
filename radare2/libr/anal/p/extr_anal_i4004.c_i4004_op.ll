; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_i4004.c_i4004_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_i4004.c_i4004_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i32 }

@R_ANAL_OP_TYPE_ILL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"scr r%d\00", align 1
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fim r%d, 0x%02x\00", align 1
@R_ANAL_OP_TYPE_RJMP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"fin r%d\00", align 1
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XCHG = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@i4004_e = common dso_local global i32* null, align 8
@i4004_f = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"dac\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ral\00", align 1
@R_ANAL_OP_TYPE_SHL = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"rar\00", align 1
@R_ANAL_OP_TYPE_SHR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32*, i32, i32)* @i4004_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i4004_op(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 127, i64* %15, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @i4004_get_ins_len(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 2, i32* %7, align 4
  br label %246

25:                                               ; preds = %6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = call i32 @r_strbuf_init(i32* %27)
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 240
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %17, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %18, align 4
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  store i32 0, i32* %7, align 4
  br label %246

43:                                               ; preds = %25
  %44 = load i32, i32* %17, align 4
  switch i32 %44, label %216 [
    i32 0, label %45
    i32 1, label %57
    i32 2, label %74
    i32 3, label %99
    i32 4, label %116
    i32 5, label %128
    i32 6, label %145
    i32 7, label %149
    i32 8, label %166
    i32 9, label %170
    i32 10, label %174
    i32 11, label %178
    i32 12, label %182
    i32 13, label %186
    i32 14, label %190
    i32 15, label %199
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  br label %56

52:                                               ; preds = %45
  %53 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %216

57:                                               ; preds = %43
  %58 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, -256
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %216

74:                                               ; preds = %43
  %75 = load i32, i32* %16, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %79 = load i32, i32* %18, align 4
  %80 = and i32 %79, 14
  %81 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %78, i64 127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %98

82:                                               ; preds = %74
  %83 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %92 = load i32, i32* %18, align 4
  %93 = and i32 %92, 14
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %91, i64 127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %82, %77
  br label %216

99:                                               ; preds = %43
  %100 = load i32, i32* %18, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** @R_ANAL_OP_TYPE_RJMP, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  br label %115

107:                                              ; preds = %99
  %108 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %112 = load i32, i32* %18, align 4
  %113 = and i32 %112, 14
  %114 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %111, i64 127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %107, %103
  br label %216

116:                                              ; preds = %43
  %117 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* %18, align 4
  %121 = shl i32 %120, 8
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %216

128:                                              ; preds = %43
  %129 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %18, align 4
  %133 = shl i32 %132, 8
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %133, %136
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %216

145:                                              ; preds = %43
  %146 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  br label %216

149:                                              ; preds = %43
  %150 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %10, align 4
  %154 = and i32 %153, -256
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %154, %157
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %161, %162
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %216

166:                                              ; preds = %43
  %167 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  br label %216

170:                                              ; preds = %43
  %171 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  br label %216

174:                                              ; preds = %43
  %175 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  br label %216

178:                                              ; preds = %43
  %179 = load i8*, i8** @R_ANAL_OP_TYPE_XCHG, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  br label %216

182:                                              ; preds = %43
  %183 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  br label %216

186:                                              ; preds = %43
  %187 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  br label %216

190:                                              ; preds = %43
  %191 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %192 = load i32*, i32** @i4004_e, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @strncpy(i8* %191, i32 %196, i64 127)
  %198 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 127
  store i8 0, i8* %198, align 1
  br label %216

199:                                              ; preds = %43
  %200 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %201 = load i32*, i32** @i4004_f, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @strncpy(i8* %200, i32 %205, i64 127)
  %207 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 127
  store i8 0, i8* %207, align 1
  %208 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %199
  %212 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 4
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %211, %199
  br label %216

216:                                              ; preds = %43, %215, %190, %186, %182, %178, %174, %170, %166, %149, %145, %128, %116, %115, %98, %57, %56
  %217 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %218 = call i32 @strcmp(i8* %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  br label %242

224:                                              ; preds = %216
  %225 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %226 = call i32 @strcmp(i8* %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = load i8*, i8** @R_ANAL_OP_TYPE_SHL, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 4
  store i8* %229, i8** %231, align 8
  br label %241

232:                                              ; preds = %224
  %233 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i8*, i8** @R_ANAL_OP_TYPE_SHR, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %236, %232
  br label %241

241:                                              ; preds = %240, %228
  br label %242

242:                                              ; preds = %241, %220
  %243 = load i32, i32* %16, align 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  store i32 %243, i32* %7, align 4
  br label %246

246:                                              ; preds = %242, %40, %24
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local i32 @i4004_get_ins_len(i32) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
