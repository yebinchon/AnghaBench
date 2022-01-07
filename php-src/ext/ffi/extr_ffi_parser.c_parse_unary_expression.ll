; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_unary_expression.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_unary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_FFI_ATTR_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\08\00\00\00\00\00\02\10\00\80\03\00\00\00", align 1
@YY__RBRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"']' expected, got\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\08\00\00\00\00\00\01\00\04\18\FF\FE\00\00", align 1
@YY__RPAREN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"')' expected, got\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"'(' expected, got\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_unary_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_unary_expression(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @ZEND_FFI_ATTR_INIT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %256 [
    i32 146, label %10
    i32 145, label %68
    i32 149, label %72
    i32 147, label %76
    i32 148, label %80
    i32 143, label %84
    i32 150, label %88
    i32 138, label %92
    i32 133, label %105
    i32 135, label %112
    i32 141, label %119
    i32 131, label %126
    i32 134, label %133
    i32 137, label %140
    i32 130, label %147
    i32 140, label %154
    i32 144, label %161
    i32 142, label %198
    i32 129, label %219
    i32 128, label %219
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @parse_ID(i32 %11, i8** %5, i64* %6)
  store i32 %12, i32* %3, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @zend_ffi_resolve_const(i8* %13, i64 %14, i32* %15)
  br label %17

17:                                               ; preds = %64, %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @YY_IN_SET(i32 %18, i32 135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  switch i32 %22, label %62 [
    i32 139, label %23
    i32 138, label %35
    i32 132, label %52
    i32 136, label %56
    i32 133, label %60
  ]

23:                                               ; preds = %21
  %24 = call i32 (...) @get_sym()
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @parse_expr_list(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @YY__RBRACK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = call i32 (...) @get_sym()
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %21
  %36 = call i32 (...) @get_sym()
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @YY_IN_SET(i32 %37, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @parse_expr_list(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @YY__RPAREN, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = call i32 (...) @get_sym()
  store i32 %51, i32* %3, align 4
  br label %64

52:                                               ; preds = %21
  %53 = call i32 (...) @get_sym()
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @parse_ID(i32 %54, i8** %5, i64* %6)
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %21
  %57 = call i32 (...) @get_sym()
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @parse_ID(i32 %58, i8** %5, i64* %6)
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %21
  %61 = call i32 (...) @get_sym()
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %21
  %63 = call i32 (...) @get_sym()
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %56, %52, %50, %33
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @zend_ffi_val_error(i32* %65)
  br label %17

67:                                               ; preds = %17
  br label %259

68:                                               ; preds = %2
  %69 = load i32, i32* %3, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @parse_OCTNUMBER(i32 %69, i32* %70)
  store i32 %71, i32* %3, align 4
  br label %259

72:                                               ; preds = %2
  %73 = load i32, i32* %3, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @parse_DECNUMBER(i32 %73, i32* %74)
  store i32 %75, i32* %3, align 4
  br label %259

76:                                               ; preds = %2
  %77 = load i32, i32* %3, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @parse_HEXNUMBER(i32 %77, i32* %78)
  store i32 %79, i32* %3, align 4
  br label %259

80:                                               ; preds = %2
  %81 = load i32, i32* %3, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @parse_FLOATNUMBER(i32 %81, i32* %82)
  store i32 %83, i32* %3, align 4
  br label %259

84:                                               ; preds = %2
  %85 = load i32, i32* %3, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @parse_STRING(i32 %85, i32* %86)
  store i32 %87, i32* %3, align 4
  br label %259

88:                                               ; preds = %2
  %89 = load i32, i32* %3, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @parse_CHARACTER(i32 %89, i32* %90)
  store i32 %91, i32* %3, align 4
  br label %259

92:                                               ; preds = %2
  %93 = call i32 (...) @get_sym()
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @parse_expression(i32 %94, i32* %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @YY__RPAREN, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %92
  %104 = call i32 (...) @get_sym()
  store i32 %104, i32* %3, align 4
  br label %259

105:                                              ; preds = %2
  %106 = call i32 (...) @get_sym()
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @parse_unary_expression(i32 %107, i32* %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @zend_ffi_val_error(i32* %110)
  br label %259

112:                                              ; preds = %2
  %113 = call i32 (...) @get_sym()
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @parse_unary_expression(i32 %114, i32* %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @zend_ffi_val_error(i32* %117)
  br label %259

119:                                              ; preds = %2
  %120 = call i32 (...) @get_sym()
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @parse_cast_expression(i32 %121, i32* %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @zend_ffi_val_error(i32* %124)
  br label %259

126:                                              ; preds = %2
  %127 = call i32 (...) @get_sym()
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @parse_cast_expression(i32 %128, i32* %129)
  store i32 %130, i32* %3, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @zend_ffi_val_error(i32* %131)
  br label %259

133:                                              ; preds = %2
  %134 = call i32 (...) @get_sym()
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @parse_cast_expression(i32 %135, i32* %136)
  store i32 %137, i32* %3, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @zend_ffi_expr_plus(i32* %138)
  br label %259

140:                                              ; preds = %2
  %141 = call i32 (...) @get_sym()
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @parse_cast_expression(i32 %142, i32* %143)
  store i32 %144, i32* %3, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @zend_ffi_expr_neg(i32* %145)
  br label %259

147:                                              ; preds = %2
  %148 = call i32 (...) @get_sym()
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @parse_cast_expression(i32 %149, i32* %150)
  store i32 %151, i32* %3, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @zend_ffi_expr_bw_not(i32* %152)
  br label %259

154:                                              ; preds = %2
  %155 = call i32 (...) @get_sym()
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @parse_cast_expression(i32 %156, i32* %157)
  store i32 %158, i32* %3, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @zend_ffi_expr_bool_not(i32* %159)
  br label %259

161:                                              ; preds = %2
  %162 = call i32 (...) @get_sym()
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = icmp eq i32 %163, 138
  br i1 %164, label %165, label %183

165:                                              ; preds = %161
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @synpred_5(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %165
  %170 = call i32 (...) @get_sym()
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @parse_type_name(i32 %171, i32* %7)
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @YY__RPAREN, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %176, %169
  %180 = call i32 (...) @get_sym()
  store i32 %180, i32* %3, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @zend_ffi_expr_sizeof_type(i32* %181, i32* %7)
  br label %197

183:                                              ; preds = %165, %161
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @YY_IN_SET(i32 %184, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* %3, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @parse_unary_expression(i32 %188, i32* %189)
  store i32 %190, i32* %3, align 4
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @zend_ffi_expr_sizeof_val(i32* %191)
  br label %196

193:                                              ; preds = %183
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %193, %187
  br label %197

197:                                              ; preds = %196, %179
  br label %259

198:                                              ; preds = %2
  %199 = call i32 (...) @get_sym()
  store i32 %199, i32* %3, align 4
  %200 = load i32, i32* %3, align 4
  %201 = icmp ne i32 %200, 138
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = call i32 (...) @get_sym()
  store i32 %206, i32* %3, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @parse_type_name(i32 %207, i32* %7)
  store i32 %208, i32* %3, align 4
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* @YY__RPAREN, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %212, %205
  %216 = call i32 (...) @get_sym()
  store i32 %216, i32* %3, align 4
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @zend_ffi_expr_alignof_type(i32* %217, i32* %7)
  br label %259

219:                                              ; preds = %2, %2
  %220 = call i32 (...) @get_sym()
  store i32 %220, i32* %3, align 4
  %221 = load i32, i32* %3, align 4
  %222 = icmp eq i32 %221, 138
  br i1 %222, label %223, label %241

223:                                              ; preds = %219
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @synpred_6(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = call i32 (...) @get_sym()
  store i32 %228, i32* %3, align 4
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @parse_type_name(i32 %229, i32* %7)
  store i32 %230, i32* %3, align 4
  %231 = load i32, i32* %3, align 4
  %232 = load i32, i32* @YY__RPAREN, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = load i32, i32* %3, align 4
  %236 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %234, %227
  %238 = call i32 (...) @get_sym()
  store i32 %238, i32* %3, align 4
  %239 = load i32*, i32** %4, align 8
  %240 = call i32 @zend_ffi_expr_alignof_type(i32* %239, i32* %7)
  br label %255

241:                                              ; preds = %223, %219
  %242 = load i32, i32* %3, align 4
  %243 = call i32 @YY_IN_SET(i32 %242, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = load i32, i32* %3, align 4
  %247 = load i32*, i32** %4, align 8
  %248 = call i32 @parse_unary_expression(i32 %246, i32* %247)
  store i32 %248, i32* %3, align 4
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @zend_ffi_expr_alignof_val(i32* %249)
  br label %254

251:                                              ; preds = %241
  %252 = load i32, i32* %3, align 4
  %253 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %251, %245
  br label %255

255:                                              ; preds = %254, %237
  br label %259

256:                                              ; preds = %2
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %256, %255, %215, %197, %154, %147, %140, %133, %126, %119, %112, %105, %103, %88, %84, %80, %76, %72, %68, %67
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local i32 @parse_ID(i32, i8**, i64*) #1

declare dso_local i32 @zend_ffi_resolve_const(i8*, i64, i32*) #1

declare dso_local i32 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @parse_expr_list(i32) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @zend_ffi_val_error(i32*) #1

declare dso_local i32 @parse_OCTNUMBER(i32, i32*) #1

declare dso_local i32 @parse_DECNUMBER(i32, i32*) #1

declare dso_local i32 @parse_HEXNUMBER(i32, i32*) #1

declare dso_local i32 @parse_FLOATNUMBER(i32, i32*) #1

declare dso_local i32 @parse_STRING(i32, i32*) #1

declare dso_local i32 @parse_CHARACTER(i32, i32*) #1

declare dso_local i32 @parse_expression(i32, i32*) #1

declare dso_local i32 @parse_cast_expression(i32, i32*) #1

declare dso_local i32 @zend_ffi_expr_plus(i32*) #1

declare dso_local i32 @zend_ffi_expr_neg(i32*) #1

declare dso_local i32 @zend_ffi_expr_bw_not(i32*) #1

declare dso_local i32 @zend_ffi_expr_bool_not(i32*) #1

declare dso_local i32 @synpred_5(i32) #1

declare dso_local i32 @parse_type_name(i32, i32*) #1

declare dso_local i32 @zend_ffi_expr_sizeof_type(i32*, i32*) #1

declare dso_local i32 @zend_ffi_expr_sizeof_val(i32*) #1

declare dso_local i32 @zend_ffi_expr_alignof_type(i32*, i32*) #1

declare dso_local i32 @synpred_6(i32) #1

declare dso_local i32 @zend_ffi_expr_alignof_val(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
