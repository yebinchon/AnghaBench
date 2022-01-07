; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_statement.c_firebird_stmt_describe.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_statement.c_firebird_stmt_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.pdo_column_data*, i64 }
%struct.pdo_column_data = type { i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }

@PDO_PARAM_STR = common dso_local global i8* null, align 8
@PDO_PARAM_INT = common dso_local global i8* null, align 8
@PDO_PARAM_BOOL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @firebird_stmt_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_stmt_describe(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.pdo_column_data*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.pdo_column_data*, %struct.pdo_column_data** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %16, i64 %18
  store %struct.pdo_column_data* %19, %struct.pdo_column_data** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %25
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %7, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = add nsw i32 %45, 1
  br label %51

47:                                               ; preds = %33, %2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = phi i32 [ %46, %38 ], [ %50, %47 ]
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %58 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %63 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @zend_string_alloc(i32 %64, i32 0)
  %66 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %67 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %69 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @ZSTR_VAL(i32 %70)
  store i8* %71, i8** %9, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %51
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memmove(i8* %78, i32 %81, i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  store i8 46, i8* %92, align 1
  br label %94

94:                                               ; preds = %77, %51
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memmove(i8* %95, i32 %98, i32 %101)
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %94
  %114 = load i8*, i8** @PDO_PARAM_STR, align 8
  %115 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %116 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %135

117:                                              ; preds = %94
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, -2
  switch i32 %121, label %130 [
    i32 128, label %122
    i32 129, label %122
    i32 131, label %126
  ]

122:                                              ; preds = %117, %117
  %123 = load i8*, i8** @PDO_PARAM_INT, align 8
  %124 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %125 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %134

126:                                              ; preds = %117
  %127 = load i8*, i8** @PDO_PARAM_BOOL, align 8
  %128 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %129 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %134

130:                                              ; preds = %117
  %131 = load i8*, i8** @PDO_PARAM_STR, align 8
  %132 = load %struct.pdo_column_data*, %struct.pdo_column_data** %6, align 8
  %133 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %130, %126, %122
  br label %135

135:                                              ; preds = %134, %113
  ret i32 1
}

declare dso_local i32 @zend_string_alloc(i32, i32) #1

declare dso_local i8* @ZSTR_VAL(i32) #1

declare dso_local i32 @memmove(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
