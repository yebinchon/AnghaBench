; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_pic18_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_pic18_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32 }

@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"0x%x,pc,=\00", align 1
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"z,!\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"c,!\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ov\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ov,!\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"n,!\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [53 x i8] c"0x%x,wreg,+=,$z,z,:=,7,$s,n,:=,7,$c,c,:=,7,$o,ov,:=,\00", align 1
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"0x%x,wreg,=,\00", align 1
@R_ANAL_OP_TYPE_MUL = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"0x%x,wreg,*,prod,=\00", align 1
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"0x%x,wreg,=,tos,pc,=,\00", align 1
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"0x%x,wreg,&=,$z,z,:=,7,$s,n,:=,\00", align 1
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [32 x i8] c"0x%x,wreg,^=,$z,z,:=,7,$s,n,:=,\00", align 1
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [59 x i8] c"wreg,0x%x,-,wreg,=,$z,z,:=,7,$s,n,:=,7,$c,c,:=,7,$o,ov,:=,\00", align 1
@R_ANAL_OP_TYPE_ROL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CPL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"0x%x,bsr,=,\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"tos,pc,=,\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"tos,pc,=\00", align 1
@R_ANAL_OP_TYPE_POP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_PUSH = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ILL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32*, i32)* @anal_pic_pic18_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anal_pic_pic18_op(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %589

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @R_MIN(i32 4, i32 %26)
  %28 = call i32 @memcpy(i32* %13, i32* %25, i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = ashr i32 %29, 9
  switch i32 %30, label %49 [
    i32 118, label %31
  ]

31:                                               ; preds = %20
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %589

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = ashr i32 %36, 28
  %38 = icmp ne i32 %37, 15
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %589

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  br label %596

49:                                               ; preds = %20
  %50 = load i32, i32* %12, align 4
  %51 = ashr i32 %50, 11
  switch i32 %51, label %83 [
    i32 27, label %52
    i32 26, label %59
  ]

52:                                               ; preds = %49
  %53 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %6, align 4
  br label %596

59:                                               ; preds = %49
  %60 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 2, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 2
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 2047
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 %66, %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %6, align 4
  br label %596

83:                                               ; preds = %49
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 12
  switch i32 %85, label %130 [
    i32 15, label %86
    i32 12, label %98
    i32 11, label %116
    i32 10, label %116
    i32 9, label %123
    i32 8, label %123
    i32 7, label %123
  ]

86:                                               ; preds = %83
  %87 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %6, align 4
  br label %596

98:                                               ; preds = %83
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %589

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  %104 = ashr i32 %103, 28
  %105 = icmp ne i32 %104, 15
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %589

107:                                              ; preds = %102
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 4, i32* %109, align 8
  %110 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %6, align 4
  br label %596

116:                                              ; preds = %83, %83
  %117 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %6, align 4
  br label %596

123:                                              ; preds = %83, %83, %83
  %124 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %6, align 4
  br label %596

130:                                              ; preds = %83
  %131 = load i32, i32* %12, align 4
  %132 = ashr i32 %131, 8
  switch i32 %132, label %349 [
    i32 224, label %133
    i32 225, label %141
    i32 227, label %149
    i32 228, label %157
    i32 229, label %165
    i32 230, label %173
    i32 231, label %181
    i32 226, label %189
    i32 239, label %197
    i32 15, label %232
    i32 14, label %247
    i32 13, label %259
    i32 12, label %274
    i32 11, label %289
    i32 10, label %304
    i32 9, label %319
    i32 8, label %334
  ]

133:                                              ; preds = %130
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %134, i32 %135, i32* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %6, align 4
  br label %596

141:                                              ; preds = %130
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %142, i32 %143, i32* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %6, align 4
  br label %596

149:                                              ; preds = %130
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %150, i32 %151, i32* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %6, align 4
  br label %596

157:                                              ; preds = %130
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %158, i32 %159, i32* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %6, align 4
  br label %596

165:                                              ; preds = %130
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %166, i32 %167, i32* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %6, align 4
  br label %596

173:                                              ; preds = %130
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %174, i32 %175, i32* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %6, align 4
  br label %596

181:                                              ; preds = %130
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %182, i32 %183, i32* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %6, align 4
  br label %596

189:                                              ; preds = %130
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i32*, i32** %10, align 8
  %193 = call i32 @pic18_cond_branch(%struct.TYPE_4__* %190, i32 %191, i32* %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %6, align 4
  br label %596

197:                                              ; preds = %130
  %198 = load i32, i32* %11, align 4
  %199 = icmp slt i32 %198, 4
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  br label %589

201:                                              ; preds = %197
  %202 = load i32, i32* %13, align 4
  %203 = ashr i32 %202, 28
  %204 = icmp ne i32 %203, 15
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %589

206:                                              ; preds = %201
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  store i32 4, i32* %208, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  store i32 2, i32* %210, align 4
  %211 = load i32, i32* %13, align 4
  %212 = and i32 %211, 255
  %213 = load i32, i32* %13, align 4
  %214 = and i32 %213, 268369920
  %215 = ashr i32 %214, 8
  %216 = or i32 %212, %215
  %217 = mul nsw i32 %216, 2
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %224)
  %226 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 3
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %6, align 4
  br label %596

232:                                              ; preds = %130
  %233 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  store i32 1, i32* %237, align 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 4
  %240 = load i32*, i32** %10, align 8
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 255
  %243 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %239, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %242)
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  store i32 %246, i32* %6, align 4
  br label %596

247:                                              ; preds = %130
  %248 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  store i32 1, i32* %252, align 4
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 4
  %255 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %254, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %6, align 4
  br label %596

259:                                              ; preds = %130
  %260 = load i8*, i8** @R_ANAL_OP_TYPE_MUL, align 8
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  store i8* %260, i8** %262, align 8
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  store i32 1, i32* %264, align 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 4
  %267 = load i32*, i32** %10, align 8
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 255
  %270 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %266, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %269)
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %6, align 4
  br label %596

