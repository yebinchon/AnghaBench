; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_next_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i64, i32, i64 }

@tEOF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@tNumericLiteral = common dso_local global i32 0, align 4
@EXPR_LESS = common dso_local global i32 0, align 4
@tRelOper = common dso_local global i32 0, align 4
@EXPR_LESSEQ = common dso_local global i32 0, align 4
@EXPR_ASSIGNLSHIFT = common dso_local global i32 0, align 4
@tAssignOper = common dso_local global i32 0, align 4
@EXPR_LSHIFT = common dso_local global i32 0, align 4
@tShiftOper = common dso_local global i32 0, align 4
@EXPR_GREATER = common dso_local global i32 0, align 4
@EXPR_GREATEREQ = common dso_local global i32 0, align 4
@EXPR_ASSIGNRSHIFT = common dso_local global i32 0, align 4
@EXPR_ASSIGNRRSHIFT = common dso_local global i32 0, align 4
@EXPR_RRSHIFT = common dso_local global i32 0, align 4
@EXPR_RSHIFT = common dso_local global i32 0, align 4
@tINC = common dso_local global i32 0, align 4
@EXPR_ASSIGNADD = common dso_local global i32 0, align 4
@tHTMLCOMMENT = common dso_local global i32 0, align 4
@tDEC = common dso_local global i32 0, align 4
@EXPR_ASSIGNSUB = common dso_local global i32 0, align 4
@EXPR_ASSIGNMUL = common dso_local global i32 0, align 4
@EXPR_ASSIGNMOD = common dso_local global i32 0, align 4
@EXPR_ASSIGNAND = common dso_local global i32 0, align 4
@tANDAND = common dso_local global i32 0, align 4
@EXPR_ASSIGNOR = common dso_local global i32 0, align 4
@tOROR = common dso_local global i32 0, align 4
@EXPR_ASSIGNXOR = common dso_local global i32 0, align 4
@EXPR_NOTEQEQ = common dso_local global i32 0, align 4
@tEqOper = common dso_local global i32 0, align 4
@EXPR_NOTEQ = common dso_local global i32 0, align 4
@EXPR_EQEQ = common dso_local global i32 0, align 4
@EXPR_EQ = common dso_local global i32 0, align 4
@EXPR_ASSIGNDIV = common dso_local global i32 0, align 4
@kDIVEQ = common dso_local global i32 0, align 4
@kDCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unexpected char '%c' %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_token(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call i32 @skip_spaces(%struct.TYPE_12__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @tEOF, align 4
  store i32 %15, i32* %3, align 4
  br label %700

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i64 @skip_comment(%struct.TYPE_12__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i64 @skip_html_comment(%struct.TYPE_12__* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  br i1 %26, label %10, label %27

27:                                               ; preds = %25
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 59, i32* %3, align 4
  br label %700

38:                                               ; preds = %32
  %39 = load i64, i64* @FALSE, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @iswalpha(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @check_keywords(%struct.TYPE_12__* %50, i8* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %700

57:                                               ; preds = %49
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @parse_identifier(%struct.TYPE_12__* %58, i8* %59)
  store i32 %60, i32* %3, align 4
  br label %700

61:                                               ; preds = %42
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @iswdigit(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = call i32 @parse_numeric_literal(%struct.TYPE_12__* %69, double* %7)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %700

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = load double, double* %7, align 8
  %76 = call i32* @new_double_literal(%struct.TYPE_12__* %74, double %75)
  %77 = load i8*, i8** %5, align 8
  %78 = bitcast i8* %77 to i32**
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* @tNumericLiteral, align 4
  store i32 %79, i32* %3, align 4
  br label %700

80:                                               ; preds = %61
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %688 [
    i32 123, label %85
    i32 40, label %85
    i32 41, label %85
    i32 91, label %85
    i32 93, label %85
    i32 59, label %85
    i32 44, label %85
    i32 126, label %85
    i32 63, label %85
    i32 125, label %91
    i32 46, label %98
    i32 60, label %141
    i32 62, label %203
    i32 43, label %301
    i32 45, label %335
    i32 42, label %399
    i32 37, label %424
    i32 38, label %449
    i32 124, label %480
    i32 94, label %511
    i32 33, label %536
    i32 61, label %581
    i32 47, label %626
    i32 58, label %652
    i32 34, label %674
    i32 39, label %674
    i32 95, label %683
    i32 36, label %683
    i32 64, label %687
  ]

85:                                               ; preds = %80, %80, %80, %80, %80, %80, %80, %80, %80
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %87, align 8
  %90 = load i32, i32* %88, align 4
  store i32 %90, i32* %3, align 4
  br label %700

91:                                               ; preds = %80
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %93, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = bitcast i8* %96 to i32**
  store i32* %94, i32** %97, align 8
  store i32 125, i32* %3, align 4
  br label %700

98:                                               ; preds = %80
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ult i32* %102, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %98
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @iswdigit(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %107
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @parse_decimal(i32** %117, i32* %120, double* %8)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @FAILED(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @lex_error(%struct.TYPE_12__* %126, i32 %127)
  store i32 -1, i32* %3, align 4
  br label %700

129:                                              ; preds = %115
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = load double, double* %8, align 8
  %132 = call i32* @new_double_literal(%struct.TYPE_12__* %130, double %131)
  %133 = load i8*, i8** %5, align 8
  %134 = bitcast i8* %133 to i32**
  store i32* %132, i32** %134, align 8
  %135 = load i32, i32* @tNumericLiteral, align 4
  store i32 %135, i32* %3, align 4
  br label %700

136:                                              ; preds = %107, %98
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %138, align 8
  store i32 46, i32* %3, align 4
  br label %700

141:                                              ; preds = %80
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %143, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %145, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load i32, i32* @EXPR_LESS, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = bitcast i8* %152 to i32*
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @tRelOper, align 4
  store i32 %154, i32* %3, align 4
  br label %700

155:                                              ; preds = %141
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %198 [
    i32 61, label %160
    i32 60, label %169
  ]

160:                                              ; preds = %155
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %162, align 8
  %165 = load i32, i32* @EXPR_LESSEQ, align 4
  %166 = load i8*, i8** %5, align 8
  %167 = bitcast i8* %166 to i32*
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @tRelOper, align 4
  store i32 %168, i32* %3, align 4
  br label %700

169:                                              ; preds = %155
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %171, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ult i32* %173, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %169
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 61
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %186, align 8
  %189 = load i32, i32* @EXPR_ASSIGNLSHIFT, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = bitcast i8* %190 to i32*
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @tAssignOper, align 4
  store i32 %192, i32* %3, align 4
  br label %700

193:                                              ; preds = %178, %169
  %194 = load i32, i32* @EXPR_LSHIFT, align 4
  %195 = load i8*, i8** %5, align 8
  %196 = bitcast i8* %195 to i32*
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @tShiftOper, align 4
  store i32 %197, i32* %3, align 4
  br label %700

198:                                              ; preds = %155
  %199 = load i32, i32* @EXPR_LESS, align 4
  %200 = load i8*, i8** %5, align 8
  %201 = bitcast i8* %200 to i32*
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @tRelOper, align 4
  store i32 %202, i32* %3, align 4
  br label %700

203:                                              ; preds = %80
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %205, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = icmp eq i32* %207, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %203
  %213 = load i32, i32* @EXPR_GREATER, align 4
  %214 = load i8*, i8** %5, align 8
  %215 = bitcast i8* %214 to i32*
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @tRelOper, align 4
  store i32 %216, i32* %3, align 4
  br label %700

217:                                              ; preds = %203
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %220, align 4
  switch i32 %221, label %296 [
    i32 61, label %222
    i32 62, label %231
  ]

222:                                              ; preds = %217
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %224, align 8
  %227 = load i32, i32* @EXPR_GREATEREQ, align 4
  %228 = load i8*, i8** %5, align 8
  %229 = bitcast i8* %228 to i32*
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @tRelOper, align 4
  store i32 %230, i32* %3, align 4
  br label %700

231:                                              ; preds = %217
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %233, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ult i32* %235, %238
  br i1 %239, label %240, label %291

240:                                              ; preds = %231
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 61
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %248, align 8
  %251 = load i32, i32* @EXPR_ASSIGNRSHIFT, align 4
  %252 = load i8*, i8** %5, align 8
  %253 = bitcast i8* %252 to i32*
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @tAssignOper, align 4
  store i32 %254, i32* %3, align 4
  br label %700

255:                                              ; preds = %240
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 62
  br i1 %260, label %261, label %290

261:                                              ; preds = %255
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %263, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ult i32* %265, %268
  br i1 %269, label %270, label %285

270:                                              ; preds = %261
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 61
  br i1 %275, label %276, label %285

276:                                              ; preds = %270
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %278, align 8
  %281 = load i32, i32* @EXPR_ASSIGNRRSHIFT, align 4
  %282 = load i8*, i8** %5, align 8
  %283 = bitcast i8* %282 to i32*
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* @tAssignOper, align 4
  store i32 %284, i32* %3, align 4
  br label %700

285:                                              ; preds = %270, %261
  %286 = load i32, i32* @EXPR_RRSHIFT, align 4
  %287 = load i8*, i8** %5, align 8
  %288 = bitcast i8* %287 to i32*
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* @tRelOper, align 4
  store i32 %289, i32* %3, align 4
  br label %700

290:                                              ; preds = %255
  br label %291

291:                                              ; preds = %290, %231
  %292 = load i32, i32* @EXPR_RSHIFT, align 4
  %293 = load i8*, i8** %5, align 8
  %294 = bitcast i8* %293 to i32*
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* @tShiftOper, align 4
  store i32 %295, i32* %3, align 4
  br label %700

296:                                              ; preds = %217
  %297 = load i32, i32* @EXPR_GREATER, align 4
  %298 = load i8*, i8** %5, align 8
  %299 = bitcast i8* %298 to i32*
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* @tRelOper, align 4
  store i32 %300, i32* %3, align 4
  br label %700

301:                                              ; preds = %80
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %303, align 8
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ult i32* %308, %311
  br i1 %312, label %313, label %334

313:                                              ; preds = %301
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %316, align 4
  switch i32 %317, label %333 [
    i32 43, label %318
    i32 61, label %324
  ]

318:                                              ; preds = %313
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i32 1
  store i32* %322, i32** %320, align 8
  %323 = load i32, i32* @tINC, align 4
  store i32 %323, i32* %3, align 4
  br label %700

324:                                              ; preds = %313
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %326, align 8
  %329 = load i32, i32* @EXPR_ASSIGNADD, align 4
  %330 = load i8*, i8** %5, align 8
  %331 = bitcast i8* %330 to i32*
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* @tAssignOper, align 4
  store i32 %332, i32* %3, align 4
  br label %700

333:                                              ; preds = %313
  br label %334

334:                                              ; preds = %333, %301
  store i32 43, i32* %3, align 4
  br label %700

335:                                              ; preds = %80
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i32 1
  store i32* %339, i32** %337, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = icmp ult i32* %342, %345
  br i1 %346, label %347, label %398

347:                                              ; preds = %335
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %350, align 4
  switch i32 %351, label %397 [
    i32 45, label %352
    i32 61, label %388
  ]

352:                                              ; preds = %347
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i32 1
  store i32* %356, i32** %354, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %386

361:                                              ; preds = %352
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %386

366:                                              ; preds = %361
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = icmp ult i32* %369, %372
  br i1 %373, label %374, label %386

374:                                              ; preds = %366
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 62
  br i1 %379, label %380, label %386

380:                                              ; preds = %374
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i32 1
  store i32* %384, i32** %382, align 8
  %385 = load i32, i32* @tHTMLCOMMENT, align 4
  store i32 %385, i32* %3, align 4
  br label %700

386:                                              ; preds = %374, %366, %361, %352
  %387 = load i32, i32* @tDEC, align 4
  store i32 %387, i32* %3, align 4
  br label %700

388:                                              ; preds = %347
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i32 1
  store i32* %392, i32** %390, align 8
  %393 = load i32, i32* @EXPR_ASSIGNSUB, align 4
  %394 = load i8*, i8** %5, align 8
  %395 = bitcast i8* %394 to i32*
  store i32 %393, i32* %395, align 4
  %396 = load i32, i32* @tAssignOper, align 4
  store i32 %396, i32* %3, align 4
  br label %700

397:                                              ; preds = %347
  br label %398

398:                                              ; preds = %397, %335
  store i32 45, i32* %3, align 4
  br label %700

399:                                              ; preds = %80
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i32 1
  store i32* %403, i32** %401, align 8
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = icmp ult i32* %403, %406
  br i1 %407, label %408, label %423

408:                                              ; preds = %399
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %411, align 4
  %413 = icmp eq i32 %412, 61
  br i1 %413, label %414, label %423

414:                                              ; preds = %408
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i32 1
  store i32* %418, i32** %416, align 8
  %419 = load i32, i32* @EXPR_ASSIGNMUL, align 4
  %420 = load i8*, i8** %5, align 8
  %421 = bitcast i8* %420 to i32*
  store i32 %419, i32* %421, align 4
  %422 = load i32, i32* @tAssignOper, align 4
  store i32 %422, i32* %3, align 4
  br label %700

423:                                              ; preds = %408, %399
  store i32 42, i32* %3, align 4
  br label %700

424:                                              ; preds = %80
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i32 1
  store i32* %428, i32** %426, align 8
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = icmp ult i32* %428, %431
  br i1 %432, label %433, label %448

433:                                              ; preds = %424
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, 61
  br i1 %438, label %439, label %448

439:                                              ; preds = %433
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 0
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i32 1
  store i32* %443, i32** %441, align 8
  %444 = load i32, i32* @EXPR_ASSIGNMOD, align 4
  %445 = load i8*, i8** %5, align 8
  %446 = bitcast i8* %445 to i32*
  store i32 %444, i32* %446, align 4
  %447 = load i32, i32* @tAssignOper, align 4
  store i32 %447, i32* %3, align 4
  br label %700

448:                                              ; preds = %433, %424
  store i32 37, i32* %3, align 4
  br label %700

449:                                              ; preds = %80
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i32 1
  store i32* %453, i32** %451, align 8
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 1
  %456 = load i32*, i32** %455, align 8
  %457 = icmp ult i32* %453, %456
  br i1 %457, label %458, label %479

458:                                              ; preds = %449
  %459 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 0
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %461, align 4
  switch i32 %462, label %478 [
    i32 61, label %463
    i32 38, label %472
  ]

463:                                              ; preds = %458
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 0
  %466 = load i32*, i32** %465, align 8
  %467 = getelementptr inbounds i32, i32* %466, i32 1
  store i32* %467, i32** %465, align 8
  %468 = load i32, i32* @EXPR_ASSIGNAND, align 4
  %469 = load i8*, i8** %5, align 8
  %470 = bitcast i8* %469 to i32*
  store i32 %468, i32* %470, align 4
  %471 = load i32, i32* @tAssignOper, align 4
  store i32 %471, i32* %3, align 4
  br label %700

472:                                              ; preds = %458
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i32 1
  store i32* %476, i32** %474, align 8
  %477 = load i32, i32* @tANDAND, align 4
  store i32 %477, i32* %3, align 4
  br label %700

478:                                              ; preds = %458
  br label %479

479:                                              ; preds = %478, %449
  store i32 38, i32* %3, align 4
  br label %700

480:                                              ; preds = %80
  %481 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 0
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i32 1
  store i32* %484, i32** %482, align 8
  %485 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 1
  %487 = load i32*, i32** %486, align 8
  %488 = icmp ult i32* %484, %487
  br i1 %488, label %489, label %510

489:                                              ; preds = %480
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 0
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %492, align 4
  switch i32 %493, label %509 [
    i32 61, label %494
    i32 124, label %503
  ]

494:                                              ; preds = %489
  %495 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %495, i32 0, i32 0
  %497 = load i32*, i32** %496, align 8
  %498 = getelementptr inbounds i32, i32* %497, i32 1
  store i32* %498, i32** %496, align 8
  %499 = load i32, i32* @EXPR_ASSIGNOR, align 4
  %500 = load i8*, i8** %5, align 8
  %501 = bitcast i8* %500 to i32*
  store i32 %499, i32* %501, align 4
  %502 = load i32, i32* @tAssignOper, align 4
  store i32 %502, i32* %3, align 4
  br label %700

503:                                              ; preds = %489
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 0
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i32 1
  store i32* %507, i32** %505, align 8
  %508 = load i32, i32* @tOROR, align 4
  store i32 %508, i32* %3, align 4
  br label %700

509:                                              ; preds = %489
  br label %510

510:                                              ; preds = %509, %480
  store i32 124, i32* %3, align 4
  br label %700

511:                                              ; preds = %80
  %512 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %512, i32 0, i32 0
  %514 = load i32*, i32** %513, align 8
  %515 = getelementptr inbounds i32, i32* %514, i32 1
  store i32* %515, i32** %513, align 8
  %516 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 1
  %518 = load i32*, i32** %517, align 8
  %519 = icmp ult i32* %515, %518
  br i1 %519, label %520, label %535

520:                                              ; preds = %511
  %521 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %521, i32 0, i32 0
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %523, align 4
  %525 = icmp eq i32 %524, 61
  br i1 %525, label %526, label %535

526:                                              ; preds = %520
  %527 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 0
  %529 = load i32*, i32** %528, align 8
  %530 = getelementptr inbounds i32, i32* %529, i32 1
  store i32* %530, i32** %528, align 8
  %531 = load i32, i32* @EXPR_ASSIGNXOR, align 4
  %532 = load i8*, i8** %5, align 8
  %533 = bitcast i8* %532 to i32*
  store i32 %531, i32* %533, align 4
  %534 = load i32, i32* @tAssignOper, align 4
  store i32 %534, i32* %3, align 4
  br label %700

535:                                              ; preds = %520, %511
  store i32 94, i32* %3, align 4
  br label %700

536:                                              ; preds = %80
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 0
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i32 1
  store i32* %540, i32** %538, align 8
  %541 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %541, i32 0, i32 1
  %543 = load i32*, i32** %542, align 8
  %544 = icmp ult i32* %540, %543
  br i1 %544, label %545, label %580

545:                                              ; preds = %536
  %546 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %547 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %546, i32 0, i32 0
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 61
  br i1 %550, label %551, label %580

551:                                              ; preds = %545
  %552 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %552, i32 0, i32 0
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i32 1
  store i32* %555, i32** %553, align 8
  %556 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %556, i32 0, i32 1
  %558 = load i32*, i32** %557, align 8
  %559 = icmp ult i32* %555, %558
  br i1 %559, label %560, label %575

560:                                              ; preds = %551
  %561 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 0
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %563, align 4
  %565 = icmp eq i32 %564, 61
  br i1 %565, label %566, label %575

566:                                              ; preds = %560
  %567 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %568 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %567, i32 0, i32 0
  %569 = load i32*, i32** %568, align 8
  %570 = getelementptr inbounds i32, i32* %569, i32 1
  store i32* %570, i32** %568, align 8
  %571 = load i32, i32* @EXPR_NOTEQEQ, align 4
  %572 = load i8*, i8** %5, align 8
  %573 = bitcast i8* %572 to i32*
  store i32 %571, i32* %573, align 4
  %574 = load i32, i32* @tEqOper, align 4
  store i32 %574, i32* %3, align 4
  br label %700

575:                                              ; preds = %560, %551
  %576 = load i32, i32* @EXPR_NOTEQ, align 4
  %577 = load i8*, i8** %5, align 8
  %578 = bitcast i8* %577 to i32*
  store i32 %576, i32* %578, align 4
  %579 = load i32, i32* @tEqOper, align 4
  store i32 %579, i32* %3, align 4
  br label %700

580:                                              ; preds = %545, %536
  store i32 33, i32* %3, align 4
  br label %700

581:                                              ; preds = %80
  %582 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %582, i32 0, i32 0
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i32 1
  store i32* %585, i32** %583, align 8
  %586 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %587 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %586, i32 0, i32 1
  %588 = load i32*, i32** %587, align 8
  %589 = icmp ult i32* %585, %588
  br i1 %589, label %590, label %625

590:                                              ; preds = %581
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 0
  %593 = load i32*, i32** %592, align 8
  %594 = load i32, i32* %593, align 4
  %595 = icmp eq i32 %594, 61
  br i1 %595, label %596, label %625

596:                                              ; preds = %590
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 0
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds i32, i32* %599, i32 1
  store i32* %600, i32** %598, align 8
  %601 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %601, i32 0, i32 1
  %603 = load i32*, i32** %602, align 8
  %604 = icmp ult i32* %600, %603
  br i1 %604, label %605, label %620

605:                                              ; preds = %596
  %606 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 0
  %608 = load i32*, i32** %607, align 8
  %609 = load i32, i32* %608, align 4
  %610 = icmp eq i32 %609, 61
  br i1 %610, label %611, label %620

611:                                              ; preds = %605
  %612 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 0
  %614 = load i32*, i32** %613, align 8
  %615 = getelementptr inbounds i32, i32* %614, i32 1
  store i32* %615, i32** %613, align 8
  %616 = load i32, i32* @EXPR_EQEQ, align 4
  %617 = load i8*, i8** %5, align 8
  %618 = bitcast i8* %617 to i32*
  store i32 %616, i32* %618, align 4
  %619 = load i32, i32* @tEqOper, align 4
  store i32 %619, i32* %3, align 4
  br label %700

620:                                              ; preds = %605, %596
  %621 = load i32, i32* @EXPR_EQ, align 4
  %622 = load i8*, i8** %5, align 8
  %623 = bitcast i8* %622 to i32*
  store i32 %621, i32* %623, align 4
  %624 = load i32, i32* @tEqOper, align 4
  store i32 %624, i32* %3, align 4
  br label %700

625:                                              ; preds = %590, %581
  store i32 61, i32* %3, align 4
  br label %700

626:                                              ; preds = %80
  %627 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %628 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %627, i32 0, i32 0
  %629 = load i32*, i32** %628, align 8
  %630 = getelementptr inbounds i32, i32* %629, i32 1
  store i32* %630, i32** %628, align 8
  %631 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %632 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %631, i32 0, i32 1
  %633 = load i32*, i32** %632, align 8
  %634 = icmp ult i32* %630, %633
  br i1 %634, label %635, label %651

635:                                              ; preds = %626
  %636 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %637 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %636, i32 0, i32 0
  %638 = load i32*, i32** %637, align 8
  %639 = load i32, i32* %638, align 4
  %640 = icmp eq i32 %639, 61
  br i1 %640, label %641, label %650

641:                                              ; preds = %635
  %642 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %643 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %642, i32 0, i32 0
  %644 = load i32*, i32** %643, align 8
  %645 = getelementptr inbounds i32, i32* %644, i32 1
  store i32* %645, i32** %643, align 8
  %646 = load i32, i32* @EXPR_ASSIGNDIV, align 4
  %647 = load i8*, i8** %5, align 8
  %648 = bitcast i8* %647 to i32*
  store i32 %646, i32* %648, align 4
  %649 = load i32, i32* @kDIVEQ, align 4
  store i32 %649, i32* %3, align 4
  br label %700

650:                                              ; preds = %635
  br label %651

651:                                              ; preds = %650, %626
  store i32 47, i32* %3, align 4
  br label %700

652:                                              ; preds = %80
  %653 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %654 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %653, i32 0, i32 0
  %655 = load i32*, i32** %654, align 8
  %656 = getelementptr inbounds i32, i32* %655, i32 1
  store i32* %656, i32** %654, align 8
  %657 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %658 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %657, i32 0, i32 1
  %659 = load i32*, i32** %658, align 8
  %660 = icmp ult i32* %656, %659
  br i1 %660, label %661, label %673

661:                                              ; preds = %652
  %662 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %663 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %662, i32 0, i32 0
  %664 = load i32*, i32** %663, align 8
  %665 = load i32, i32* %664, align 4
  %666 = icmp eq i32 %665, 58
  br i1 %666, label %667, label %673

667:                                              ; preds = %661
  %668 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %669 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %668, i32 0, i32 0
  %670 = load i32*, i32** %669, align 8
  %671 = getelementptr inbounds i32, i32* %670, i32 1
  store i32* %671, i32** %669, align 8
  %672 = load i32, i32* @kDCOL, align 4
  store i32 %672, i32* %3, align 4
  br label %700

673:                                              ; preds = %661, %652
  store i32 58, i32* %3, align 4
  br label %700

674:                                              ; preds = %80, %80
  %675 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %676 = load i8*, i8** %5, align 8
  %677 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %678 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %677, i32 0, i32 0
  %679 = load i32*, i32** %678, align 8
  %680 = load i32, i32* %679, align 4
  %681 = trunc i32 %680 to i8
  %682 = call i32 @parse_string_literal(%struct.TYPE_12__* %675, i8* %676, i8 signext %681)
  store i32 %682, i32* %3, align 4
  br label %700

683:                                              ; preds = %80, %80
  %684 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %685 = load i8*, i8** %5, align 8
  %686 = call i32 @parse_identifier(%struct.TYPE_12__* %684, i8* %685)
  store i32 %686, i32* %3, align 4
  br label %700

687:                                              ; preds = %80
  store i32 64, i32* %3, align 4
  br label %700

688:                                              ; preds = %80
  %689 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %690 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %689, i32 0, i32 0
  %691 = load i32*, i32** %690, align 8
  %692 = load i32, i32* %691, align 4
  %693 = trunc i32 %692 to i8
  %694 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %695 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %694, i32 0, i32 0
  %696 = load i32*, i32** %695, align 8
  %697 = load i32, i32* %696, align 4
  %698 = trunc i32 %697 to i8
  %699 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %693, i8 signext %698)
  store i32 0, i32* %3, align 4
  br label %700

700:                                              ; preds = %688, %687, %683, %674, %673, %667, %651, %641, %625, %620, %611, %580, %575, %566, %535, %526, %510, %503, %494, %479, %472, %463, %448, %439, %423, %414, %398, %388, %386, %380, %334, %324, %318, %296, %291, %285, %276, %246, %222, %212, %198, %193, %184, %160, %150, %136, %129, %125, %91, %85, %73, %72, %57, %55, %37, %14
  %701 = load i32, i32* %3, align 4
  ret i32 %701
}

declare dso_local i32 @skip_spaces(%struct.TYPE_12__*) #1

declare dso_local i64 @skip_comment(%struct.TYPE_12__*) #1

declare dso_local i64 @skip_html_comment(%struct.TYPE_12__*) #1

declare dso_local i64 @iswalpha(i32) #1

declare dso_local i32 @check_keywords(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @parse_identifier(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @iswdigit(i32) #1

declare dso_local i32 @parse_numeric_literal(%struct.TYPE_12__*, double*) #1

declare dso_local i32* @new_double_literal(%struct.TYPE_12__*, double) #1

declare dso_local i32 @parse_decimal(i32**, i32*, double*) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @lex_error(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @parse_string_literal(%struct.TYPE_12__*, i8*, i8 signext) #1

declare dso_local i32 @WARN(i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
