; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_has_partition_attrs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_has_partition_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @has_partition_attrs(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %85

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = call i32 @RelationGetPartitionKey(%struct.TYPE_6__* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @get_partition_natts(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32* @get_partition_exprs(i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* @list_head(i32* %34)
  store i32* %35, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %81, %27
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @get_partition_col_attnum(i32 %41, i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @bms_is_member(i64 %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32*, i32** %7, align 8
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %53
  store i32 1, i32* %4, align 4
  br label %85

59:                                               ; preds = %46
  br label %80

60:                                               ; preds = %40
  %61 = load i32*, i32** %11, align 8
  %62 = call i64 @lfirst(i32* %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @pull_varattnos(i32* %64, i32 1, i32** %15)
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @lnext(i32* %66, i32* %67)
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i64 @bms_overlap(i32* %69, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %73
  store i32 1, i32* %4, align 4
  br label %85

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %36

84:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %78, %58, %26
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @RelationGetPartitionKey(%struct.TYPE_6__*) #1

declare dso_local i32 @get_partition_natts(i32) #1

declare dso_local i32* @get_partition_exprs(i32) #1

declare dso_local i32* @list_head(i32*) #1

declare dso_local i64 @get_partition_col_attnum(i32, i32) #1

declare dso_local i64 @bms_is_member(i64, i32*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32 @pull_varattnos(i32*, i32, i32**) #1

declare dso_local i32* @lnext(i32*, i32*) #1

declare dso_local i64 @bms_overlap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