274:                                              ; preds = %130
  %275 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 3
  store i8* %275, i8** %277, align 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  store i32 2, i32* %279, align 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 4
  %282 = load i32*, i32** %10, align 8
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 255
  %285 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %281, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %284)
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %6, align 4
  br label %596

289:                                              ; preds = %130
  %290 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 3
  store i8* %290, i8** %292, align 8
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  store i32 1, i32* %294, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 4
  %297 = load i32*, i32** %10, align 8
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 255
  %300 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %296, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %299)
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  store i32 %303, i32* %6, align 4
  br label %596

304:                                              ; preds = %130
  %305 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  store i8* %305, i8** %307, align 8
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  store i32 1, i32* %309, align 4
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 4
  %312 = load i32*, i32** %10, align 8
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, 255
  %315 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %311, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %314)
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  store i32 %318, i32* %6, align 4
  br label %596

319:                                              ; preds = %130
  %320 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 3
  store i8* %320, i8** %322, align 8
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 1
  store i32 1, i32* %324, align 4
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 4
  %327 = load i32*, i32** %10, align 8
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, 255
  %330 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %326, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %329)
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %6, align 4
  br label %596

334:                                              ; preds = %130
  %335 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 3
  store i8* %335, i8** %337, align 8
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  store i32 1, i32* %339, align 4
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 4
  %342 = load i32*, i32** %10, align 8
  %343 = load i32, i32* %342, align 4
  %344 = and i32 %343, 255
  %345 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %341, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0), i32 %344)
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  store i32 %348, i32* %6, align 4
  br label %596

349:                                              ; preds = %130
  %350 = load i32, i32* %12, align 4
  %351 = ashr i32 %350, 6
  switch i32 %351, label %370 [
    i32 952, label %352
  ]

352:                                              ; preds = %349
  %353 = load i32, i32* %11, align 4
  %354 = icmp slt i32 %353, 4
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  br label %589

356:                                              ; preds = %352
  %357 = load i32, i32* %13, align 4
  %358 = ashr i32 %357, 28
  %359 = icmp ne i32 %358, 15
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  br label %589

361:                                              ; preds = %356
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  store i32 4, i32* %363, align 8
  %364 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 3
  store i8* %364, i8** %366, align 8
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  store i32 %369, i32* %6, align 4
  br label %596

