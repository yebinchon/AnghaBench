; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_IndexGetRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_IndexGetRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@INDEXRELID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IndexGetRelation(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @INDEXRELID, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @ObjectIdGetDatum(i64 %10)
  %12 = call i32 @SearchSysCache1(i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @HeapTupleIsValid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @InvalidOid, align 8
  store i64 %20, i64* %3, align 8
  br label %42

21:                                               ; preds = %16
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @GETSTRUCT(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %7, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ReleaseSysCache(i32 %39)
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %25, %19
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
