; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OP_add = common dso_local global i32 0, align 4
@OP_cnd_z = common dso_local global i32 0, align 4
@OP_array = common dso_local global i32 0, align 4
@OP_LAST = common dso_local global i32 0, align 4
@OP_and = common dso_local global i32 0, align 4
@OP_sub = common dso_local global i32 0, align 4
@OP_mul = common dso_local global i32 0, align 4
@OP_div = common dso_local global i32 0, align 4
@OP_mod = common dso_local global i32 0, align 4
@OP_or = common dso_local global i32 0, align 4
@OP_lshift = common dso_local global i32 0, align 4
@OP_rshift = common dso_local global i32 0, align 4
@OP_rshift2 = common dso_local global i32 0, align 4
@OP_xor = common dso_local global i32 0, align 4
@OP_bneg = common dso_local global i32 0, align 4
@OP_eq = common dso_local global i32 0, align 4
@OP_eq2 = common dso_local global i32 0, align 4
@OP_gt = common dso_local global i32 0, align 4
@OP_gteq = common dso_local global i32 0, align 4
@OP_in = common dso_local global i32 0, align 4
@OP_instanceof = common dso_local global i32 0, align 4
@OP_lt = common dso_local global i32 0, align 4
@OP_lteq = common dso_local global i32 0, align 4
@OP_neg = common dso_local global i32 0, align 4
@OP_minus = common dso_local global i32 0, align 4
@OP_neq = common dso_local global i32 0, align 4
@OP_neq2 = common dso_local global i32 0, align 4
@OP_cnd_nz = common dso_local global i32 0, align 4
@OP_tonum = common dso_local global i32 0, align 4
@OP_postinc = common dso_local global i32 0, align 4
@OP_preinc = common dso_local global i32 0, align 4
@OP_this = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_void = common dso_local global i32 0, align 4
@OP_pop = common dso_local global i32 0, align 4
@DEFAULT_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64)* @compile_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_expression(i32* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %363 [
    i32 185, label %12
    i32 184, label %18
    i32 183, label %24
    i32 182, label %30
    i32 181, label %35
    i32 180, label %41
    i32 179, label %47
    i32 171, label %53
    i32 175, label %59
    i32 178, label %65
    i32 176, label %71
    i32 174, label %77
    i32 177, label %83
    i32 172, label %89
    i32 173, label %95
    i32 170, label %101
    i32 169, label %107
    i32 168, label %113
    i32 167, label %119
    i32 165, label %125
    i32 164, label %131
    i32 163, label %137
    i32 162, label %142
    i32 161, label %147
    i32 160, label %153
    i32 159, label %159
    i32 158, label %165
    i32 157, label %171
    i32 156, label %177
    i32 155, label %183
    i32 154, label %190
    i32 153, label %196
    i32 152, label %202
    i32 151, label %208
    i32 150, label %214
    i32 149, label %221
    i32 148, label %227
    i32 147, label %233
    i32 146, label %238
    i32 145, label %244
    i32 144, label %250
    i32 143, label %256
    i32 142, label %261
    i32 141, label %267
    i32 140, label %273
    i32 139, label %279
    i32 138, label %285
    i32 137, label %291
    i32 136, label %297
    i32 135, label %303
    i32 134, label %309
    i32 132, label %314
    i32 133, label %320
    i32 131, label %326
    i32 130, label %332
    i32 129, label %346
    i32 128, label %351
    i32 166, label %357
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = bitcast %struct.TYPE_7__* %14 to i32*
  %16 = load i32, i32* @OP_add, align 4
  %17 = call i32 @compile_binary_expression(i32* %13, i32* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  br label %363

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = bitcast %struct.TYPE_7__* %20 to i32*
  %22 = load i32, i32* @OP_cnd_z, align 4
  %23 = call i32 @compile_logical_expression(i32* %19, i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  br label %363

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = bitcast %struct.TYPE_7__* %26 to i32*
  %28 = load i32, i32* @OP_array, align 4
  %29 = call i32 @compile_binary_expression(i32* %25, i32* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %363

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = bitcast %struct.TYPE_7__* %32 to i32*
  %34 = call i32 @compile_array_literal(i32* %31, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %363

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = bitcast %struct.TYPE_7__* %37 to i32*
  %39 = load i32, i32* @OP_LAST, align 4
  %40 = call i32 @compile_assign_expression(i32* %36, i32* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %363

41:                                               ; preds = %3
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = bitcast %struct.TYPE_7__* %43 to i32*
  %45 = load i32, i32* @OP_add, align 4
  %46 = call i32 @compile_assign_expression(i32* %42, i32* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %363

47:                                               ; preds = %3
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = bitcast %struct.TYPE_7__* %49 to i32*
  %51 = load i32, i32* @OP_and, align 4
  %52 = call i32 @compile_assign_expression(i32* %48, i32* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %363

53:                                               ; preds = %3
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = bitcast %struct.TYPE_7__* %55 to i32*
  %57 = load i32, i32* @OP_sub, align 4
  %58 = call i32 @compile_assign_expression(i32* %54, i32* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %363

59:                                               ; preds = %3
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = bitcast %struct.TYPE_7__* %61 to i32*
  %63 = load i32, i32* @OP_mul, align 4
  %64 = call i32 @compile_assign_expression(i32* %60, i32* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %363

65:                                               ; preds = %3
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = bitcast %struct.TYPE_7__* %67 to i32*
  %69 = load i32, i32* @OP_div, align 4
  %70 = call i32 @compile_assign_expression(i32* %66, i32* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  br label %363

71:                                               ; preds = %3
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = bitcast %struct.TYPE_7__* %73 to i32*
  %75 = load i32, i32* @OP_mod, align 4
  %76 = call i32 @compile_assign_expression(i32* %72, i32* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %363

77:                                               ; preds = %3
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = bitcast %struct.TYPE_7__* %79 to i32*
  %81 = load i32, i32* @OP_or, align 4
  %82 = call i32 @compile_assign_expression(i32* %78, i32* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  br label %363

83:                                               ; preds = %3
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = bitcast %struct.TYPE_7__* %85 to i32*
  %87 = load i32, i32* @OP_lshift, align 4
  %88 = call i32 @compile_assign_expression(i32* %84, i32* %86, i32 %87)
  store i32 %88, i32* %8, align 4
  br label %363

89:                                               ; preds = %3
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = bitcast %struct.TYPE_7__* %91 to i32*
  %93 = load i32, i32* @OP_rshift, align 4
  %94 = call i32 @compile_assign_expression(i32* %90, i32* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %363

95:                                               ; preds = %3
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = bitcast %struct.TYPE_7__* %97 to i32*
  %99 = load i32, i32* @OP_rshift2, align 4
  %100 = call i32 @compile_assign_expression(i32* %96, i32* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  br label %363

101:                                              ; preds = %3
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = bitcast %struct.TYPE_7__* %103 to i32*
  %105 = load i32, i32* @OP_xor, align 4
  %106 = call i32 @compile_assign_expression(i32* %102, i32* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  br label %363

107:                                              ; preds = %3
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = bitcast %struct.TYPE_7__* %109 to i32*
  %111 = load i32, i32* @OP_and, align 4
  %112 = call i32 @compile_binary_expression(i32* %108, i32* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %363

113:                                              ; preds = %3
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = bitcast %struct.TYPE_7__* %115 to i32*
  %117 = load i32, i32* @OP_bneg, align 4
  %118 = call i32 @compile_unary_expression(i32* %114, i32* %116, i32 %117)
  store i32 %118, i32* %8, align 4
  br label %363

119:                                              ; preds = %3
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = bitcast %struct.TYPE_7__* %121 to i32*
  %123 = load i32, i32* @OP_or, align 4
  %124 = call i32 @compile_binary_expression(i32* %120, i32* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  br label %363

125:                                              ; preds = %3
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = bitcast %struct.TYPE_7__* %127 to i32*
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @compile_call_expression(i32* %126, i32* %128, i64 %129)
  store i32 %130, i32* %4, align 4
  br label %380

131:                                              ; preds = %3
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = bitcast %struct.TYPE_7__* %133 to i32*
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @compile_comma_expression(i32* %132, i32* %134, i64 %135)
  store i32 %136, i32* %4, align 4
  br label %380

137:                                              ; preds = %3
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = bitcast %struct.TYPE_7__* %139 to i32*
  %141 = call i32 @compile_conditional_expression(i32* %138, i32* %140)
  store i32 %141, i32* %8, align 4
  br label %363

142:                                              ; preds = %3
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = bitcast %struct.TYPE_7__* %144 to i32*
  %146 = call i32 @compile_delete_expression(i32* %143, i32* %145)
  store i32 %146, i32* %8, align 4
  br label %363

147:                                              ; preds = %3
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = bitcast %struct.TYPE_7__* %149 to i32*
  %151 = load i32, i32* @OP_div, align 4
  %152 = call i32 @compile_binary_expression(i32* %148, i32* %150, i32 %151)
  store i32 %152, i32* %8, align 4
  br label %363

153:                                              ; preds = %3
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = bitcast %struct.TYPE_7__* %155 to i32*
  %157 = load i32, i32* @OP_eq, align 4
  %158 = call i32 @compile_binary_expression(i32* %154, i32* %156, i32 %157)
  store i32 %158, i32* %8, align 4
  br label %363

159:                                              ; preds = %3
  %160 = load i32*, i32** %5, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = bitcast %struct.TYPE_7__* %161 to i32*
  %163 = load i32, i32* @OP_eq2, align 4
  %164 = call i32 @compile_binary_expression(i32* %160, i32* %162, i32 %163)
  store i32 %164, i32* %8, align 4
  br label %363

165:                                              ; preds = %3
  %166 = load i32*, i32** %5, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = bitcast %struct.TYPE_7__* %167 to i32*
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @compile_function_expression(i32* %166, i32* %168, i64 %169)
  store i32 %170, i32* %4, align 4
  br label %380

171:                                              ; preds = %3
  %172 = load i32*, i32** %5, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = bitcast %struct.TYPE_7__* %173 to i32*
  %175 = load i32, i32* @OP_gt, align 4
  %176 = call i32 @compile_binary_expression(i32* %172, i32* %174, i32 %175)
  store i32 %176, i32* %8, align 4
  br label %363

177:                                              ; preds = %3
  %178 = load i32*, i32** %5, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %180 = bitcast %struct.TYPE_7__* %179 to i32*
  %181 = load i32, i32* @OP_gteq, align 4
  %182 = call i32 @compile_binary_expression(i32* %178, i32* %180, i32 %181)
  store i32 %182, i32* %8, align 4
  br label %363

183:                                              ; preds = %3
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %186 = bitcast %struct.TYPE_7__* %185 to %struct.TYPE_6__*
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @emit_identifier(i32* %184, i32 %188)
  store i32 %189, i32* %8, align 4
  br label %363

190:                                              ; preds = %3
  %191 = load i32*, i32** %5, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %193 = bitcast %struct.TYPE_7__* %192 to i32*
  %194 = load i32, i32* @OP_in, align 4
  %195 = call i32 @compile_binary_expression(i32* %191, i32* %193, i32 %194)
  store i32 %195, i32* %8, align 4
  br label %363

196:                                              ; preds = %3
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = bitcast %struct.TYPE_7__* %198 to i32*
  %200 = load i32, i32* @OP_instanceof, align 4
  %201 = call i32 @compile_binary_expression(i32* %197, i32* %199, i32 %200)
  store i32 %201, i32* %8, align 4
  br label %363

202:                                              ; preds = %3
  %203 = load i32*, i32** %5, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = bitcast %struct.TYPE_7__* %204 to i32*
  %206 = load i32, i32* @OP_lt, align 4
  %207 = call i32 @compile_binary_expression(i32* %203, i32* %205, i32 %206)
  store i32 %207, i32* %8, align 4
  br label %363

208:                                              ; preds = %3
  %209 = load i32*, i32** %5, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %211 = bitcast %struct.TYPE_7__* %210 to i32*
  %212 = load i32, i32* @OP_lteq, align 4
  %213 = call i32 @compile_binary_expression(i32* %209, i32* %211, i32 %212)
  store i32 %213, i32* %8, align 4
  br label %363

214:                                              ; preds = %3
  %215 = load i32*, i32** %5, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = bitcast %struct.TYPE_7__* %216 to %struct.TYPE_5__*
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @compile_literal(i32* %215, i32 %219)
  store i32 %220, i32* %8, align 4
  br label %363

221:                                              ; preds = %3
  %222 = load i32*, i32** %5, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %224 = bitcast %struct.TYPE_7__* %223 to i32*
  %225 = load i32, i32* @OP_neg, align 4
  %226 = call i32 @compile_unary_expression(i32* %222, i32* %224, i32 %225)
  store i32 %226, i32* %8, align 4
  br label %363

227:                                              ; preds = %3
  %228 = load i32*, i32** %5, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %230 = bitcast %struct.TYPE_7__* %229 to i32*
  %231 = load i32, i32* @OP_lshift, align 4
  %232 = call i32 @compile_binary_expression(i32* %228, i32* %230, i32 %231)
  store i32 %232, i32* %8, align 4
  br label %363

233:                                              ; preds = %3
  %234 = load i32*, i32** %5, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %236 = bitcast %struct.TYPE_7__* %235 to i32*
  %237 = call i32 @compile_member_expression(i32* %234, i32* %236)
  store i32 %237, i32* %8, align 4
  br label %363

238:                                              ; preds = %3
  %239 = load i32*, i32** %5, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = bitcast %struct.TYPE_7__* %240 to i32*
  %242 = load i32, i32* @OP_minus, align 4
  %243 = call i32 @compile_unary_expression(i32* %239, i32* %241, i32 %242)
  store i32 %243, i32* %8, align 4
  br label %363

244:                                              ; preds = %3
  %245 = load i32*, i32** %5, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %247 = bitcast %struct.TYPE_7__* %246 to i32*
  %248 = load i32, i32* @OP_mod, align 4
  %249 = call i32 @compile_binary_expression(i32* %245, i32* %247, i32 %248)
  store i32 %249, i32* %8, align 4
  br label %363

250:                                              ; preds = %3
  %251 = load i32*, i32** %5, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = bitcast %struct.TYPE_7__* %252 to i32*
  %254 = load i32, i32* @OP_mul, align 4
  %255 = call i32 @compile_binary_expression(i32* %251, i32* %253, i32 %254)
  store i32 %255, i32* %8, align 4
  br label %363

256:                                              ; preds = %3
  %257 = load i32*, i32** %5, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %259 = bitcast %struct.TYPE_7__* %258 to i32*
  %260 = call i32 @compile_new_expression(i32* %257, i32* %259)
  store i32 %260, i32* %8, align 4
  br label %363

261:                                              ; preds = %3
  %262 = load i32*, i32** %5, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %264 = bitcast %struct.TYPE_7__* %263 to i32*
  %265 = load i32, i32* @OP_neq, align 4
  %266 = call i32 @compile_binary_expression(i32* %262, i32* %264, i32 %265)
  store i32 %266, i32* %8, align 4
  br label %363

267:                                              ; preds = %3
  %268 = load i32*, i32** %5, align 8
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %270 = bitcast %struct.TYPE_7__* %269 to i32*
  %271 = load i32, i32* @OP_neq2, align 4
  %272 = call i32 @compile_binary_expression(i32* %268, i32* %270, i32 %271)
  store i32 %272, i32* %8, align 4
  br label %363

273:                                              ; preds = %3
  %274 = load i32*, i32** %5, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %276 = bitcast %struct.TYPE_7__* %275 to i32*
  %277 = load i32, i32* @OP_cnd_nz, align 4
  %278 = call i32 @compile_logical_expression(i32* %274, i32* %276, i32 %277)
  store i32 %278, i32* %8, align 4
  br label %363

279:                                              ; preds = %3
  %280 = load i32*, i32** %5, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %282 = bitcast %struct.TYPE_7__* %281 to i32*
  %283 = load i32, i32* @OP_tonum, align 4
  %284 = call i32 @compile_unary_expression(i32* %280, i32* %282, i32 %283)
  store i32 %284, i32* %8, align 4
  br label %363

285:                                              ; preds = %3
  %286 = load i32*, i32** %5, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %288 = bitcast %struct.TYPE_7__* %287 to i32*
  %289 = load i32, i32* @OP_postinc, align 4
  %290 = call i32 @compile_increment_expression(i32* %286, i32* %288, i32 %289, i32 -1)
  store i32 %290, i32* %8, align 4
  br label %363

291:                                              ; preds = %3
  %292 = load i32*, i32** %5, align 8
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %294 = bitcast %struct.TYPE_7__* %293 to i32*
  %295 = load i32, i32* @OP_postinc, align 4
  %296 = call i32 @compile_increment_expression(i32* %292, i32* %294, i32 %295, i32 1)
  store i32 %296, i32* %8, align 4
  br label %363

297:                                              ; preds = %3
  %298 = load i32*, i32** %5, align 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %300 = bitcast %struct.TYPE_7__* %299 to i32*
  %301 = load i32, i32* @OP_preinc, align 4
  %302 = call i32 @compile_increment_expression(i32* %298, i32* %300, i32 %301, i32 -1)
  store i32 %302, i32* %8, align 4
  br label %363

303:                                              ; preds = %3
  %304 = load i32*, i32** %5, align 8
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %306 = bitcast %struct.TYPE_7__* %305 to i32*
  %307 = load i32, i32* @OP_preinc, align 4
  %308 = call i32 @compile_increment_expression(i32* %304, i32* %306, i32 %307, i32 1)
  store i32 %308, i32* %8, align 4
  br label %363

309:                                              ; preds = %3
  %310 = load i32*, i32** %5, align 8
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %312 = bitcast %struct.TYPE_7__* %311 to i32*
  %313 = call i32 @compile_object_literal(i32* %310, i32* %312)
  store i32 %313, i32* %8, align 4
  br label %363

314:                                              ; preds = %3
  %315 = load i32*, i32** %5, align 8
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %317 = bitcast %struct.TYPE_7__* %316 to i32*
  %318 = load i32, i32* @OP_rshift, align 4
  %319 = call i32 @compile_binary_expression(i32* %315, i32* %317, i32 %318)
  store i32 %319, i32* %8, align 4
  br label %363

320:                                              ; preds = %3
  %321 = load i32*, i32** %5, align 8
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %323 = bitcast %struct.TYPE_7__* %322 to i32*
  %324 = load i32, i32* @OP_rshift2, align 4
  %325 = call i32 @compile_binary_expression(i32* %321, i32* %323, i32 %324)
  store i32 %325, i32* %8, align 4
  br label %363

326:                                              ; preds = %3
  %327 = load i32*, i32** %5, align 8
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %329 = bitcast %struct.TYPE_7__* %328 to i32*
  %330 = load i32, i32* @OP_sub, align 4
  %331 = call i32 @compile_binary_expression(i32* %327, i32* %329, i32 %330)
  store i32 %331, i32* %8, align 4
  br label %363

332:                                              ; preds = %3
  %333 = load i64, i64* %7, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = load i32*, i32** %5, align 8
  %337 = load i32, i32* @OP_this, align 4
  %338 = call i32 @push_instr(i32* %336, i32 %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %335, %332
  %341 = load i32, i32* @S_OK, align 4
  br label %344

342:                                              ; preds = %335
  %343 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %344

344:                                              ; preds = %342, %340
  %345 = phi i32 [ %341, %340 ], [ %343, %342 ]
  store i32 %345, i32* %4, align 4
  br label %380

346:                                              ; preds = %3
  %347 = load i32*, i32** %5, align 8
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %349 = bitcast %struct.TYPE_7__* %348 to i32*
  %350 = call i32 @compile_typeof_expression(i32* %347, i32* %349)
  store i32 %350, i32* %8, align 4
  br label %363

351:                                              ; preds = %3
  %352 = load i32*, i32** %5, align 8
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %354 = bitcast %struct.TYPE_7__* %353 to i32*
  %355 = load i32, i32* @OP_void, align 4
  %356 = call i32 @compile_unary_expression(i32* %352, i32* %354, i32 %355)
  store i32 %356, i32* %8, align 4
  br label %363

357:                                              ; preds = %3
  %358 = load i32*, i32** %5, align 8
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %360 = bitcast %struct.TYPE_7__* %359 to i32*
  %361 = load i32, i32* @OP_xor, align 4
  %362 = call i32 @compile_binary_expression(i32* %358, i32* %360, i32 %361)
  store i32 %362, i32* %8, align 4
  br label %363

363:                                              ; preds = %3, %357, %351, %346, %326, %320, %314, %309, %303, %297, %291, %285, %279, %273, %267, %261, %256, %250, %244, %238, %233, %227, %221, %214, %208, %202, %196, %190, %183, %177, %171, %159, %153, %147, %142, %137, %119, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %30, %24, %18, %12
  %364 = load i32, i32* %8, align 4
  %365 = call i64 @FAILED(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %363
  %368 = load i32, i32* %8, align 4
  store i32 %368, i32* %4, align 4
  br label %380

369:                                              ; preds = %363
  %370 = load i64, i64* %7, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = load i32, i32* @S_OK, align 4
  br label %378

374:                                              ; preds = %369
  %375 = load i32*, i32** %5, align 8
  %376 = load i32, i32* @OP_pop, align 4
  %377 = call i32 @push_instr_uint(i32* %375, i32 %376, i32 1)
  br label %378

378:                                              ; preds = %374, %372
  %379 = phi i32 [ %373, %372 ], [ %377, %374 ]
  store i32 %379, i32* %4, align 4
  br label %380

380:                                              ; preds = %378, %367, %344, %165, %131, %125
  %381 = load i32, i32* %4, align 4
  ret i32 %381
}

declare dso_local i32 @compile_binary_expression(i32*, i32*, i32) #1

declare dso_local i32 @compile_logical_expression(i32*, i32*, i32) #1

declare dso_local i32 @compile_array_literal(i32*, i32*) #1

declare dso_local i32 @compile_assign_expression(i32*, i32*, i32) #1

declare dso_local i32 @compile_unary_expression(i32*, i32*, i32) #1

declare dso_local i32 @compile_call_expression(i32*, i32*, i64) #1

declare dso_local i32 @compile_comma_expression(i32*, i32*, i64) #1

declare dso_local i32 @compile_conditional_expression(i32*, i32*) #1

declare dso_local i32 @compile_delete_expression(i32*, i32*) #1

declare dso_local i32 @compile_function_expression(i32*, i32*, i64) #1

declare dso_local i32 @emit_identifier(i32*, i32) #1

declare dso_local i32 @compile_literal(i32*, i32) #1

declare dso_local i32 @compile_member_expression(i32*, i32*) #1

declare dso_local i32 @compile_new_expression(i32*, i32*) #1

declare dso_local i32 @compile_increment_expression(i32*, i32*, i32, i32) #1

declare dso_local i32 @compile_object_literal(i32*, i32*) #1

declare dso_local i32 @push_instr(i32*, i32) #1

declare dso_local i32 @compile_typeof_expression(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr_uint(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