370:                                              ; preds = %349
  %371 = load i32, i32* %12, align 4
  %372 = ashr i32 %371, 10
  switch i32 %372, label %452 [
    i32 23, label %373
    i32 22, label %373
    i32 21, label %373
    i32 19, label %373
    i32 11, label %373
    i32 1, label %373
    i32 20, label %380
    i32 18, label %387
    i32 15, label %387
    i32 10, label %387
    i32 8, label %387
    i32 9, label %394
    i32 17, label %403
    i32 13, label %403
    i32 16, label %410
    i32 12, label %410
    i32 14, label %417
    i32 7, label %424
    i32 6, label %431
    i32 5, label %438
    i32 4, label %445
  ]

373:                                              ; preds = %370, %370, %370, %370, %370, %370
  %374 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 3
  store i8* %374, i8** %376, align 8
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  store i32 %379, i32* %6, align 4
  br label %596

380:                                              ; preds = %370
  %381 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 3
  store i8* %381, i8** %383, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  store i32 %386, i32* %6, align 4
  br label %596

387:                                              ; preds = %370, %370, %370, %370
  %388 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 3
  store i8* %388, i8** %390, align 8
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  store i32 %393, i32* %6, align 4
  br label %596

394:                                              ; preds = %370
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 1
  store i32 1, i32* %396, align 4
  %397 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 3
  store i8* %397, i8** %399, align 8
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  store i32 %402, i32* %6, align 4
  br label %596

403:                                              ; preds = %370, %370
  %404 = load i8*, i8** @R_ANAL_OP_TYPE_ROL, align 8
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 3
  store i8* %404, i8** %406, align 8
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  store i32 %409, i32* %6, align 4
  br label %596

410:                                              ; preds = %370, %370
  %411 = load i8*, i8** @R_ANAL_OP_TYPE_ROR, align 8
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 3
  store i8* %411, i8** %413, align 8
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  store i32 %416, i32* %6, align 4
  br label %596

417:                                              ; preds = %370
  %418 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 3
  store i8* %418, i8** %420, align 8
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  store i32 %423, i32* %6, align 4
  br label %596

424:                                              ; preds = %370
  %425 = load i8*, i8** @R_ANAL_OP_TYPE_CPL, align 8
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 3
  store i8* %425, i8** %427, align 8
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  store i32 %430, i32* %6, align 4
  br label %596

431:                                              ; preds = %370
  %432 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 3
  store i8* %432, i8** %434, align 8
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  store i32 %437, i32* %6, align 4
  br label %596

438:                                              ; preds = %370
  %439 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 3
  store i8* %439, i8** %441, align 8
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  store i32 %444, i32* %6, align 4
  br label %596

445:                                              ; preds = %370
  %446 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 3
  store i8* %446, i8** %448, align 8
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  store i32 %451, i32* %6, align 4
  br label %596

452:                                              ; preds = %370
  %453 = load i32, i32* %12, align 4
  %454 = ashr i32 %453, 9
  switch i32 %454, label %490 [
    i32 55, label %455
    i32 54, label %462
    i32 53, label %462
    i32 52, label %462
    i32 51, label %469
    i32 50, label %476
    i32 49, label %476
    i32 48, label %476
    i32 1, label %483
  ]

455:                                              ; preds = %452
  %456 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %457 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 3
  store i8* %456, i8** %458, align 8
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  store i32 %461, i32* %6, align 4
  br label %596

462:                                              ; preds = %452, %452, %452
  %463 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 3
  store i8* %463, i8** %465, align 8
  %466 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  store i32 %468, i32* %6, align 4
  br label %596

469:                                              ; preds = %452
  %470 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %471 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 3
  store i8* %470, i8** %472, align 8
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  store i32 %475, i32* %6, align 4
  br label %596

476:                                              ; preds = %452, %452, %452
  %477 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 3
  store i8* %477, i8** %479, align 8
  %480 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  store i32 %482, i32* %6, align 4
  br label %596

483:                                              ; preds = %452
  %484 = load i8*, i8** @R_ANAL_OP_TYPE_MUL, align 8
  %485 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 3
  store i8* %484, i8** %486, align 8
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  store i32 %489, i32* %6, align 4
  br label %596

490:                                              ; preds = %452
  %491 = load i32, i32* %12, align 4
  %492 = ashr i32 %491, 4
  switch i32 %492, label %508 [
    i32 16, label %493
  ]

