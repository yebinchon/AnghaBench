; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepDropDependency.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepDropDependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@Anum_pg_shdepend_dbid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_shdepend_classid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_objid = common dso_local global i32 0, align 4
@Anum_pg_shdepend_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@SharedDependDependerIndexId = common dso_local global i32 0, align 4
@SHARED_DEPENDENCY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i32, i32, i64, i64, i64)* @shdepDropDependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shdepDropDependency(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %23 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_OIDEQ, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @classIdGetDbId(i64 %26)
  %28 = call i32 @ObjectIdGetDatum(i64 %27)
  %29 = call i32 @ScanKeyInit(i32* %22, i32 %23, i32 %24, i32 %25, i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %31 = load i32, i32* @Anum_pg_shdepend_classid, align 4
  %32 = load i32, i32* @BTEqualStrategyNumber, align 4
  %33 = load i32, i32* @F_OIDEQ, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @ObjectIdGetDatum(i64 %34)
  %36 = call i32 @ScanKeyInit(i32* %30, i32 %31, i32 %32, i32 %33, i32 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %38 = load i32, i32* @Anum_pg_shdepend_objid, align 4
  %39 = load i32, i32* @BTEqualStrategyNumber, align 4
  %40 = load i32, i32* @F_OIDEQ, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @ObjectIdGetDatum(i64 %41)
  %43 = call i32 @ScanKeyInit(i32* %37, i32 %38, i32 %39, i32 %40, i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %8
  store i32 3, i32* %18, align 4
  br label %55

47:                                               ; preds = %8
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %49 = load i32, i32* @Anum_pg_shdepend_objsubid, align 4
  %50 = load i32, i32* @BTEqualStrategyNumber, align 4
  %51 = load i32, i32* @F_INT4EQ, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @Int32GetDatum(i32 %52)
  %54 = call i32 @ScanKeyInit(i32* %48, i32 %49, i32 %50, i32 %51, i32 %53)
  store i32 4, i32* %18, align 4
  br label %55

55:                                               ; preds = %47, %46
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SharedDependDependerIndexId, align 4
  %58 = load i32, i32* %18, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %60 = call i32 @systable_beginscan(i32 %56, i32 %57, i32 1, i32* null, i32 %58, i32* %59)
  store i32 %60, i32* %19, align 4
  br label %61

61:                                               ; preds = %103, %102, %91, %80, %55
  %62 = load i32, i32* %19, align 4
  %63 = call %struct.TYPE_6__* @systable_getnext(i32 %62)
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %20, align 8
  %64 = call i64 @HeapTupleIsValid(%struct.TYPE_6__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %68 = call i32 @GETSTRUCT(%struct.TYPE_6__* %67)
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %21, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i64 @OidIsValid(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %61

81:                                               ; preds = %74, %66
  %82 = load i64, i64* %15, align 8
  %83 = call i64 @OidIsValid(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %61

92:                                               ; preds = %85, %81
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* @SHARED_DEPENDENCY_INVALID, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %16, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %61

103:                                              ; preds = %96, %92
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = call i32 @CatalogTupleDelete(i32 %104, i32* %106)
  br label %61

108:                                              ; preds = %61
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @systable_endscan(i32 %109)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @classIdGetDbId(i64) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(%struct.TYPE_6__*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
