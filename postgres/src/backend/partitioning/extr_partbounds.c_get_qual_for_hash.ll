; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_get_qual_for_hash.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_get_qual_for_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64*, i32, i32*, i32*, i32* }

@OIDOID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@F_SATISFIES_HASH_PARTITION = common dso_local global i32 0, align 4
@BOOLOID = common dso_local global i32 0, align 4
@COERCE_EXPLICIT_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_6__*)* @get_qual_for_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_qual_for_hash(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_5__* @RelationGetPartitionKey(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load i32, i32* @OIDOID, align 4
  %17 = load i32, i32* @InvalidOid, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @RelationGetRelid(i32 %18)
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i64 @makeConst(i32 %16, i32 -1, i32 %17, i32 4, i32 %20, i32 0, i32 1)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* @INT4OID, align 4
  %24 = load i32, i32* @InvalidOid, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Int32GetDatum(i32 %27)
  %29 = call i64 @makeConst(i32 %23, i32 -1, i32 %24, i32 4, i32 %28, i32 0, i32 1)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @INT4OID, align 4
  %32 = load i32, i32* @InvalidOid, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @Int32GetDatum(i32 %35)
  %37 = call i64 @makeConst(i32 %31, i32 -1, i32 %32, i32 4, i32 %36, i32 0, i32 1)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @list_make3(i32* %39, i32* %40, i32* %41)
  store i32* %42, i32** %10, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @list_head(i32 %45)
  store i32* %46, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %107, %2
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %53
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @makeVar(i32 1, i64 %69, i32 %76, i32 %83, i32 %90, i32 0)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %13, align 8
  br label %103

93:                                               ; preds = %53
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @lfirst(i32* %94)
  %96 = call i64 @copyObject(i32 %95)
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** %13, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32* @lnext(i32 %100, i32* %101)
  store i32* %102, i32** %11, align 8
  br label %103

103:                                              ; preds = %93, %62
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = call i32* @lappend(i32* %104, i32* %105)
  store i32* %106, i32** %10, align 8
  br label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %47

110:                                              ; preds = %47
  %111 = load i32, i32* @F_SATISFIES_HASH_PARTITION, align 4
  %112 = load i32, i32* @BOOLOID, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* @InvalidOid, align 4
  %115 = load i32, i32* @InvalidOid, align 4
  %116 = load i32, i32* @COERCE_EXPLICIT_CALL, align 4
  %117 = call i32* @makeFuncExpr(i32 %111, i32 %112, i32* %113, i32 %114, i32 %115, i32 %116)
  store i32* %117, i32** %6, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = call i32* @list_make1(i32* %118)
  ret i32* %119
}

declare dso_local %struct.TYPE_5__* @RelationGetPartitionKey(i32) #1

declare dso_local i64 @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @list_make3(i32*, i32*, i32*) #1

declare dso_local i32* @list_head(i32) #1

declare dso_local i64 @makeVar(i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @copyObject(i32) #1

declare dso_local i32 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i32* @makeFuncExpr(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32* @list_make1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
