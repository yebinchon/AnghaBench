; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformAExprBetween.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformAExprBetween.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@List = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@operator_precedence_warning = common dso_local global i64 0, align 8
@AEXPR_PAREN = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@AEXPR_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@AND_EXPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c">\00", align 1
@OR_EXPR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"unrecognized A_Expr kind: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*)* @transformAExprBetween to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformAExprBetween(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %13 = load i32, i32* @List, align 4
  %14 = load i32, i32* @args, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* @List, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @castNode(i32 %19, i32 %22)
  store i32 %23, i32* @args, align 4
  %24 = load i32, i32* @args, align 4
  %25 = call i32 @list_length(i32 %24)
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* @args, align 4
  %30 = call i64 @linitial(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* @args, align 4
  %33 = call i64 @lsecond(i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %7, align 8
  %35 = load i64, i64* @operator_precedence_warning, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = bitcast %struct.TYPE_3__* %38 to i32*
  %40 = call i32 @operator_precedence_group(i32* %39, i8** %12)
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @emit_precedence_warnings(i32* %41, i32 %42, i8* %43, i32* %44, i32* %45, i32 %48)
  %50 = load i32, i32* @AEXPR_PAREN, align 4
  %51 = load i32, i32* @NIL, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @makeA_Expr(i32 %50, i32 %51, i32* %52, i32* null, i32 -1)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* @AEXPR_PAREN, align 4
  %56 = load i32, i32* @NIL, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @makeA_Expr(i32 %55, i32 %56, i32* %57, i32* null, i32 -1)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* @AEXPR_PAREN, align 4
  %61 = load i32, i32* @NIL, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @makeA_Expr(i32 %60, i32 %61, i32* %62, i32* null, i32 -1)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %7, align 8
  br label %65

65:                                               ; preds = %37, %2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %237 [
    i32 131, label %69
    i32 129, label %93
    i32 130, label %117
    i32 128, label %177
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* @AEXPR_OP, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @makeSimpleA_Expr(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %71, i32* %72, i32 %75)
  %77 = load i32, i32* @AEXPR_OP, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = call i32* @copyObject(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32* @makeSimpleA_Expr(i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %79, i32* %80, i32 %83)
  %85 = call i32 @list_make2(i32* %76, i32* %84)
  store i32 %85, i32* @args, align 4
  %86 = load i32, i32* @AND_EXPR, align 4
  %87 = load i32, i32* @args, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @makeBoolExpr(i32 %86, i32 %87, i32 %90)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %8, align 8
  br label %243

93:                                               ; preds = %65
  %94 = load i32, i32* @AEXPR_OP, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32* @makeSimpleA_Expr(i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %95, i32* %96, i32 %99)
  %101 = load i32, i32* @AEXPR_OP, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = call i32* @copyObject(i32* %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @makeSimpleA_Expr(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %103, i32* %104, i32 %107)
  %109 = call i32 @list_make2(i32* %100, i32* %108)
  store i32 %109, i32* @args, align 4
  %110 = load i32, i32* @OR_EXPR, align 4
  %111 = load i32, i32* @args, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @makeBoolExpr(i32 %110, i32 %111, i32 %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %8, align 8
  br label %243

117:                                              ; preds = %65
  %118 = load i32, i32* @AEXPR_OP, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32* @makeSimpleA_Expr(i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %119, i32* %120, i32 %123)
  %125 = load i32, i32* @AEXPR_OP, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = call i32* @copyObject(i32* %126)
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32* @makeSimpleA_Expr(i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %127, i32* %128, i32 %131)
  %133 = call i32 @list_make2(i32* %124, i32* %132)
  store i32 %133, i32* @args, align 4
  %134 = load i32, i32* @AND_EXPR, align 4
  %135 = load i32, i32* @args, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @makeBoolExpr(i32 %134, i32 %135, i32 %138)
  %140 = inttoptr i64 %139 to i32*
  store i32* %140, i32** %9, align 8
  %141 = load i32, i32* @AEXPR_OP, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = call i32* @copyObject(i32* %142)
  %144 = load i32*, i32** %7, align 8
  %145 = call i32* @copyObject(i32* %144)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32* @makeSimpleA_Expr(i32 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %143, i32* %145, i32 %148)
  %150 = load i32, i32* @AEXPR_OP, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = call i32* @copyObject(i32* %151)
  %153 = load i32*, i32** %6, align 8
  %154 = call i32* @copyObject(i32* %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32* @makeSimpleA_Expr(i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %152, i32* %154, i32 %157)
  %159 = call i32 @list_make2(i32* %149, i32* %158)
  store i32 %159, i32* @args, align 4
  %160 = load i32, i32* @AND_EXPR, align 4
  %161 = load i32, i32* @args, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @makeBoolExpr(i32 %160, i32 %161, i32 %164)
  %166 = inttoptr i64 %165 to i32*
  store i32* %166, i32** %10, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @list_make2(i32* %167, i32* %168)
  store i32 %169, i32* @args, align 4
  %170 = load i32, i32* @OR_EXPR, align 4
  %171 = load i32, i32* @args, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @makeBoolExpr(i32 %170, i32 %171, i32 %174)
  %176 = inttoptr i64 %175 to i32*
  store i32* %176, i32** %8, align 8
  br label %243

177:                                              ; preds = %65
  %178 = load i32, i32* @AEXPR_OP, align 4
  %179 = load i32*, i32** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32* @makeSimpleA_Expr(i32 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %179, i32* %180, i32 %183)
  %185 = load i32, i32* @AEXPR_OP, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = call i32* @copyObject(i32* %186)
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32* @makeSimpleA_Expr(i32 %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %187, i32* %188, i32 %191)
  %193 = call i32 @list_make2(i32* %184, i32* %192)
  store i32 %193, i32* @args, align 4
  %194 = load i32, i32* @OR_EXPR, align 4
  %195 = load i32, i32* @args, align 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @makeBoolExpr(i32 %194, i32 %195, i32 %198)
  %200 = inttoptr i64 %199 to i32*
  store i32* %200, i32** %9, align 8
  %201 = load i32, i32* @AEXPR_OP, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = call i32* @copyObject(i32* %202)
  %204 = load i32*, i32** %7, align 8
  %205 = call i32* @copyObject(i32* %204)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32* @makeSimpleA_Expr(i32 %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %203, i32* %205, i32 %208)
  %210 = load i32, i32* @AEXPR_OP, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = call i32* @copyObject(i32* %211)
  %213 = load i32*, i32** %6, align 8
  %214 = call i32* @copyObject(i32* %213)
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32* @makeSimpleA_Expr(i32 %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %212, i32* %214, i32 %217)
  %219 = call i32 @list_make2(i32* %209, i32* %218)
  store i32 %219, i32* @args, align 4
  %220 = load i32, i32* @OR_EXPR, align 4
  %221 = load i32, i32* @args, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @makeBoolExpr(i32 %220, i32 %221, i32 %224)
  %226 = inttoptr i64 %225 to i32*
  store i32* %226, i32** %10, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = call i32 @list_make2(i32* %227, i32* %228)
  store i32 %229, i32* @args, align 4
  %230 = load i32, i32* @AND_EXPR, align 4
  %231 = load i32, i32* @args, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @makeBoolExpr(i32 %230, i32 %231, i32 %234)
  %236 = inttoptr i64 %235 to i32*
  store i32* %236, i32** %8, align 8
  br label %243

237:                                              ; preds = %65
  %238 = load i32, i32* @ERROR, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @elog(i32 %238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  store i32* null, i32** %8, align 8
  br label %243

243:                                              ; preds = %237, %177, %117, %93, %69
  %244 = load i32*, i32** %3, align 8
  %245 = load i32*, i32** %8, align 8
  %246 = call i32* @transformExprRecurse(i32* %244, i32* %245)
  ret i32* %246
}

declare dso_local i32 @castNode(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i64 @lsecond(i32) #1

declare dso_local i32 @operator_precedence_group(i32*, i8**) #1

declare dso_local i32 @emit_precedence_warnings(i32*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i64 @makeA_Expr(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @list_make2(i32*, i32*) #1

declare dso_local i32* @makeSimpleA_Expr(i32, i8*, i32*, i32*, i32) #1

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i64 @makeBoolExpr(i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @transformExprRecurse(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
