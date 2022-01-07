; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_oper_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_oper_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@OPEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bogus oprkind: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @get_oper_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_oper_expr(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i32 @PRETTY_PAREN(%struct.TYPE_8__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @appendStringInfoChar(i32 %26, i8 signext 40)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @list_length(i32* %29)
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @linitial(i32* %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @lsecond(i32* %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = bitcast %struct.TYPE_9__* %41 to i32*
  %43 = call i32 @get_rule_expr_paren(i32* %39, %struct.TYPE_8__* %40, i32 1, i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @exprType(i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @exprType(i32* %48)
  %50 = call i32 @generate_operator_name(i32 %45, i32 %47, i32 %49)
  %51 = call i32 @appendStringInfo(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = bitcast %struct.TYPE_9__* %54 to i32*
  %56 = call i32 @get_rule_expr_paren(i32* %52, %struct.TYPE_8__* %53, i32 1, i32* %55)
  br label %114

57:                                               ; preds = %28
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @linitial(i32* %58)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* @OPEROID, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ObjectIdGetDatum(i32 %62)
  %64 = call i32 @SearchSysCache1(i32 %61, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @HeapTupleIsValid(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @elog(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %57
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @GETSTRUCT(i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %12, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %105 [
    i32 108, label %79
    i32 114, label %92
  ]

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @InvalidOid, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @exprType(i32* %83)
  %85 = call i32 @generate_operator_name(i32 %81, i32 %82, i32 %84)
  %86 = call i32 @appendStringInfo(i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = bitcast %struct.TYPE_9__* %89 to i32*
  %91 = call i32 @get_rule_expr_paren(i32* %87, %struct.TYPE_8__* %88, i32 1, i32* %90)
  br label %111

92:                                               ; preds = %72
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = bitcast %struct.TYPE_9__* %95 to i32*
  %97 = call i32 @get_rule_expr_paren(i32* %93, %struct.TYPE_8__* %94, i32 1, i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @exprType(i32* %100)
  %102 = load i32, i32* @InvalidOid, align 4
  %103 = call i32 @generate_operator_name(i32 %99, i32 %101, i32 %102)
  %104 = call i32 @appendStringInfo(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %111

105:                                              ; preds = %72
  %106 = load i32, i32* @ERROR, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @elog(i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %92, %79
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @ReleaseSysCache(i32 %112)
  br label %114

114:                                              ; preds = %111, %32
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = call i32 @PRETTY_PAREN(%struct.TYPE_8__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @appendStringInfoChar(i32 %119, i8 signext 41)
  br label %121

121:                                              ; preds = %118, %114
  ret void
}

declare dso_local i32 @PRETTY_PAREN(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i64 @lsecond(i32*) #1

declare dso_local i32 @get_rule_expr_paren(i32*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32) #1

declare dso_local i32 @generate_operator_name(i32, i32, i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
