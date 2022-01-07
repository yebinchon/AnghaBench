; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_enum.c_enum_range_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_enum.c_enum_range_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Anum_pg_enum_enumtypid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@EnumRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@EnumTypIdSortOrderIndexId = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i64)* @enum_range_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @enum_range_internal(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load i32, i32* @Anum_pg_enum_enumtypid, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_OIDEQ, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ObjectIdGetDatum(i64 %21)
  %23 = call i32 @ScanKeyInit(i32* %12, i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = load i32, i32* @EnumRelationId, align 4
  %25 = load i32, i32* @AccessShareLock, align 4
  %26 = call i32 @table_open(i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @EnumTypIdSortOrderIndexId, align 4
  %28 = load i32, i32* @AccessShareLock, align 4
  %29 = call i32 @index_open(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @systable_beginscan_ordered(i32 %30, i32 %31, i32* null, i32 1, i32* %12)
  store i32 %32, i32* %10, align 4
  store i32 64, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i64 @palloc(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @OidIsValid(i64 %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %99, %3
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ForwardScanDirection, align 4
  %47 = call i32 @systable_getnext_ordered(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = call i64 @HeapTupleIsValid(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @GETSTRUCT(i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %17, align 8
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %17, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %16, align 4
  br label %63

63:                                               ; preds = %62, %58, %50
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @check_safe_enum_use(i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %73, 2
  store i32 %74, i32* %14, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64 @repalloc(i32* %75, i32 %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %13, align 8
  br label %82

82:                                               ; preds = %72, %66
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @ObjectIdGetDatum(i64 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %63
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @OidIsValid(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %17, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %100

99:                                               ; preds = %94, %90
  br label %44

100:                                              ; preds = %98, %44
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @systable_endscan_ordered(i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @AccessShareLock, align 4
  %105 = call i32 @index_close(i32 %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @AccessShareLock, align 4
  %108 = call i32 @table_close(i32 %106, i32 %107)
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i64, i64* %4, align 8
  %112 = call i32* @construct_array(i32* %109, i32 %110, i64 %111, i32 8, i32 1, i8 signext 105)
  store i32* %112, i32** %7, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @pfree(i32* %113)
  %115 = load i32*, i32** %7, align 8
  ret i32* %115
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @index_open(i32, i32) #1

declare dso_local i32 @systable_beginscan_ordered(i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext_ordered(i32, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @check_safe_enum_use(i32) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @systable_endscan_ordered(i32) #1

declare dso_local i32 @index_close(i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32* @construct_array(i32*, i32, i64, i32, i32, i8 signext) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
