; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_ConversionIsVisible.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_ConversionIsVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@CONVOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cache lookup failed for conversion %u\00", align 1
@PG_CATALOG_NAMESPACE = common dso_local global i64 0, align 8
@activeSearchPath = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConversionIsVisible(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @CONVOID, align 4
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @ObjectIdGetDatum(i64 %9)
  %11 = call i32 @SearchSysCache1(i32 %8, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @HeapTupleIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @GETSTRUCT(i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %4, align 8
  %23 = call i32 (...) @recomputeNamespacePath()
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @PG_CATALOG_NAMESPACE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load i32, i32* @activeSearchPath, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @list_member_oid(i32 %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %46

36:                                               ; preds = %30, %19
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @NameStr(i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @ConversionGetConid(i8* %41)
  %43 = load i64, i64* %2, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %35
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ReleaseSysCache(i32 %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @recomputeNamespacePath(...) #1

declare dso_local i32 @list_member_oid(i32, i64) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @ConversionGetConid(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
