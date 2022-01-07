; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pushDownWhereTerms.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pushDownWhereTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32, i32, i64, %struct.TYPE_18__* }

@SF_Aggregate = common dso_local global i32 0, align 4
@SF_Recursive = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__*, i32)* @pushDownWhereTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushDownWhereTerms(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %15 = icmp eq %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %132

17:                                               ; preds = %4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %12, align 8
  br label %19

19:                                               ; preds = %50, %17
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SF_Aggregate, align 4
  %27 = load i32, i32* @SF_Recursive, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SF_Aggregate, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @testcase(i32 %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SF_Recursive, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @testcase(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = icmp ne %struct.TYPE_17__* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @testcase(i32 %47)
  store i32 0, i32* %5, align 4
  br label %132

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %12, align 8
  br label %19

54:                                               ; preds = %19
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %132

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %67, %60
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TK_AND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @pushDownWhereTerms(%struct.TYPE_18__* %68, %struct.TYPE_17__* %69, %struct.TYPE_19__* %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %8, align 8
  br label %61

80:                                               ; preds = %61
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = load i32, i32* @EP_FromJoin, align 4
  %83 = call i64 @ExprHasProperty(%struct.TYPE_19__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %132

86:                                               ; preds = %80
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @sqlite3ExprIsTableConstant(%struct.TYPE_19__* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %130

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %97, %91
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = icmp ne %struct.TYPE_17__* %95, null
  br i1 %96, label %97, label %129

97:                                               ; preds = %94
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %102 = call %struct.TYPE_19__* @sqlite3ExprDup(i32 %100, %struct.TYPE_19__* %101, i32 0)
  store %struct.TYPE_19__* %102, %struct.TYPE_19__** %10, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  store %struct.TYPE_18__* %103, %struct.TYPE_18__** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = call %struct.TYPE_19__* @substExpr(%struct.TYPE_16__* %13, %struct.TYPE_19__* %114)
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %10, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %123 = call i32 @sqlite3ExprAnd(i32 %118, i32 %121, %struct.TYPE_19__* %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  store %struct.TYPE_17__* %128, %struct.TYPE_17__** %7, align 8
  br label %94

129:                                              ; preds = %94
  br label %130

130:                                              ; preds = %129, %86
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %85, %59, %31, %16
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @sqlite3ExprIsTableConstant(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3ExprDup(i32, %struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @substExpr(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3ExprAnd(i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
