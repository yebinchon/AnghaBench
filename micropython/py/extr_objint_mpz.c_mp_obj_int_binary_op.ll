; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objint_mpz.c_mp_obj_int_binary_op.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objint_mpz.c_mp_obj_int_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MPZ_NUM_DIG_FOR_INT = common dso_local global i32 0, align 4
@mp_type_int = common dso_local global i32 0, align 4
@MP_BINARY_OP_CONTAINS = common dso_local global i32 0, align 4
@mp_type_ZeroDivisionError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"negative shift count\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"negative power with no float support\00", align 1
@MP_BINARY_OP_DIVMOD = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i32 0, align 4
@MP_BINARY_OP_INPLACE_TRUE_DIVIDE = common dso_local global i32 0, align 4
@MP_BINARY_OP_TRUE_DIVIDE = common dso_local global i32 0, align 4
@mp_type_complex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_int_binary_op(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca [2 x i32], align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* @MPZ_NUM_DIG_FOR_INT, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @mp_obj_is_small_int(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @MPZ_NUM_DIG_FOR_INT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @MP_OBJ_SMALL_INT_VALUE(i32 %30)
  %32 = call i32 @mpz_init_fixed_from_int(i32* %10, i32* %24, i32 %29, i32 %31)
  store i32* %10, i32** %8, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mp_obj_is_type(i32 %34, i32* @mp_type_int)
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @MP_OBJ_TO_PTR(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @mp_obj_is_small_int(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @MPZ_NUM_DIG_FOR_INT, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @MP_OBJ_SMALL_INT_VALUE(i32 %47)
  %49 = call i32 @mpz_init_fixed_from_int(i32* %10, i32* %24, i32 %46, i32 %48)
  store i32* %10, i32** %9, align 8
  br label %65

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mp_obj_is_type(i32 %51, i32* @mp_type_int)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @MP_OBJ_TO_PTR(i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32* %58, i32** %9, align 8
  br label %64

59:                                               ; preds = %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @mp_obj_int_binary_op_extra_cases(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* %5, align 4
  %67 = icmp sge i32 %66, 144
  br i1 %67, label %68, label %207

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MP_BINARY_OP_CONTAINS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %207

72:                                               ; preds = %68
  %73 = call %struct.TYPE_4__* (...) @mp_obj_int_new_mpz()
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %14, align 8
  %74 = load i32, i32* %5, align 4
  switch i32 %74, label %177 [
    i32 154, label %75
    i32 150, label %75
    i32 129, label %81
    i32 141, label %81
    i32 133, label %87
    i32 145, label %87
    i32 151, label %93
    i32 148, label %93
    i32 136, label %108
    i32 146, label %108
    i32 153, label %121
    i32 149, label %121
    i32 132, label %127
    i32 144, label %127
    i32 128, label %133
    i32 140, label %133
    i32 137, label %139
    i32 147, label %139
    i32 130, label %139
    i32 142, label %139
    i32 131, label %165
    i32 143, label %165
  ]

75:                                               ; preds = %72, %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @mpz_add_inpl(i32* %77, i32* %78, i32* %79)
  br label %204

81:                                               ; preds = %72, %72
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @mpz_sub_inpl(i32* %83, i32* %84, i32* %85)
  br label %204

87:                                               ; preds = %72, %72
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @mpz_mul_inpl(i32* %89, i32* %90, i32* %91)
  br label %204

93:                                               ; preds = %72, %72
  %94 = load i32*, i32** %9, align 8
  %95 = call i64 @mpz_is_zero(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %186, %112, %97
  %99 = call i32 @mp_raise_msg(i32* @mp_type_ZeroDivisionError, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = call i32 @mpz_init_zero(i32* %15)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @mpz_divmod_inpl(i32* %103, i32* %15, i32* %104, i32* %105)
  %107 = call i32 @mpz_deinit(i32* %15)
  br label %204

108:                                              ; preds = %72, %72
  %109 = load i32*, i32** %9, align 8
  %110 = call i64 @mpz_is_zero(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %98

113:                                              ; preds = %108
  %114 = call i32 @mpz_init_zero(i32* %16)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @mpz_divmod_inpl(i32* %16, i32* %116, i32* %117, i32* %118)
  %120 = call i32 @mpz_deinit(i32* %16)
  br label %204

121:                                              ; preds = %72, %72
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @mpz_and_inpl(i32* %123, i32* %124, i32* %125)
  br label %204

127:                                              ; preds = %72, %72
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %8, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @mpz_or_inpl(i32* %129, i32* %130, i32* %131)
  br label %204

133:                                              ; preds = %72, %72
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @mpz_xor_inpl(i32* %135, i32* %136, i32* %137)
  br label %204

139:                                              ; preds = %72, %72, %72, %72
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @mp_obj_int_get_checked(i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 137
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %150, 147
  br i1 %151, label %152, label %158

152:                                              ; preds = %149, %146
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @mpz_shl_inpl(i32* %154, i32* %155, i32 %156)
  br label %164

158:                                              ; preds = %149
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @mpz_shr_inpl(i32* %160, i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %152
  br label %204

165:                                              ; preds = %72, %72
  %166 = load i32*, i32** %9, align 8
  %167 = call i32 @mpz_is_neg(i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %165
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %8, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @mpz_pow_inpl(i32* %173, i32* %174, i32* %175)
  br label %204

177:                                              ; preds = %72
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @MP_BINARY_OP_DIVMOD, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32*, i32** %9, align 8
  %184 = call i64 @mpz_is_zero(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  br label %98

187:                                              ; preds = %177
  %188 = call %struct.TYPE_4__* (...) @mp_obj_int_new_mpz()
  store %struct.TYPE_4__* %188, %struct.TYPE_4__** %18, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32*, i32** %8, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 @mpz_divmod_inpl(i32* %190, i32* %192, i32* %193, i32* %194)
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %198 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_4__* %197)
  store i32 %198, i32* %196, align 4
  %199 = getelementptr inbounds i32, i32* %196, i64 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %201 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_4__* %200)
  store i32 %201, i32* %199, align 4
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %203 = call i32 @mp_obj_new_tuple(i32 2, i32* %202)
  store i32 %203, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

204:                                              ; preds = %171, %164, %133, %127, %121, %113, %100, %87, %81, %75
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %206 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_4__* %205)
  store i32 %206, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

207:                                              ; preds = %68, %65
  %208 = load i32*, i32** %8, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @mpz_cmp(i32* %208, i32* %209)
  store i32 %210, i32* %20, align 4
  %211 = load i32, i32* %5, align 4
  switch i32 %211, label %237 [
    i32 139, label %212
    i32 135, label %217
    i32 138, label %222
    i32 134, label %227
    i32 152, label %232
  ]

212:                                              ; preds = %207
  %213 = load i32, i32* %20, align 4
  %214 = icmp slt i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @mp_obj_new_bool(i32 %215)
  store i32 %216, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

217:                                              ; preds = %207
  %218 = load i32, i32* %20, align 4
  %219 = icmp sgt i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @mp_obj_new_bool(i32 %220)
  store i32 %221, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

222:                                              ; preds = %207
  %223 = load i32, i32* %20, align 4
  %224 = icmp sle i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @mp_obj_new_bool(i32 %225)
  store i32 %226, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

227:                                              ; preds = %207
  %228 = load i32, i32* %20, align 4
  %229 = icmp sge i32 %228, 0
  %230 = zext i1 %229 to i32
  %231 = call i32 @mp_obj_new_bool(i32 %230)
  store i32 %231, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

232:                                              ; preds = %207
  %233 = load i32, i32* %20, align 4
  %234 = icmp eq i32 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @mp_obj_new_bool(i32 %235)
  store i32 %236, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

237:                                              ; preds = %207
  %238 = load i32, i32* @MP_OBJ_NULL, align 4
  store i32 %238, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %239

239:                                              ; preds = %237, %232, %227, %222, %217, %212, %204, %187, %59
  %240 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mp_obj_is_small_int(i32) #2

declare dso_local i32 @mpz_init_fixed_from_int(i32*, i32*, i32, i32) #2

declare dso_local i32 @MP_OBJ_SMALL_INT_VALUE(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @mp_obj_is_type(i32, i32*) #2

declare dso_local i64 @MP_OBJ_TO_PTR(i32) #2

declare dso_local i32 @mp_obj_int_binary_op_extra_cases(i32, i32, i32) #2

declare dso_local %struct.TYPE_4__* @mp_obj_int_new_mpz(...) #2

declare dso_local i32 @mpz_add_inpl(i32*, i32*, i32*) #2

declare dso_local i32 @mpz_sub_inpl(i32*, i32*, i32*) #2

declare dso_local i32 @mpz_mul_inpl(i32*, i32*, i32*) #2

declare dso_local i64 @mpz_is_zero(i32*) #2

declare dso_local i32 @mp_raise_msg(i32*, i8*) #2

declare dso_local i32 @mpz_init_zero(i32*) #2

declare dso_local i32 @mpz_divmod_inpl(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @mpz_deinit(i32*) #2

declare dso_local i32 @mpz_and_inpl(i32*, i32*, i32*) #2

declare dso_local i32 @mpz_or_inpl(i32*, i32*, i32*) #2

declare dso_local i32 @mpz_xor_inpl(i32*, i32*, i32*) #2

declare dso_local i32 @mp_obj_int_get_checked(i32) #2

declare dso_local i32 @mp_raise_ValueError(i8*) #2

declare dso_local i32 @mpz_shl_inpl(i32*, i32*, i32) #2

declare dso_local i32 @mpz_shr_inpl(i32*, i32*, i32) #2

declare dso_local i32 @mpz_is_neg(i32*) #2

declare dso_local i32 @mpz_pow_inpl(i32*, i32*, i32*) #2

declare dso_local i32 @MP_OBJ_FROM_PTR(%struct.TYPE_4__*) #2

declare dso_local i32 @mp_obj_new_tuple(i32, i32*) #2

declare dso_local i32 @mpz_cmp(i32*, i32*) #2

declare dso_local i32 @mp_obj_new_bool(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
