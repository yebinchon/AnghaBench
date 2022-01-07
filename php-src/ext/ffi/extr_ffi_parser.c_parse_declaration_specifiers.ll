; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_declaration_specifiers.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_declaration_specifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@ZEND_FFI_DCL_STORAGE_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@ZEND_FFI_DCL_TYPEDEF = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_EXTERN = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_STATIC = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_AUTO = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_REGISTER = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_INLINE = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_NO_RETURN = common dso_local global i32 0, align 4
@YY__LPAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"'(' expected, got\00", align 1
@YY___EXTENSION__ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"\02\00\FE\FF\FFG\F0\0F\00\00\00\02\00\00", align 1
@ZEND_FFI_ATTR_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@YY_OCTNUMBER = common dso_local global i32 0, align 4
@YY_DECNUMBER = common dso_local global i32 0, align 4
@YY_HEXNUMBER = common dso_local global i32 0, align 4
@YY_FLOATNUMBER = common dso_local global i32 0, align 4
@YY_STRING = common dso_local global i32 0, align 4
@YY_CHARACTER = common dso_local global i32 0, align 4
@YY__PLUS_PLUS = common dso_local global i32 0, align 4
@YY__MINUS_MINUS = common dso_local global i32 0, align 4
@YY__AND = common dso_local global i32 0, align 4
@YY__STAR = common dso_local global i32 0, align 4
@YY__PLUS = common dso_local global i32 0, align 4
@YY__MINUS = common dso_local global i32 0, align 4
@YY__TILDE = common dso_local global i32 0, align 4
@YY__BANG = common dso_local global i32 0, align 4
@YY_SIZEOF = common dso_local global i32 0, align 4
@YY__ALIGNOF = common dso_local global i32 0, align 4
@YY___ALIGNOF = common dso_local global i32 0, align 4
@YY___ALIGNOF__ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\08\00\00\00\00\00\01\00\04\18\FF\FE\00\00", align 1
@YY__RPAREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"')' expected, got\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\80\FF\FF\FF\FFG\F0\0F\00\00\00\02\00\00", align 1
@ZEND_FFI_DCL_TYPE_SPECIFIERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*)* @parse_declaration_specifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_declaration_specifiers(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  br label %7

7:                                                ; preds = %206, %2
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %185 [
    i32 155, label %9
    i32 167, label %26
    i32 157, label %43
    i32 173, label %60
    i32 161, label %77
    i32 164, label %94
    i32 136, label %94
    i32 135, label %94
    i32 146, label %101
    i32 150, label %108
    i32 145, label %173
    i32 144, label %173
    i32 138, label %173
    i32 143, label %173
    i32 132, label %173
    i32 137, label %173
    i32 131, label %173
    i32 130, label %173
    i32 170, label %177
    i32 140, label %177
    i32 139, label %177
    i32 160, label %177
    i32 134, label %177
    i32 133, label %177
    i32 151, label %177
    i32 129, label %177
    i32 128, label %177
    i32 149, label %177
    i32 152, label %181
    i32 172, label %181
    i32 159, label %181
    i32 163, label %181
    i32 162, label %181
    i32 166, label %181
    i32 169, label %181
    i32 158, label %181
    i32 153, label %181
    i32 148, label %181
    i32 147, label %181
    i32 171, label %181
    i32 142, label %181
    i32 141, label %181
    i32 156, label %181
    i32 154, label %181
    i32 168, label %181
    i32 165, label %181
  ]

9:                                                ; preds = %7
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ZEND_FFI_DCL_STORAGE_CLASS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %9
  %20 = call i32 (...) @get_sym()
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @ZEND_FFI_DCL_TYPEDEF, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %188

26:                                               ; preds = %7
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ZEND_FFI_DCL_STORAGE_CLASS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = call i32 (...) @get_sym()
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @ZEND_FFI_DCL_EXTERN, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %188

43:                                               ; preds = %7
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ZEND_FFI_DCL_STORAGE_CLASS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = call i32 (...) @get_sym()
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @ZEND_FFI_DCL_STATIC, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %188

60:                                               ; preds = %7
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ZEND_FFI_DCL_STORAGE_CLASS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = call i32 (...) @get_sym()
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @ZEND_FFI_DCL_AUTO, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %188

77:                                               ; preds = %7
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ZEND_FFI_DCL_STORAGE_CLASS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %77
  %88 = call i32 (...) @get_sym()
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @ZEND_FFI_DCL_REGISTER, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %188

94:                                               ; preds = %7, %7, %7
  %95 = call i32 (...) @get_sym()
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* @ZEND_FFI_DCL_INLINE, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %188

101:                                              ; preds = %7
  %102 = call i32 (...) @get_sym()
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* @ZEND_FFI_DCL_NO_RETURN, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %188

108:                                              ; preds = %7
  %109 = call i32 (...) @get_sym()
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @YY__LPAREN, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %108
  %117 = call i32 (...) @get_sym()
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @YY___EXTENSION__, align 4
  %120 = call i64 @YY_IN_SET(i32 %118, i32 130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @synpred_1(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 bitcast (%struct.TYPE_11__* @ZEND_FFI_ATTR_INIT to i8*), i64 4, i1 false)
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @parse_type_name(i32 %128, %struct.TYPE_11__* %5)
  store i32 %129, i32* %3, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = call i32 @zend_ffi_align_as_type(%struct.TYPE_11__* %130, %struct.TYPE_11__* %5)
  br label %164

132:                                              ; preds = %122, %116
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @YY__LPAREN, align 4
  %135 = load i32, i32* @YY_OCTNUMBER, align 4
  %136 = load i32, i32* @YY_DECNUMBER, align 4
  %137 = load i32, i32* @YY_HEXNUMBER, align 4
  %138 = load i32, i32* @YY_FLOATNUMBER, align 4
  %139 = load i32, i32* @YY_STRING, align 4
  %140 = load i32, i32* @YY_CHARACTER, align 4
  %141 = load i32, i32* @YY__PLUS_PLUS, align 4
  %142 = load i32, i32* @YY__MINUS_MINUS, align 4
  %143 = load i32, i32* @YY__AND, align 4
  %144 = load i32, i32* @YY__STAR, align 4
  %145 = load i32, i32* @YY__PLUS, align 4
  %146 = load i32, i32* @YY__MINUS, align 4
  %147 = load i32, i32* @YY__TILDE, align 4
  %148 = load i32, i32* @YY__BANG, align 4
  %149 = load i32, i32* @YY_SIZEOF, align 4
  %150 = load i32, i32* @YY__ALIGNOF, align 4
  %151 = load i32, i32* @YY___ALIGNOF, align 4
  %152 = load i32, i32* @YY___ALIGNOF__, align 4
  %153 = call i64 @YY_IN_SET(i32 %133, i32 %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %132
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @parse_constant_expression(i32 %156, i32* %6)
  store i32 %157, i32* %3, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = call i32 @zend_ffi_align_as_val(%struct.TYPE_11__* %158, i32* %6)
  br label %163

160:                                              ; preds = %132
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %160, %155
  br label %164

164:                                              ; preds = %163, %126
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @YY__RPAREN, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %168, %164
  %172 = call i32 (...) @get_sym()
  store i32 %172, i32* %3, align 4
  br label %188

173:                                              ; preds = %7, %7, %7, %7, %7, %7, %7, %7
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = call i32 @parse_attributes(i32 %174, %struct.TYPE_11__* %175)
  store i32 %176, i32* %3, align 4
  br label %188

177:                                              ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %178 = load i32, i32* %3, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = call i32 @parse_type_qualifier(i32 %178, %struct.TYPE_11__* %179)
  store i32 %180, i32* %3, align 4
  br label %188

181:                                              ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %182 = load i32, i32* %3, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = call i32 @parse_type_specifier(i32 %182, %struct.TYPE_11__* %183)
  store i32 %184, i32* %3, align 4
  br label %188

185:                                              ; preds = %7
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %185, %181, %177, %173, %171, %101, %94, %87, %70, %53, %36, %19
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %3, align 4
  %191 = call i64 @YY_IN_SET(i32 %190, i32 165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = load i32, i32* %3, align 4
  %195 = icmp ne i32 %194, 165
  br i1 %195, label %204, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %196, %193
  %205 = phi i1 [ true, %193 ], [ %203, %196 ]
  br label %206

206:                                              ; preds = %204, %189
  %207 = phi i1 [ false, %189 ], [ %205, %204 ]
  br i1 %207, label %7, label %208

208:                                              ; preds = %206
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i64 @YY_IN_SET(i32, i32, i8*) #1

declare dso_local i32 @synpred_1(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_type_name(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @zend_ffi_align_as_type(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @parse_constant_expression(i32, i32*) #1

declare dso_local i32 @zend_ffi_align_as_val(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @parse_attributes(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @parse_type_qualifier(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @parse_type_specifier(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
