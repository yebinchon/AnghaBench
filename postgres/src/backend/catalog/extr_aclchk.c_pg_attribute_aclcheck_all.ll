; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_attribute_aclcheck_all.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_attribute_aclcheck_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@RELOID = common dso_local global i32 0, align 4
@ACLCHECK_NO_PRIV = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@Anum_pg_attribute_attacl = common dso_local global i32 0, align 4
@ACLMASK_ANY = common dso_local global i64 0, align 8
@ACLCHECK_OK = common dso_local global i32 0, align 4
@ACLMASK_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_attribute_aclcheck_all(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @RELOID, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call i32 @SearchSysCache1(i32 %17, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @HeapTupleIsValid(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ACLCHECK_NO_PRIV, align 4
  store i32 %25, i32* %5, align 4
  br label %99

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @GETSTRUCT(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %12, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ReleaseSysCache(i32 %33)
  %35 = load i32, i32* @ACLCHECK_NO_PRIV, align 4
  store i32 %35, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %36

36:                                               ; preds = %94, %26
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load i32, i32* @ATTNUM, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ObjectIdGetDatum(i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @Int16GetDatum(i32 %44)
  %46 = call i32 @SearchSysCache2(i32 %41, i32 %43, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @HeapTupleIsValid(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %94

51:                                               ; preds = %40
  %52 = load i32, i32* %15, align 4
  %53 = call i64 @GETSTRUCT(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @ReleaseSysCache(i32 %59)
  br label %94

61:                                               ; preds = %51
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %64 = call i64 @heap_attisnull(i32 %62, i32 %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i64 0, i64* %16, align 8
  br label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @ACLMASK_ANY, align 8
  %73 = call i64 @pg_attribute_aclmask(i32 %68, i32 %69, i32 %70, i64 %71, i64 %72)
  store i64 %73, i64* %16, align 8
  br label %74

74:                                               ; preds = %67, %66
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @ReleaseSysCache(i32 %75)
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* @ACLCHECK_OK, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @ACLMASK_ANY, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %97

85:                                               ; preds = %79
  br label %93

86:                                               ; preds = %74
  %87 = load i32, i32* @ACLCHECK_NO_PRIV, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @ACLMASK_ALL, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93, %58, %50
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %36

97:                                               ; preds = %91, %84, %36
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %24
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i64 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i64 @pg_attribute_aclmask(i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
