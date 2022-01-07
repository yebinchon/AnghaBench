; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformExprRecurse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformExprRecurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32*, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized A_Expr kind: %d\00", align 1
@operator_precedence_warning = common dso_local global i32 0, align 4
@PREC_GROUP_POSTFIX_IS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"DEFAULT is not allowed in this context\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @transformExprRecurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformExprRecurse(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %231

15:                                               ; preds = %2
  %16 = call i32 (...) @check_stack_depth()
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @nodeTag(i32* %17)
  switch i32 %18, label %224 [
    i32 144, label %19
    i32 136, label %23
    i32 153, label %27
    i32 151, label %39
    i32 154, label %43
    i32 131, label %49
    i32 145, label %53
    i32 152, label %57
    i32 150, label %112
    i32 142, label %116
    i32 139, label %120
    i32 141, label %124
    i32 138, label %128
    i32 132, label %139
    i32 148, label %143
    i32 135, label %147
    i32 146, label %151
    i32 140, label %155
    i32 134, label %159
    i32 129, label %163
    i32 128, label %167
    i32 137, label %171
    i32 149, label %202
    i32 143, label %206
    i32 133, label %210
    i32 147, label %222
    i32 130, label %222
  ]

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @transformColumnRef(i32* %20, i32* %21)
  store i32* %22, i32** %6, align 8
  br label %229

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @transformParamRef(i32* %24, i32* %25)
  store i32* %26, i32** %6, align 8
  br label %229

