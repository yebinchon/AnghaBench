; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteSupport.c_get_rewrite_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteSupport.c_get_rewrite_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@RULERELNAME = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"rule \22%s\22 for relation \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_rewrite_oid(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @RULERELNAME, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @ObjectIdGetDatum(i64 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @PointerGetDatum(i8* %14)
  %16 = call i32 @SearchSysCache2(i32 %11, i32 %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* @InvalidOid, align 8
  store i64 %24, i64* %4, align 8
  br label %51

25:                                               ; preds = %20
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @get_rel_name(i64 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31)
  %33 = call i32 @ereport(i32 %26, i32 %32)
  br label %34

34:                                               ; preds = %25, %3
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @GETSTRUCT(i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ReleaseSysCache(i32 %48)
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %34, %23
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @get_rel_name(i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
