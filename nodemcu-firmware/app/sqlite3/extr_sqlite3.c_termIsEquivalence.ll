; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_termIsEquivalence.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_termIsEquivalence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i8* }

@SQLITE_Transitive = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @termIsEquivalence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @termIsEquivalence(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SQLITE_Transitive, align 4
  %15 = call i32 @OptimizationEnabled(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TK_EQ, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TK_IS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %112

31:                                               ; preds = %24, %18
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i32, i32* @EP_FromJoin, align 4
  %34 = call i64 @ExprHasProperty(%struct.TYPE_12__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %112

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call signext i8 @sqlite3ExprAffinity(i32 %40)
  store i8 %41, i8* %6, align 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call signext i8 @sqlite3ExprAffinity(i32 %44)
  store i8 %45, i8* %7, align 1
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %37
  %52 = load i8, i8* %6, align 1
  %53 = call i32 @sqlite3IsNumericAffinity(i8 signext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8, i8* %7, align 1
  %57 = call i32 @sqlite3IsNumericAffinity(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %51
  store i32 0, i32* %3, align 4
  br label %112

60:                                               ; preds = %55, %37
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_13__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_11__* %61, i32 %64, i32 %67)
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %8, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = icmp eq %struct.TYPE_13__* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %60
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @sqlite3StrICmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %60
  store i32 1, i32* %3, align 4
  br label %112

78:                                               ; preds = %71
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_13__* @sqlite3ExprCollSeq(%struct.TYPE_11__* %79, i32 %82)
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %8, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = icmp ne %struct.TYPE_13__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i8* [ %89, %86 ], [ null, %90 ]
  store i8* %92, i8** %9, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.TYPE_13__* @sqlite3ExprCollSeq(%struct.TYPE_11__* %93, i32 %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %8, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = icmp ne %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  br label %105

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i8* [ %103, %100 ], [ null, %104 ]
  store i8* %106, i8** %10, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = call i64 @sqlite3_stricmp(i8* %107, i8* %108)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %105, %77, %59, %36, %30, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @OptimizationEnabled(i32, i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_12__*, i32) #1

declare dso_local signext i8 @sqlite3ExprAffinity(i32) #1

declare dso_local i32 @sqlite3IsNumericAffinity(i8 signext) #1

declare dso_local %struct.TYPE_13__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @sqlite3ExprCollSeq(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
