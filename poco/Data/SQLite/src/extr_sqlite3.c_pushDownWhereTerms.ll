; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pushDownWhereTerms.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pushDownWhereTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_19__*, i8*, i8*, i32, i64 }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, i32, i32, i64, %struct.TYPE_20__* }

@SF_Recursive = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_21__*, i32, i32)* @pushDownWhereTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushDownWhereTerms(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_21__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %16 = icmp eq %struct.TYPE_21__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %149

18:                                               ; preds = %5
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SF_Recursive, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %149

26:                                               ; preds = %18
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %149

32:                                               ; preds = %26
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %149

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %45, %38
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TK_AND, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @pushDownWhereTerms(%struct.TYPE_20__* %46, %struct.TYPE_19__* %47, %struct.TYPE_21__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %9, align 8
  br label %39

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = load i32, i32* @EP_FromJoin, align 4
  %65 = call i64 @ExprHasProperty(%struct.TYPE_21__* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %62
  store i32 0, i32* %6, align 4
  br label %149

74:                                               ; preds = %67, %59
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = load i32, i32* @EP_FromJoin, align 4
  %77 = call i64 @ExprHasProperty(%struct.TYPE_21__* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %149

86:                                               ; preds = %79, %74
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @sqlite3ExprIsTableConstant(%struct.TYPE_21__* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %147

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %142, %91
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %96 = icmp ne %struct.TYPE_19__* %95, null
  br i1 %96, label %97, label %146

97:                                               ; preds = %94
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %102 = call %struct.TYPE_21__* @sqlite3ExprDup(i32 %100, %struct.TYPE_21__* %101, i32 0)
  store %struct.TYPE_21__* %102, %struct.TYPE_21__** %12, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %104 = call i32 @unsetJoinExpr(%struct.TYPE_21__* %103, i32 -1)
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  store i32 %114, i32* %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %117 = call %struct.TYPE_21__* @substExpr(%struct.TYPE_18__* %14, %struct.TYPE_21__* %116)
  store %struct.TYPE_21__* %117, %struct.TYPE_21__** %12, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SF_Aggregate, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %97
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %130 = call i8* @sqlite3ExprAnd(%struct.TYPE_20__* %125, i8* %128, %struct.TYPE_21__* %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  br label %142

133:                                              ; preds = %97
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %139 = call i8* @sqlite3ExprAnd(%struct.TYPE_20__* %134, i8* %137, %struct.TYPE_21__* %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %133, %124
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  store %struct.TYPE_19__* %145, %struct.TYPE_19__** %8, align 8
  br label %94

146:                                              ; preds = %94
  br label %147

147:                                              ; preds = %146, %86
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %85, %73, %37, %31, %25, %17
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @sqlite3ExprIsTableConstant(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @sqlite3ExprDup(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @unsetJoinExpr(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @substExpr(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i8* @sqlite3ExprAnd(%struct.TYPE_20__*, i8*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
