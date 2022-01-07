; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_generate_operator_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_generate_operator_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@OPEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unrecognized oprkind: %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"OPERATOR(%s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i64)* @generate_operator_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_operator_name(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = call i32 @initStringInfo(%struct.TYPE_7__* %7)
  %14 = load i32, i32* @OPEROID, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @ObjectIdGetDatum(i64 %15)
  %17 = call i32* @SearchSysCache1(i32 %14, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @HeapTupleIsValid(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @GETSTRUCT(i32* %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %9, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @NameStr(i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %55 [
    i32 98, label %36
    i32 108, label %43
    i32 114, label %49
  ]

36:                                               ; preds = %25
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @makeString(i8* %37)
  %39 = call i32 @list_make1(i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32* @oper(i32* null, i32 %39, i64 %40, i64 %41, i32 1, i32 -1)
  store i32* %42, i32** %12, align 8
  br label %62

43:                                               ; preds = %25
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @makeString(i8* %44)
  %46 = call i32 @list_make1(i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = call i32* @left_oper(i32* null, i32 %46, i64 %47, i32 1, i32 -1)
  store i32* %48, i32** %12, align 8
  br label %62

49:                                               ; preds = %25
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @makeString(i8* %50)
  %52 = call i32 @list_make1(i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = call i32* @right_oper(i32* null, i32 %52, i64 %53, i32 1, i32 -1)
  store i32* %54, i32** %12, align 8
  br label %62

55:                                               ; preds = %25
  %56 = load i32, i32* @ERROR, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @elog(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  store i32* null, i32** %12, align 8
  br label %62

62:                                               ; preds = %55, %49, %43, %36
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = call i64 @oprid(i32* %66)
  %68 = load i64, i64* %4, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i8* null, i8** %11, align 8
  br label %79

71:                                               ; preds = %65, %62
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @get_namespace_name(i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @quote_identifier(i8* %76)
  %78 = call i32 @appendStringInfo(%struct.TYPE_7__* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %71, %70
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @appendStringInfoString(%struct.TYPE_7__* %7, i8* %80)
  %82 = load i8*, i8** %11, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i8 signext 41)
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @ReleaseSysCache(i32* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @ReleaseSysCache(i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  ret i8* %96
}

declare dso_local i32 @initStringInfo(%struct.TYPE_7__*) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32* @oper(i32*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @list_make1(i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local i32* @left_oper(i32*, i32, i64, i32, i32) #1

declare dso_local i32* @right_oper(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @oprid(i32*) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @quote_identifier(i8*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
