; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_PageGetItemIdCareful.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_PageGetItemIdCareful.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"line pointer points past end of tuple space in index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Index tid=(%u,%u) lp_off=%u, lp_len=%u lp_flags=%u.\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"invalid line pointer storage in index \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32)* @PageGetItemIdCareful to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PageGetItemIdCareful(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @PageGetItemId(i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @ItemIdGetOffset(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @ItemIdGetLength(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @BLCKSZ, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %4
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RelationGetRelationName(i32 %29)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ItemIdGetOffset(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @ItemIdGetLength(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ItemIdGetFlags(i32 %38)
  %40 = call i32 @errdetail_internal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %35, i64 %37, i32 %39)
  %41 = call i32 @ereport(i32 %24, i32 %40)
  br label %42

42:                                               ; preds = %23, %4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ItemIdIsRedirected(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ItemIdIsUsed(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @ItemIdGetLength(i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50, %46, %42
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @RelationGetRelationName(i32 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ItemIdGetOffset(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @ItemIdGetLength(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ItemIdGetFlags(i32 %69)
  %71 = call i32 @errdetail_internal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64, i32 %66, i64 %68, i32 %70)
  %72 = call i32 @ereport(i32 %55, i32 %71)
  br label %73

73:                                               ; preds = %54, %50
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemIdGetOffset(i32) #1

declare dso_local i64 @ItemIdGetLength(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ItemIdGetFlags(i32) #1

declare dso_local i64 @ItemIdIsRedirected(i32) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