27:                                               ; preds = %15
  %28 = load i32*, i32** %5, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %7, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @make_const(i32* %32, i32* %33, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %6, align 8
  br label %229

39:                                               ; preds = %15
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @transformIndirection(i32* %40, i32* %41)
  store i32* %42, i32** %6, align 8
  br label %229

43:                                               ; preds = %15
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @InvalidOid, align 4
  %47 = load i32, i32* @InvalidOid, align 4
  %48 = call i32* @transformArrayExpr(i32* %44, i32* %45, i32 %46, i32 %47, i32 -1)
  store i32* %48, i32** %6, align 8
  br label %229

49:                                               ; preds = %15
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @transformTypeCast(i32* %50, i32* %51)
  store i32* %52, i32** %6, align 8
  br label %229

53:                                               ; preds = %15
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32* @transformCollateClause(i32* %54, i32* %55)
  store i32* %56, i32** %6, align 8
  br label %229

57:                                               ; preds = %15
  %58 = load i32*, i32** %5, align 8
  %59 = bitcast i32* %58 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %9, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %105 [
    i32 159, label %63
    i32 157, label %67
    i32 158, label %71
    i32 168, label %75
    i32 162, label %75
    i32 161, label %79
    i32 160, label %83
    i32 166, label %87
    i32 165, label %91
    i32 167, label %91
    i32 155, label %91
    i32 170, label %95
    i32 164, label %95
    i32 169, label %95
    i32 163, label %95
    i32 156, label %99
  ]

63:                                               ; preds = %57
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = call i32* @transformAExprOp(i32* %64, %struct.TYPE_17__* %65)
  store i32* %66, i32** %6, align 8
  br label %111

67:                                               ; preds = %57
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = call i32* @transformAExprOpAny(i32* %68, %struct.TYPE_17__* %69)
  store i32* %70, i32** %6, align 8
  br label %111

71:                                               ; preds = %57
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = call i32* @transformAExprOpAll(i32* %72, %struct.TYPE_17__* %73)
  store i32* %74, i32** %6, align 8
  br label %111

75:                                               ; preds = %57, %57
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = call i32* @transformAExprDistinct(i32* %76, %struct.TYPE_17__* %77)
  store i32* %78, i32** %6, align 8
  br label %111

79:                                               ; preds = %57
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = call i32* @transformAExprNullIf(i32* %80, %struct.TYPE_17__* %81)
  store i32* %82, i32** %6, align 8
  br label %111

83:                                               ; preds = %57
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = call i32* @transformAExprOf(i32* %84, %struct.TYPE_17__* %85)
  store i32* %86, i32** %6, align 8
  br label %111

87:                                               ; preds = %57
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %90 = call i32* @transformAExprIn(i32* %88, %struct.TYPE_17__* %89)
  store i32* %90, i32** %6, align 8
  br label %111

91:                                               ; preds = %57, %57, %57
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = call i32* @transformAExprOp(i32* %92, %struct.TYPE_17__* %93)
  store i32* %94, i32** %6, align 8
  br label %111

95:                                               ; preds = %57, %57, %57, %57
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %98 = call i32* @transformAExprBetween(i32* %96, %struct.TYPE_17__* %97)
  store i32* %98, i32** %6, align 8
  br label %111

99:                                               ; preds = %57
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32* @transformExprRecurse(i32* %100, i32* %103)
  store i32* %104, i32** %6, align 8
  br label %111

105:                                              ; preds = %57
  %106 = load i32, i32* @ERROR, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @elog(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %109)
  store i32* null, i32** %6, align 8
  br label %111

111:                                              ; preds = %105, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63
  br label %229

112:                                              ; preds = %15
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = call i32* @transformBoolExpr(i32* %113, i32* %114)
  store i32* %115, i32** %6, align 8
  br label %229

116:                                              ; preds = %15
  %117 = load i32*, i32** %4, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i32* @transformFuncCall(i32* %117, i32* %118)
  store i32* %119, i32** %6, align 8
  br label %229

120:                                              ; preds = %15
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i32* @transformMultiAssignRef(i32* %121, i32* %122)
  store i32* %123, i32** %6, align 8
  br label %229

124:                                              ; preds = %15
  %125 = load i32*, i32** %4, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i32* @transformGroupingFunc(i32* %125, i32* %126)
  store i32* %127, i32** %6, align 8
  br label %229

128:                                              ; preds = %15
  %129 = load i32*, i32** %5, align 8
  %130 = bitcast i32* %129 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %10, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32* @transformExprRecurse(i32* %131, i32* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  %138 = load i32*, i32** %5, align 8
  store i32* %138, i32** %6, align 8
  br label %229

139:                                              ; preds = %15
  %140 = load i32*, i32** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i32* @transformSubLink(i32* %140, i32* %141)
  store i32* %142, i32** %6, align 8
  br label %229

143:                                              ; preds = %15
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32* @transformCaseExpr(i32* %144, i32* %145)
  store i32* %146, i32** %6, align 8
  br label %229

147:                                              ; preds = %15
  %148 = load i32*, i32** %4, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = call i32* @transformRowExpr(i32* %148, i32* %149, i32 0)
  store i32* %150, i32** %6, align 8
  br label %229

151:                                              ; preds = %15
  %152 = load i32*, i32** %4, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = call i32* @transformCoalesceExpr(i32* %152, i32* %153)
  store i32* %154, i32** %6, align 8
  br label %229

155:                                              ; preds = %15
  %156 = load i32*, i32** %4, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = call i32* @transformMinMaxExpr(i32* %156, i32* %157)
  store i32* %158, i32** %6, align 8
  br label %229

159:                                              ; preds = %15
  %160 = load i32*, i32** %4, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = call i32* @transformSQLValueFunction(i32* %160, i32* %161)
  store i32* %162, i32** %6, align 8
  br label %229

163:                                              ; preds = %15
  %164 = load i32*, i32** %4, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = call i32* @transformXmlExpr(i32* %164, i32* %165)
  store i32* %166, i32** %6, align 8
  br label %229

167:                                              ; preds = %15
  %168 = load i32*, i32** %4, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = call i32* @transformXmlSerialize(i32* %168, i32* %169)
  store i32* %170, i32** %6, align 8
  br label %229

171:                                              ; preds = %15
  %172 = load i32*, i32** %5, align 8
  %173 = bitcast i32* %172 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %173, %struct.TYPE_15__** %11, align 8
  %174 = load i32, i32* @operator_precedence_warning, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* @PREC_GROUP_POSTFIX_IS, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @emit_precedence_warnings(i32* %177, i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %181, i32* null, i32 %184)
  br label %186

186:                                              ; preds = %176, %171
  %187 = load i32*, i32** %4, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32* @transformExprRecurse(i32* %187, i32* %190)
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  store i32* %191, i32** %193, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @exprType(i32* %196)
  %198 = call i32 @type_is_rowtype(i32 %197)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 8
  %201 = load i32*, i32** %5, align 8
  store i32* %201, i32** %6, align 8
  br label %229

202:                                              ; preds = %15
  %203 = load i32*, i32** %4, align 8
  %204 = load i32*, i32** %5, align 8
  %205 = call i32* @transformBooleanTest(i32* %203, i32* %204)
  store i32* %205, i32** %6, align 8
  br label %229

206:                                              ; preds = %15
  %207 = load i32*, i32** %4, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = call i32* @transformCurrentOfExpr(i32* %207, i32* %208)
  store i32* %209, i32** %6, align 8
  br label %229

210:                                              ; preds = %15
  %211 = load i32, i32* @ERROR, align 4
  %212 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %213 = call i32 @errcode(i32 %212)
  %214 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %215 = load i32*, i32** %4, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = bitcast i32* %216 to %struct.TYPE_14__*
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @parser_errposition(i32* %215, i32 %219)
  %221 = call i32 @ereport(i32 %211, i32 %220)
  br label %229

222:                                              ; preds = %15, %15
  %223 = load i32*, i32** %5, align 8
  store i32* %223, i32** %6, align 8
  br label %229

224:                                              ; preds = %15
  %225 = load i32, i32* @ERROR, align 4
  %226 = load i32*, i32** %5, align 8
  %227 = call i32 @nodeTag(i32* %226)
  %228 = call i32 @elog(i32 %225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %227)
  store i32* null, i32** %6, align 8
  br label %229

229:                                              ; preds = %224, %222, %210, %206, %202, %186, %167, %163, %159, %155, %151, %147, %143, %139, %128, %124, %120, %116, %112, %111, %53, %49, %43, %39, %27, %23, %19
  %230 = load i32*, i32** %6, align 8
  store i32* %230, i32** %3, align 8
  br label %231

231:                                              ; preds = %229, %14
  %232 = load i32*, i32** %3, align 8
  ret i32* %232
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32* @transformColumnRef(i32*, i32*) #1

declare dso_local i32* @transformParamRef(i32*, i32*) #1

declare dso_local i64 @make_const(i32*, i32*, i32) #1

declare dso_local i32* @transformIndirection(i32*, i32*) #1

declare dso_local i32* @transformArrayExpr(i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @transformTypeCast(i32*, i32*) #1

declare dso_local i32* @transformCollateClause(i32*, i32*) #1

declare dso_local i32* @transformAExprOp(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @transformAExprOpAny(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @transformAExprOpAll(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @transformAExprDistinct(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @transformAExprNullIf(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @transformAExprOf(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @transformAExprIn(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @transformAExprBetween(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @transformBoolExpr(i32*, i32*) #1

declare dso_local i32* @transformFuncCall(i32*, i32*) #1

declare dso_local i32* @transformMultiAssignRef(i32*, i32*) #1

declare dso_local i32* @transformGroupingFunc(i32*, i32*) #1

declare dso_local i32* @transformSubLink(i32*, i32*) #1

declare dso_local i32* @transformCaseExpr(i32*, i32*) #1

declare dso_local i32* @transformRowExpr(i32*, i32*, i32) #1

declare dso_local i32* @transformCoalesceExpr(i32*, i32*) #1

declare dso_local i32* @transformMinMaxExpr(i32*, i32*) #1

declare dso_local i32* @transformSQLValueFunction(i32*, i32*) #1

declare dso_local i32* @transformXmlExpr(i32*, i32*) #1

declare dso_local i32* @transformXmlSerialize(i32*, i32*) #1

declare dso_local i32 @emit_precedence_warnings(i32*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @type_is_rowtype(i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32* @transformBooleanTest(i32*, i32*) #1

declare dso_local i32* @transformCurrentOfExpr(i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
