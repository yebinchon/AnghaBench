; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_get_rolespec_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_get_rolespec_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@AUTHNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"role \22%s\22 does not exist\00", align 1
@AUTHOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cache lookup failed for role %u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unexpected role type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_rolespec_tuple(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %61 [
    i32 131, label %7
    i32 130, label %31
    i32 128, label %43
    i32 129, label %55
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @Assert(i8* %10)
  %12 = load i32, i32* @AUTHNAME, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @CStringGetDatum(i8* %15)
  %17 = call i32* @SearchSysCache1(i32 %12, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @HeapTupleIsValid(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @ereport(i32 %22, i32 %28)
  br label %30

30:                                               ; preds = %21, %7
  br label %67

31:                                               ; preds = %1
  %32 = load i32, i32* @AUTHOID, align 4
  %33 = call i32 (...) @GetUserId()
  %34 = call i32* @SearchSysCache1(i32 %32, i32 %33)
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @HeapTupleIsValid(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 (...) @GetUserId()
  %41 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  br label %67

43:                                               ; preds = %1
  %44 = load i32, i32* @AUTHOID, align 4
  %45 = call i32 (...) @GetSessionUserId()
  %46 = call i32* @SearchSysCache1(i32 %44, i32 %45)
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @HeapTupleIsValid(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ERROR, align 4
  %52 = call i32 (...) @GetSessionUserId()
  %53 = call i32 @elog(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %67

55:                                               ; preds = %1
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %56, i32 %59)
  store i32* null, i32** %3, align 8
  br label %67

61:                                               ; preds = %1
  %62 = load i32, i32* @ERROR, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @elog(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %55, %54, %42, %30
  %68 = load i32*, i32** %3, align 8
  ret i32* %68
}

declare dso_local i32 @Assert(i8*) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @GetSessionUserId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
