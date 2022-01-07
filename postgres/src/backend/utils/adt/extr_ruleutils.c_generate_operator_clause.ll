; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_generate_operator_clause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_generate_operator_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i64, i64, i32, i32 }

@OPEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" OPERATOR(%s.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c") %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_operator_clause(i32 %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @OPEROID, align 4
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @ObjectIdGetDatum(i64 %18)
  %20 = call i32 @SearchSysCache1(i32 %17, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @HeapTupleIsValid(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %24, %6
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @GETSTRUCT(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %14, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 98
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @NameStr(i32 %41)
  store i8* %42, i8** %15, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @get_namespace_name(i32 %45)
  store i8* %46, i8** %16, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @appendStringInfoString(i32 %47, i8* %48)
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %28
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @add_cast_to(i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %55, %28
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = call i8* @quote_identifier(i8* %63)
  %65 = call i32 @appendStringInfo(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @appendStringInfoString(i32 %66, i8* %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @appendStringInfo(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @add_cast_to(i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %77, %61
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @ReleaseSysCache(i32 %84)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @add_cast_to(i32, i64) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
