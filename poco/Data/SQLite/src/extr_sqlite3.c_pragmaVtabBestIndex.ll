; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pragmaVtabBestIndex.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pragmaVtabBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, i32, i32, %struct.TYPE_5__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @pragmaVtabBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pragmaVtabBestIndex(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.sqlite3_index_constraint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store double 1.000000e+00, double* %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %134

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %23, align 8
  store %struct.sqlite3_index_constraint* %24, %struct.sqlite3_index_constraint** %7, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %26, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %73, %21
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %27
  %34 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %35 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %73

39:                                               ; preds = %33
  %40 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %41 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %73

46:                                               ; preds = %39
  %47 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %48 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %73

55:                                               ; preds = %46
  %56 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %57 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 2
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %55, %54, %45, %38
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %77 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %76, i32 1
  store %struct.sqlite3_index_constraint* %77, %struct.sqlite3_index_constraint** %7, align 8
  br label %27

78:                                               ; preds = %27
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store double 0x41DFFFFFFFC00000, double* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 2147483647, i32* %86, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %134

88:                                               ; preds = %78
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %88
  %110 = load i32, i32* @SQLITE_OK, align 4
  store i32 %110, i32* %3, align 4
  br label %134

111:                                              ; preds = %88
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store double 2.000000e+01, double* %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i32 20, i32* %115, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 2, i32* %125, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  %133 = load i32, i32* @SQLITE_OK, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %111, %109, %82, %19
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
