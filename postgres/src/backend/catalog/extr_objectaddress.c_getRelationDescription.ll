; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getRelationDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getRelationDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"table %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"index %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sequence %s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"toast table %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"view %s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"materialized view %s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"composite type %s\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"foreign table %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"relation %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @getRelationDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getRelationDescription(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @RELOID, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ObjectIdGetDatum(i32 %10)
  %12 = call i32 @SearchSysCache1(i32 %9, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @HeapTupleIsValid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GETSTRUCT(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @RelationIsVisible(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i8* null, i8** %7, align 8
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @get_namespace_name(i32 %31)
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NameStr(i32 %37)
  %39 = call i8* @quote_qualified_identifier(i8* %34, i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %83 [
    i32 131, label %43
    i32 132, label %43
    i32 135, label %48
    i32 133, label %48
    i32 130, label %53
    i32 129, label %58
    i32 128, label %63
    i32 134, label %68
    i32 137, label %73
    i32 136, label %78
  ]

43:                                               ; preds = %33, %33
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @appendStringInfo(i32 %44, i32 %45, i8* %46)
  br label %88

48:                                               ; preds = %33, %33
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @appendStringInfo(i32 %49, i32 %50, i8* %51)
  br label %88

53:                                               ; preds = %33
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @appendStringInfo(i32 %54, i32 %55, i8* %56)
  br label %88

58:                                               ; preds = %33
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @appendStringInfo(i32 %59, i32 %60, i8* %61)
  br label %88

63:                                               ; preds = %33
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @appendStringInfo(i32 %64, i32 %65, i8* %66)
  br label %88

68:                                               ; preds = %33
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @appendStringInfo(i32 %69, i32 %70, i8* %71)
  br label %88

73:                                               ; preds = %33
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @appendStringInfo(i32 %74, i32 %75, i8* %76)
  br label %88

78:                                               ; preds = %33
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @appendStringInfo(i32 %79, i32 %80, i8* %81)
  br label %88

83:                                               ; preds = %33
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @appendStringInfo(i32 %84, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %83, %78, %73, %68, %63, %58, %53, %48, %43
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ReleaseSysCache(i32 %89)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @RelationIsVisible(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @appendStringInfo(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