493:                                              ; preds = %490
  %494 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %495 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 3
  store i8* %494, i8** %496, align 8
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 1
  store i32 1, i32* %498, align 4
  %499 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 4
  %501 = load i32*, i32** %10, align 8
  %502 = load i32, i32* %501, align 4
  %503 = and i32 %502, 15
  %504 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %500, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %503)
  %505 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  store i32 %507, i32* %6, align 4
  br label %596

508:                                              ; preds = %490
  %509 = load i32, i32* %12, align 4
  switch i32 %509, label %588 [
    i32 255, label %510
    i32 7, label %510
    i32 4, label %510
    i32 3, label %510
    i32 19, label %517
    i32 18, label %529
    i32 17, label %541
    i32 16, label %541
    i32 15, label %548
    i32 14, label %548
    i32 13, label %548
    i32 12, label %548
    i32 11, label %555
    i32 10, label %555
    i32 9, label %555
    i32 8, label %555
    i32 6, label %562
    i32 5, label %569
    i32 0, label %576
  ]

510:                                              ; preds = %508, %508, %508, %508
  %511 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %512 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %513 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %512, i32 0, i32 3
  store i8* %511, i8** %513, align 8
  %514 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  store i32 %516, i32* %6, align 4
  br label %596

517:                                              ; preds = %508
  %518 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %519 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 3
  store i8* %518, i8** %520, align 8
  %521 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %522 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %521, i32 0, i32 1
  store i32 2, i32* %522, align 4
  %523 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 4
  %525 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %524, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %526 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  store i32 %528, i32* %6, align 4
  br label %596

529:                                              ; preds = %508
  %530 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %531 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 3
  store i8* %530, i8** %532, align 8
  %533 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i32 0, i32 1
  store i32 2, i32* %534, align 4
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 4
  %537 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %538 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %539 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  store i32 %540, i32* %6, align 4
  br label %596

541:                                              ; preds = %508, %508
  %542 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %543 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 3
  store i8* %542, i8** %544, align 8
  %545 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  store i32 %547, i32* %6, align 4
  br label %596

548:                                              ; preds = %508, %508, %508, %508
  %549 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %550 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %550, i32 0, i32 3
  store i8* %549, i8** %551, align 8
  %552 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  store i32 %554, i32* %6, align 4
  br label %596

555:                                              ; preds = %508, %508, %508, %508
  %556 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %557 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 3
  store i8* %556, i8** %558, align 8
  %559 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %560 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  store i32 %561, i32* %6, align 4
  br label %596

562:                                              ; preds = %508
  %563 = load i8*, i8** @R_ANAL_OP_TYPE_POP, align 8
  %564 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %565 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i32 0, i32 3
  store i8* %563, i8** %565, align 8
  %566 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  store i32 %568, i32* %6, align 4
  br label %596

569:                                              ; preds = %508
  %570 = load i8*, i8** @R_ANAL_OP_TYPE_PUSH, align 8
  %571 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %572 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %571, i32 0, i32 3
  store i8* %570, i8** %572, align 8
  %573 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %574 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  store i32 %575, i32* %6, align 4
  br label %596

576:                                              ; preds = %508
  %577 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %578 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %578, i32 0, i32 3
  store i8* %577, i8** %579, align 8
  %580 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %581 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %580, i32 0, i32 1
  store i32 1, i32* %581, align 4
  %582 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %583 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %582, i32 0, i32 4
  %584 = call i32 (i32*, i8*, ...) @r_strbuf_setf(i32* %583, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %585 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  store i32 %587, i32* %6, align 4
  br label %596

588:                                              ; preds = %508
  br label %589

589:                                              ; preds = %588, %360, %355, %205, %200, %106, %101, %39, %34, %16
  %590 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %591 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %592 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %591, i32 0, i32 3
  store i8* %590, i8** %592, align 8
  %593 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %594 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  store i32 %595, i32* %6, align 4
  br label %596

596:                                              ; preds = %589, %576, %569, %562, %555, %548, %541, %529, %517, %510, %493, %483, %476, %469, %462, %455, %445, %438, %431, %424, %417, %410, %403, %394, %387, %380, %373, %361, %334, %319, %304, %289, %274, %259, %247, %232, %206, %189, %181, %173, %165, %157, %149, %141, %133, %123, %116, %107, %86, %59, %52, %40
  %597 = load i32, i32* %6, align 4
  ret i32 %597
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, ...) #1

declare dso_local i32 @pic18_cond_branch(%struct.TYPE_4__*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
