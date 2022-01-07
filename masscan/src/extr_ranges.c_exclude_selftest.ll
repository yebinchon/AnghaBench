; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_exclude_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_exclude_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32 }

@exclude_selftest.MAXCOUNT = internal constant i32 1000, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @exclude_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exclude_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.RangeList, align 4
  %4 = alloca %struct.RangeList, align 4
  %5 = alloca %struct.RangeList, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %12 = bitcast %struct.RangeList* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = bitcast %struct.RangeList* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = bitcast %struct.RangeList* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %32, %0
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 1000
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = call i32 @lcgrand(i32* %2)
  %20 = and i32 %19, 15
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %8, align 4
  %24 = call i32 @lcgrand(i32* %2)
  %25 = and i32 %24, 15
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @rangelist_add_range(%struct.RangeList* %3, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %18
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %15

35:                                               ; preds = %15
  %36 = call i32 @rangelist_sort(%struct.RangeList* %3)
  store i32 1, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %54, %35
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %38, 1000
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = call i32 @lcgrand(i32* %2)
  %42 = and i32 %41, 15
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %10, align 4
  %46 = call i32 @lcgrand(i32* %2)
  %47 = and i32 %46, 15
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @rangelist_add_range(%struct.RangeList* %5, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %37

57:                                               ; preds = %37
  %58 = call i32 @rangelist_sort(%struct.RangeList* %5)
  %59 = call i32 @rangelist_copy(%struct.RangeList* %4, %struct.RangeList* %3)
  %60 = call i32 @rangelist_is_equal(%struct.RangeList* %3, %struct.RangeList* %4)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 1, i32* %1, align 4
  br label %70

63:                                               ; preds = %57
  %64 = call i32 @rangelist_exclude(%struct.RangeList* %3, %struct.RangeList* %5)
  %65 = call i32 @rangelist_exclude2(%struct.RangeList* %4, %struct.RangeList* %5)
  %66 = call i32 @rangelist_is_equal(%struct.RangeList* %3, %struct.RangeList* %4)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 1, i32* %1, align 4
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %69, %68, %62
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lcgrand(i32*) #2

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i32, i32) #2

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #2

declare dso_local i32 @rangelist_copy(%struct.RangeList*, %struct.RangeList*) #2

declare dso_local i32 @rangelist_is_equal(%struct.RangeList*, %struct.RangeList*) #2

declare dso_local i32 @rangelist_exclude(%struct.RangeList*, %struct.RangeList*) #2

declare dso_local i32 @rangelist_exclude2(%struct.RangeList*, %struct.RangeList*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
