; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32*, i8*, i32, i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SUBSCRIPTIONOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cache lookup failed for subscription %u\00", align 1
@Anum_pg_subscription_subconninfo = common dso_local global i32 0, align 4
@Anum_pg_subscription_subslotname = common dso_local global i32 0, align 4
@Anum_pg_subscription_subsynccommit = common dso_local global i32 0, align 4
@Anum_pg_subscription_subpublications = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @GetSubscription(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @SUBSCRIPTIONOID, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32 @SearchSysCache1(i32 %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %119

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @GETSTRUCT(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  %30 = call i64 @palloc(i32 56)
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %7, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NameStr(i32 %42)
  %44 = call i8* @pstrdup(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @SUBSCRIPTIONOID, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @Anum_pg_subscription_subconninfo, align 4
  %60 = call i32 @SysCacheGetAttr(i32 %57, i32 %58, i32 %59, i32* %10)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @Assert(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @TextDatumGetCString(i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @SUBSCRIPTIONOID, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @Anum_pg_subscription_subslotname, align 4
  %73 = call i32 @SysCacheGetAttr(i32 %70, i32 %71, i32 %72, i32* %10)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %26
  %77 = load i32, i32* %9, align 4
  %78 = call i32* @DatumGetName(i32 %77)
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @NameStr(i32 %79)
  %81 = call i8* @pstrdup(i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  br label %88

85:                                               ; preds = %26
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %85, %76
  %89 = load i32, i32* @SUBSCRIPTIONOID, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @Anum_pg_subscription_subsynccommit, align 4
  %92 = call i32 @SysCacheGetAttr(i32 %89, i32 %90, i32 %91, i32* %10)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @Assert(i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = call i8* @TextDatumGetCString(i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @SUBSCRIPTIONOID, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @Anum_pg_subscription_subpublications, align 4
  %105 = call i32 @SysCacheGetAttr(i32 %102, i32 %103, i32 %104, i32* %10)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @DatumGetArrayTypeP(i32 %111)
  %113 = call i32 @textarray_to_stringlist(i32 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ReleaseSysCache(i32 %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %3, align 8
  br label %119

119:                                              ; preds = %88, %21
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %120
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32* @DatumGetName(i32) #1

declare dso_local i32 @textarray_to_stringlist(i32) #1

declare dso_local i32 @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
