; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xap.c_xap_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xap.c_xap_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directive = type { i32, i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.instruction = type { i32, i32 }
%struct.state = type { i32, i32*, i64, i32*, i32 }

@R_ANAL_OP_TYPE_UNK = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_PUSH = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_POP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_MUL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_DIV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.directive*, i32, i32*, i32, i32)* @xap_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xap_op(i32* %0, %struct.directive* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.directive*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.instruction*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.directive, align 8
  %18 = alloca %struct.state, align 8
  store i32* %0, i32** %8, align 8
  store %struct.directive* %1, %struct.directive** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = bitcast i32* %19 to %struct.instruction*
  store %struct.instruction* %20, %struct.instruction** %14, align 8
  %21 = bitcast %struct.directive* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = bitcast %struct.state* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.directive*, %struct.directive** %9, align 8
  %27 = icmp ne %struct.directive* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %6
  store i32 2, i32* %7, align 4
  br label %306

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @memcpy(i32* %16, i32* %30, i32 4)
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @memcpy(i32* %15, i32* %32, i32 4)
  %34 = load i32*, i32** %11, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 1
  store i32* %36, i32** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = call i32 @memset(%struct.directive* %17, i8 signext 0, i32 40)
  %43 = getelementptr inbounds %struct.directive, %struct.directive* %17, i32 0, i32 0
  %44 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @memcpy(i32* %43, i32* %45, i32 4)
  %47 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %47, align 8
  %50 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.directive, %struct.directive* %17, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = call i32 @xap_decode(%struct.state* %18, %struct.directive* %17)
  %54 = call i32 @get_operand(%struct.state* %18, %struct.directive* %17)
  %55 = getelementptr inbounds %struct.directive, %struct.directive* %17, i32 0, i32 7
  store i32 %54, i32* %55, align 8
  %56 = load %struct.directive*, %struct.directive** %9, align 8
  %57 = call i32 @memset(%struct.directive* %56, i8 signext 0, i32 40)
  %58 = load i8*, i8** @R_ANAL_OP_TYPE_UNK, align 8
  %59 = load %struct.directive*, %struct.directive** %9, align 8
  %60 = getelementptr inbounds %struct.directive, %struct.directive* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.directive*, %struct.directive** %9, align 8
  %62 = getelementptr inbounds %struct.directive, %struct.directive* %61, i32 0, i32 2
  store i32 2, i32* %62, align 8
  %63 = load %struct.instruction*, %struct.instruction** %14, align 8
  %64 = call i32 @i2ut16(%struct.instruction* %63)
  switch i32 %64, label %81 [
    i32 128, label %65
    i32 130, label %69
    i32 131, label %73
    i32 129, label %77
  ]

65:                                               ; preds = %29
  %66 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %67 = load %struct.directive*, %struct.directive** %9, align 8
  %68 = getelementptr inbounds %struct.directive, %struct.directive* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  br label %302

69:                                               ; preds = %29
  %70 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %71 = load %struct.directive*, %struct.directive** %9, align 8
  %72 = getelementptr inbounds %struct.directive, %struct.directive* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  br label %302

73:                                               ; preds = %29
  %74 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %75 = load %struct.directive*, %struct.directive** %9, align 8
  %76 = getelementptr inbounds %struct.directive, %struct.directive* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  br label %302

77:                                               ; preds = %29
  %78 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %79 = load %struct.directive*, %struct.directive** %9, align 8
  %80 = getelementptr inbounds %struct.directive, %struct.directive* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  br label %302

81:                                               ; preds = %29
  %82 = load %struct.instruction*, %struct.instruction** %14, align 8
  %83 = getelementptr inbounds %struct.instruction, %struct.instruction* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %301 [
    i32 0, label %85
    i32 1, label %97
    i32 2, label %101
    i32 3, label %105
    i32 4, label %105
    i32 7, label %105
    i32 5, label %109
    i32 6, label %109
    i32 8, label %113
    i32 9, label %117
    i32 11, label %159
    i32 12, label %163
    i32 13, label %167
    i32 14, label %171
    i32 15, label %273
  ]

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %86, 15
  switch i32 %87, label %96 [
    i32 1, label %88
    i32 2, label %88
    i32 3, label %88
    i32 10, label %88
    i32 4, label %92
    i32 5, label %92
    i32 6, label %92
    i32 7, label %92
    i32 14, label %92
  ]

88:                                               ; preds = %85, %85, %85, %85
  %89 = load i8*, i8** @R_ANAL_OP_TYPE_PUSH, align 8
  %90 = load %struct.directive*, %struct.directive** %9, align 8
  %91 = getelementptr inbounds %struct.directive, %struct.directive* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  br label %96

92:                                               ; preds = %85, %85, %85, %85, %85
  %93 = load i8*, i8** @R_ANAL_OP_TYPE_POP, align 8
  %94 = load %struct.directive*, %struct.directive** %9, align 8
  %95 = getelementptr inbounds %struct.directive, %struct.directive* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %85, %92, %88
  br label %301

97:                                               ; preds = %81
  %98 = load i8*, i8** @R_ANAL_OP_TYPE_POP, align 8
  %99 = load %struct.directive*, %struct.directive** %9, align 8
  %100 = getelementptr inbounds %struct.directive, %struct.directive* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  br label %301

101:                                              ; preds = %81
  %102 = load i8*, i8** @R_ANAL_OP_TYPE_PUSH, align 8
  %103 = load %struct.directive*, %struct.directive** %9, align 8
  %104 = getelementptr inbounds %struct.directive, %struct.directive* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  br label %301

105:                                              ; preds = %81, %81, %81
  %106 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %107 = load %struct.directive*, %struct.directive** %9, align 8
  %108 = getelementptr inbounds %struct.directive, %struct.directive* %107, i32 0, i32 6
  store i8* %106, i8** %108, align 8
  br label %301

109:                                              ; preds = %81, %81
  %110 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %111 = load %struct.directive*, %struct.directive** %9, align 8
  %112 = getelementptr inbounds %struct.directive, %struct.directive* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  br label %301

113:                                              ; preds = %81
  %114 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %115 = load %struct.directive*, %struct.directive** %9, align 8
  %116 = getelementptr inbounds %struct.directive, %struct.directive* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  br label %301

117:                                              ; preds = %81
  %118 = load %struct.instruction*, %struct.instruction** %14, align 8
  %119 = getelementptr inbounds %struct.instruction, %struct.instruction* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %158 [
    i32 0, label %121
    i32 1, label %125
    i32 2, label %129
    i32 3, label %133
  ]

121:                                              ; preds = %117
  %122 = load i8*, i8** @R_ANAL_OP_TYPE_MUL, align 8
  %123 = load %struct.directive*, %struct.directive** %9, align 8
  %124 = getelementptr inbounds %struct.directive, %struct.directive* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  br label %158

125:                                              ; preds = %117
  %126 = load i8*, i8** @R_ANAL_OP_TYPE_DIV, align 8
  %127 = load %struct.directive*, %struct.directive** %9, align 8
  %128 = getelementptr inbounds %struct.directive, %struct.directive* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  br label %158

129:                                              ; preds = %117
  %130 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %131 = load %struct.directive*, %struct.directive** %9, align 8
  %132 = getelementptr inbounds %struct.directive, %struct.directive* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  br label %158

133:                                              ; preds = %117
  %134 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %135 = load %struct.directive*, %struct.directive** %9, align 8
  %136 = getelementptr inbounds %struct.directive, %struct.directive* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = call i8* @label_off(%struct.directive* %17)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.directive*, %struct.directive** %9, align 8
  %140 = getelementptr inbounds %struct.directive, %struct.directive* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.directive*, %struct.directive** %9, align 8
  %142 = getelementptr inbounds %struct.directive, %struct.directive* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %133
  %147 = load %struct.directive*, %struct.directive** %9, align 8
  %148 = getelementptr inbounds %struct.directive, %struct.directive* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 3
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %146, %133
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 2
  %154 = load %struct.directive*, %struct.directive** %9, align 8
  %155 = getelementptr inbounds %struct.directive, %struct.directive* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load %struct.directive*, %struct.directive** %9, align 8
  %157 = getelementptr inbounds %struct.directive, %struct.directive* %156, i32 0, i32 4
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %117, %151, %129, %125, %121
  br label %301

159:                                              ; preds = %81
  %160 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %161 = load %struct.directive*, %struct.directive** %9, align 8
  %162 = getelementptr inbounds %struct.directive, %struct.directive* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  br label %301

163:                                              ; preds = %81
  %164 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %165 = load %struct.directive*, %struct.directive** %9, align 8
  %166 = getelementptr inbounds %struct.directive, %struct.directive* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  br label %301

167:                                              ; preds = %81
  %168 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %169 = load %struct.directive*, %struct.directive** %9, align 8
  %170 = getelementptr inbounds %struct.directive, %struct.directive* %169, i32 0, i32 6
  store i8* %168, i8** %170, align 8
  br label %301

171:                                              ; preds = %81
  %172 = load %struct.instruction*, %struct.instruction** %14, align 8
  %173 = getelementptr inbounds %struct.instruction, %struct.instruction* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %272 [
    i32 0, label %175
    i32 1, label %197
    i32 2, label %222
    i32 3, label %247
  ]

175:                                              ; preds = %171
  %176 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %177 = load %struct.directive*, %struct.directive** %9, align 8
  %178 = getelementptr inbounds %struct.directive, %struct.directive* %177, i32 0, i32 6
  store i8* %176, i8** %178, align 8
  %179 = call i8* @label_off(%struct.directive* %17)
  %180 = getelementptr i8, i8* %179, i64 4
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.directive*, %struct.directive** %9, align 8
  %183 = getelementptr inbounds %struct.directive, %struct.directive* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load %struct.directive*, %struct.directive** %9, align 8
  %185 = getelementptr inbounds %struct.directive, %struct.directive* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %175
  %190 = load %struct.directive*, %struct.directive** %9, align 8
  %191 = getelementptr inbounds %struct.directive, %struct.directive* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 3
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %189, %175
  %195 = load %struct.directive*, %struct.directive** %9, align 8
  %196 = getelementptr inbounds %struct.directive, %struct.directive* %195, i32 0, i32 4
  store i32 1, i32* %196, align 8
  br label %272

197:                                              ; preds = %171
  %198 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %199 = load %struct.directive*, %struct.directive** %9, align 8
  %200 = getelementptr inbounds %struct.directive, %struct.directive* %199, i32 0, i32 6
  store i8* %198, i8** %200, align 8
  %201 = call i8* @label_off(%struct.directive* %17)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.directive*, %struct.directive** %9, align 8
  %204 = getelementptr inbounds %struct.directive, %struct.directive* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load %struct.directive*, %struct.directive** %9, align 8
  %206 = getelementptr inbounds %struct.directive, %struct.directive* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %197
  %211 = load %struct.directive*, %struct.directive** %9, align 8
  %212 = getelementptr inbounds %struct.directive, %struct.directive* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 3
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %210, %197
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, 2
  %218 = load %struct.directive*, %struct.directive** %9, align 8
  %219 = getelementptr inbounds %struct.directive, %struct.directive* %218, i32 0, i32 5
  store i32 %217, i32* %219, align 4
  %220 = load %struct.directive*, %struct.directive** %9, align 8
  %221 = getelementptr inbounds %struct.directive, %struct.directive* %220, i32 0, i32 4
  store i32 1, i32* %221, align 8
  br label %272

222:                                              ; preds = %171
  %223 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %224 = load %struct.directive*, %struct.directive** %9, align 8
  %225 = getelementptr inbounds %struct.directive, %struct.directive* %224, i32 0, i32 6
  store i8* %223, i8** %225, align 8
  %226 = call i8* @label_off(%struct.directive* %17)
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.directive*, %struct.directive** %9, align 8
  %229 = getelementptr inbounds %struct.directive, %struct.directive* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load %struct.directive*, %struct.directive** %9, align 8
  %231 = getelementptr inbounds %struct.directive, %struct.directive* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 1
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %222
  %236 = load %struct.directive*, %struct.directive** %9, align 8
  %237 = getelementptr inbounds %struct.directive, %struct.directive* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 3
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %235, %222
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 2
  %243 = load %struct.directive*, %struct.directive** %9, align 8
  %244 = getelementptr inbounds %struct.directive, %struct.directive* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  %245 = load %struct.directive*, %struct.directive** %9, align 8
  %246 = getelementptr inbounds %struct.directive, %struct.directive* %245, i32 0, i32 4
  store i32 1, i32* %246, align 8
  br label %272

247:                                              ; preds = %171
  %248 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %249 = load %struct.directive*, %struct.directive** %9, align 8
  %250 = getelementptr inbounds %struct.directive, %struct.directive* %249, i32 0, i32 6
  store i8* %248, i8** %250, align 8
  %251 = call i8* @label_off(%struct.directive* %17)
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.directive*, %struct.directive** %9, align 8
  %254 = getelementptr inbounds %struct.directive, %struct.directive* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load %struct.directive*, %struct.directive** %9, align 8
  %256 = getelementptr inbounds %struct.directive, %struct.directive* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 1
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %247
  %261 = load %struct.directive*, %struct.directive** %9, align 8
  %262 = getelementptr inbounds %struct.directive, %struct.directive* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 3
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %260, %247
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 2
  %268 = load %struct.directive*, %struct.directive** %9, align 8
  %269 = getelementptr inbounds %struct.directive, %struct.directive* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 4
  %270 = load %struct.directive*, %struct.directive** %9, align 8
  %271 = getelementptr inbounds %struct.directive, %struct.directive* %270, i32 0, i32 4
  store i32 1, i32* %271, align 8
  br label %272

272:                                              ; preds = %171, %265, %240, %215, %194
  br label %301

273:                                              ; preds = %81
  %274 = load %struct.instruction*, %struct.instruction** %14, align 8
  %275 = getelementptr inbounds %struct.instruction, %struct.instruction* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  switch i32 %276, label %300 [
    i32 0, label %277
    i32 1, label %277
    i32 2, label %277
    i32 3, label %277
  ]

277:                                              ; preds = %273, %273, %273, %273
  %278 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %279 = load %struct.directive*, %struct.directive** %9, align 8
  %280 = getelementptr inbounds %struct.directive, %struct.directive* %279, i32 0, i32 6
  store i8* %278, i8** %280, align 8
  %281 = call i8* @label_off(%struct.directive* %17)
  %282 = ptrtoint i8* %281 to i32
  %283 = load %struct.directive*, %struct.directive** %9, align 8
  %284 = getelementptr inbounds %struct.directive, %struct.directive* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 4
  %285 = load %struct.directive*, %struct.directive** %9, align 8
  %286 = getelementptr inbounds %struct.directive, %struct.directive* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 1
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %277
  %291 = load %struct.directive*, %struct.directive** %9, align 8
  %292 = getelementptr inbounds %struct.directive, %struct.directive* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, 3
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %290, %277
  %296 = load i32, i32* %10, align 4
  %297 = add nsw i32 %296, 2
  %298 = load %struct.directive*, %struct.directive** %9, align 8
  %299 = getelementptr inbounds %struct.directive, %struct.directive* %298, i32 0, i32 5
  store i32 %297, i32* %299, align 4
  br label %300

300:                                              ; preds = %273, %295
  br label %301

301:                                              ; preds = %81, %300, %272, %167, %163, %159, %158, %113, %109, %105, %101, %97, %96
  br label %302

302:                                              ; preds = %301, %77, %73, %69, %65
  %303 = load %struct.directive*, %struct.directive** %9, align 8
  %304 = getelementptr inbounds %struct.directive, %struct.directive* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %302, %28
  %307 = load i32, i32* %7, align 4
  ret i32 %307
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(%struct.directive*, i8 signext, i32) #2

declare dso_local i32 @xap_decode(%struct.state*, %struct.directive*) #2

declare dso_local i32 @get_operand(%struct.state*, %struct.directive*) #2

declare dso_local i32 @i2ut16(%struct.instruction*) #2

declare dso_local i8* @label_off(%struct.directive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
