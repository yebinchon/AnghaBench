; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb_make.c_cdb_make_addend.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb_make.c_cdb_make_addend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdb_make = type { i32, i32, %struct.cdb_hplist* }
%struct.cdb_hplist = type { i64, %struct.TYPE_2__*, %struct.cdb_hplist* }
%struct.TYPE_2__ = type { i32, i32 }

@CDB_HPLIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdb_make_addend(%struct.cdb_make* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdb_make*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdb_hplist*, align 8
  store %struct.cdb_make* %0, %struct.cdb_make** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %12 = getelementptr inbounds %struct.cdb_make, %struct.cdb_make* %11, i32 0, i32 2
  %13 = load %struct.cdb_hplist*, %struct.cdb_hplist** %12, align 8
  store %struct.cdb_hplist* %13, %struct.cdb_hplist** %10, align 8
  %14 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %15 = icmp ne %struct.cdb_hplist* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %18 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CDB_HPLIST, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16, %4
  %23 = call i64 @emalloc(i32 24)
  %24 = inttoptr i64 %23 to %struct.cdb_hplist*
  store %struct.cdb_hplist* %24, %struct.cdb_hplist** %10, align 8
  %25 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %26 = icmp ne %struct.cdb_hplist* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %85

28:                                               ; preds = %22
  %29 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %30 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %32 = getelementptr inbounds %struct.cdb_make, %struct.cdb_make* %31, i32 0, i32 2
  %33 = load %struct.cdb_hplist*, %struct.cdb_hplist** %32, align 8
  %34 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %35 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %34, i32 0, i32 2
  store %struct.cdb_hplist* %33, %struct.cdb_hplist** %35, align 8
  %36 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %37 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %38 = getelementptr inbounds %struct.cdb_make, %struct.cdb_make* %37, i32 0, i32 2
  store %struct.cdb_hplist* %36, %struct.cdb_hplist** %38, align 8
  br label %39

39:                                               ; preds = %28, %16
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %42 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %45 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %40, i32* %48, align 4
  %49 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %50 = getelementptr inbounds %struct.cdb_make, %struct.cdb_make* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %53 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %56 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  %60 = load %struct.cdb_hplist*, %struct.cdb_hplist** %10, align 8
  %61 = getelementptr inbounds %struct.cdb_hplist, %struct.cdb_hplist* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %65 = getelementptr inbounds %struct.cdb_make, %struct.cdb_make* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %69 = call i32 @cdb_posplus(%struct.cdb_make* %68, i32 8)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %85

72:                                               ; preds = %39
  %73 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @cdb_posplus(%struct.cdb_make* %73, i32 %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 -1, i32* %5, align 4
  br label %85

78:                                               ; preds = %72
  %79 = load %struct.cdb_make*, %struct.cdb_make** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @cdb_posplus(%struct.cdb_make* %79, i32 %80)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %85

84:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %83, %77, %71, %27
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @emalloc(i32) #1

declare dso_local i32 @cdb_posplus(%struct.cdb_make*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
