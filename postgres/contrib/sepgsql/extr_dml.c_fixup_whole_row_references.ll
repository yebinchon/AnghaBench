; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_dml.c_fixup_whole_row_references.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_dml.c_fixup_whole_row_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@InvalidAttrNumber = common dso_local global i32 0, align 4
@FirstLowInvalidHeapAttributeNumber = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@ATTNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @fixup_whole_row_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fixup_whole_row_references(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @InvalidAttrNumber, align 4
  %12 = load i32, i32* @FirstLowInvalidHeapAttributeNumber, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @bms_is_member(i32 %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %3, align 8
  br label %82

20:                                               ; preds = %2
  %21 = load i32, i32* @RELOID, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = call i32 @SearchSysCache1(i32 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @GETSTRUCT(i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ReleaseSysCache(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32* @bms_copy(i32* %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32* @bms_del_member(i32* %42, i32 %43)
  store i32* %44, i32** %6, align 8
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %77, %32
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i32, i32* @ATTNUM, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ObjectIdGetDatum(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @Int16GetDatum(i32 %53)
  %55 = call i32 @SearchSysCache2(i32 %50, i32 %52, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @HeapTupleIsValid(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %77

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @GETSTRUCT(i32 %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %77

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @FirstLowInvalidHeapAttributeNumber, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32* @bms_add_member(i32* %72, i32 %73)
  store i32* %74, i32** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ReleaseSysCache(i32 %75)
  br label %77

77:                                               ; preds = %68, %67, %59
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %45

80:                                               ; preds = %45
  %81 = load i32*, i32** %6, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %80, %18
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i32 @bms_is_member(i32, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32* @bms_copy(i32*) #1

declare dso_local i32* @bms_del_member(i32*, i32) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32* @bms_add_member(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
