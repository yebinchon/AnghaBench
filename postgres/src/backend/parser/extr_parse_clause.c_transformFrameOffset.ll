; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_transformFrameOffset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_transformFrameOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@InvalidOid = common dso_local global i64 0, align 8
@FRAMEOPTION_ROWS = common dso_local global i32 0, align 4
@EXPR_KIND_WINDOW_FRAME_ROWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ROWS\00", align 1
@INT8OID = common dso_local global i64 0, align 8
@FRAMEOPTION_RANGE = common dso_local global i32 0, align 4
@EXPR_KIND_WINDOW_FRAME_RANGE = common dso_local global i32 0, align 4
@UNKNOWNOID = common dso_local global i64 0, align 8
@AMPROCNUM = common dso_local global i32 0, align 4
@BTINRANGE_PROC = common dso_local global i64 0, align 8
@COERCION_IMPLICIT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"RANGE with offset PRECEDING/FOLLOWING is not supported for column type %s\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"RANGE with offset PRECEDING/FOLLOWING is not supported for column type %s and offset type %s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Cast the offset value to an appropriate type.\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"RANGE with offset PRECEDING/FOLLOWING has multiple interpretations for column type %s and offset type %s\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Cast the offset value to the exact intended type.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"RANGE\00", align 1
@FRAMEOPTION_GROUPS = common dso_local global i32 0, align 4
@EXPR_KIND_WINDOW_FRAME_GROUPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"GROUPS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i64, i64, i64*, i32*)* @transformFrameOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformFrameOffset(i32* %0, i32 %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %14, align 8
  %26 = load i64, i64* @InvalidOid, align 8
  %27 = load i64*, i64** %12, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %216

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FRAMEOPTION_ROWS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* @EXPR_KIND_WINDOW_FRAME_ROWS, align 4
  %40 = call i32* @transformExpr(i32* %37, i32* %38, i32 %39)
  store i32* %40, i32** %15, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i64, i64* @INT8OID, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32* @coerce_to_specific_type(i32* %41, i32* %42, i64 %43, i8* %44)
  store i32* %45, i32** %15, align 8
  br label %210

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FRAMEOPTION_RANGE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %191

51:                                               ; preds = %46
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %52 = load i64, i64* @InvalidOid, align 8
  store i64 %52, i64* %20, align 8
  %53 = load i64, i64* @InvalidOid, align 8
  store i64 %53, i64* %21, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @EXPR_KIND_WINDOW_FRAME_RANGE, align 4
  %57 = call i32* @transformExpr(i32* %54, i32* %55, i32 %56)
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i64 @exprType(i32* %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @UNKNOWNOID, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i64, i64* %16, align 8
  br label %67

65:                                               ; preds = %51
  %66 = load i64, i64* %11, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  store i64 %68, i64* %17, align 8
  %69 = load i32, i32* @AMPROCNUM, align 4
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @ObjectIdGetDatum(i64 %70)
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @ObjectIdGetDatum(i64 %72)
  %74 = call %struct.TYPE_8__* @SearchSysCacheList2(i32 %69, i32 %71, i32 %73)
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %22, align 8
  store i32 0, i32* %23, align 4
  br label %75

75:                                               ; preds = %123, %67
  %76 = load i32, i32* %23, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %126

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = load i32, i32* %23, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32* %89, i32** %24, align 8
  %90 = load i32*, i32** %24, align 8
  %91 = call i32 @GETSTRUCT(i32* %90)
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %25, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BTINRANGE_PROC, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  br label %123

100:                                              ; preds = %81
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* @COERCION_IMPLICIT, align 4
  %106 = call i32 @can_coerce_type(i32 1, i64* %16, i64* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %123

109:                                              ; preds = %100
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %17, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %20, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %21, align 8
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %108, %99
  %124 = load i32, i32* %23, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %23, align 4
  br label %75

126:                                              ; preds = %75
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %128 = call i32 @ReleaseCatCacheList(%struct.TYPE_8__* %127)
  %129 = load i32, i32* %18, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32, i32* @ERROR, align 4
  %133 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %134 = call i32 @errcode(i32 %133)
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @format_type_be(i64 %135)
  %137 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = call i32 @exprLocation(i32* %139)
  %141 = call i32 @parser_errposition(i32* %138, i32 %140)
  %142 = call i32 @ereport(i32 %132, i32 %141)
  br label %143

143:                                              ; preds = %131, %126
  %144 = load i32, i32* %19, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load i32, i32* @ERROR, align 4
  %148 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %149 = call i32 @errcode(i32 %148)
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @format_type_be(i64 %150)
  %152 = load i64, i64* %16, align 8
  %153 = call i32 @format_type_be(i64 %152)
  %154 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %153)
  %155 = call i32 @errhint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32*, i32** %8, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @exprLocation(i32* %157)
  %159 = call i32 @parser_errposition(i32* %156, i32 %158)
  %160 = call i32 @ereport(i32 %147, i32 %159)
  br label %161

161:                                              ; preds = %146, %143
  %162 = load i32, i32* %19, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %183

164:                                              ; preds = %161
  %165 = load i64, i64* %20, align 8
  %166 = load i64, i64* %17, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = load i32, i32* @ERROR, align 4
  %170 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %171 = call i32 @errcode(i32 %170)
  %172 = load i64, i64* %11, align 8
  %173 = call i32 @format_type_be(i64 %172)
  %174 = load i64, i64* %16, align 8
  %175 = call i32 @format_type_be(i64 %174)
  %176 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 %173, i32 %175)
  %177 = call i32 @errhint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32*, i32** %8, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = call i32 @exprLocation(i32* %179)
  %181 = call i32 @parser_errposition(i32* %178, i32 %180)
  %182 = call i32 @ereport(i32 %169, i32 %181)
  br label %183

