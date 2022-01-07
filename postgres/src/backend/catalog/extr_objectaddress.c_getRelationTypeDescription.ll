; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getRelationTypeDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_getRelationTypeDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"toast table\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"materialized view\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"composite type\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"foreign table\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"relation\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" column\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @getRelationTypeDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getRelationTypeDescription(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @RELOID, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ObjectIdGetDatum(i32 %10)
  %12 = call i32 @SearchSysCache1(i32 %9, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @HeapTupleIsValid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @GETSTRUCT(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %8, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %51 [
    i32 131, label %27
    i32 132, label %27
    i32 135, label %30
    i32 133, label %30
    i32 130, label %33
    i32 129, label %36
    i32 128, label %39
    i32 134, label %42
    i32 137, label %45
    i32 136, label %48
  ]

27:                                               ; preds = %20, %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @appendStringInfoString(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %54

30:                                               ; preds = %20, %20
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @appendStringInfoString(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %54

33:                                               ; preds = %20
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @appendStringInfoString(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %54

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @appendStringInfoString(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %54

39:                                               ; preds = %20
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @appendStringInfoString(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %54

42:                                               ; preds = %20
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @appendStringInfoString(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %54

45:                                               ; preds = %20
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @appendStringInfoString(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %54

48:                                               ; preds = %20
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @appendStringInfoString(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %54

51:                                               ; preds = %20
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @appendStringInfoString(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @appendStringInfoString(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ReleaseSysCache(i32 %61)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
