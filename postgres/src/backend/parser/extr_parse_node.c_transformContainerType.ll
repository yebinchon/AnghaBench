; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_node.c_transformContainerType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_node.c_transformContainerType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@INT2VECTOROID = common dso_local global i64 0, align 8
@INT2ARRAYOID = common dso_local global i64 0, align 8
@OIDVECTOROID = common dso_local global i64 0, align 8
@OIDARRAYOID = common dso_local global i64 0, align 8
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot subscript type %s because it is not an array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @transformContainerType(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @getBaseTypeAndTypmod(i64 %12, i32* %13)
  %15 = load i64*, i64** %3, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INT2VECTOROID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* @INT2ARRAYOID, align 8
  %22 = load i64*, i64** %3, align 8
  store i64 %21, i64* %22, align 8
  br label %32

23:                                               ; preds = %2
  %24 = load i64*, i64** %3, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OIDVECTOROID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* @OIDARRAYOID, align 8
  %30 = load i64*, i64** %3, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* @TYPEOID, align 4
  %34 = load i64*, i64** %3, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ObjectIdGetDatum(i64 %35)
  %37 = call i32 @SearchSysCache1(i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @HeapTupleIsValid(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i64*, i64** %3, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @GETSTRUCT(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %8, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @InvalidOid, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @format_type_be(i64 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = call i32 @ereport(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %56, %46
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ReleaseSysCache(i32 %65)
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local i64 @getBaseTypeAndTypmod(i64, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