183:                                              ; preds = %168, %164, %161
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i32*, i32** %15, align 8
  %186 = load i64, i64* %20, align 8
  %187 = load i8*, i8** %14, align 8
  %188 = call i32* @coerce_to_specific_type(i32* %184, i32* %185, i64 %186, i8* %187)
  store i32* %188, i32** %15, align 8
  %189 = load i64, i64* %21, align 8
  %190 = load i64*, i64** %12, align 8
  store i64 %189, i64* %190, align 8
  br label %209

191:                                              ; preds = %46
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @FRAMEOPTION_GROUPS, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %191
  %197 = load i32*, i32** %8, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* @EXPR_KIND_WINDOW_FRAME_GROUPS, align 4
  %200 = call i32* @transformExpr(i32* %197, i32* %198, i32 %199)
  store i32* %200, i32** %15, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = load i64, i64* @INT8OID, align 8
  %204 = load i8*, i8** %14, align 8
  %205 = call i32* @coerce_to_specific_type(i32* %201, i32* %202, i64 %203, i8* %204)
  store i32* %205, i32** %15, align 8
  br label %208

206:                                              ; preds = %191
  %207 = call i32 @Assert(i32 0)
  store i32* null, i32** %15, align 8
  br label %208

208:                                              ; preds = %206, %196
  br label %209

209:                                              ; preds = %208, %183
  br label %210

210:                                              ; preds = %209, %36
  %211 = load i32*, i32** %8, align 8
  %212 = load i32*, i32** %15, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = call i32 @checkExprIsVarFree(i32* %211, i32* %212, i8* %213)
  %215 = load i32*, i32** %15, align 8
  store i32* %215, i32** %7, align 8
  br label %216

216:                                              ; preds = %210, %30
  %217 = load i32*, i32** %7, align 8
  ret i32* %217
}

declare dso_local i32* @transformExpr(i32*, i32*, i32) #1

declare dso_local i32* @coerce_to_specific_type(i32*, i32*, i64, i8*) #1

declare dso_local i64 @exprType(i32*) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheList2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @can_coerce_type(i32, i64*, i64*, i32) #1

declare dso_local i32 @ReleaseCatCacheList(%struct.TYPE_8__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @exprLocation(i32*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @checkExprIsVarFree(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
