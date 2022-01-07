; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_termIsEquivalence.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_termIsEquivalence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@SQLITE_Transitive = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @termIsEquivalence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @termIsEquivalence(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SQLITE_Transitive, align 4
  %13 = call i32 @OptimizationEnabled(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TK_EQ, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TK_IS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %80

29:                                               ; preds = %22, %16
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load i32, i32* @EP_FromJoin, align 4
  %32 = call i64 @ExprHasProperty(%struct.TYPE_9__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %80

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call signext i8 @sqlite3ExprAffinity(i32 %38)
  store i8 %39, i8* %6, align 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call signext i8 @sqlite3ExprAffinity(i32 %42)
  store i8 %43, i8* %7, align 1
  %44 = load i8, i8* %6, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %35
  %50 = load i8, i8* %6, align 1
  %51 = call i32 @sqlite3IsNumericAffinity(i8 signext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8, i8* %7, align 1
  %55 = call i32 @sqlite3IsNumericAffinity(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %49
  store i32 0, i32* %3, align 4
  br label %80

58:                                               ; preds = %53, %35
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32* @sqlite3BinaryCompareCollSeq(%struct.TYPE_8__* %59, i32 %62, i32 %65)
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i64 @sqlite3IsBinary(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %80

71:                                               ; preds = %58
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sqlite3ExprCollSeqMatch(%struct.TYPE_8__* %72, i32 %75, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %70, %57, %34, %28, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @OptimizationEnabled(i32, i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_9__*, i32) #1

declare dso_local signext i8 @sqlite3ExprAffinity(i32) #1

declare dso_local i32 @sqlite3IsNumericAffinity(i8 signext) #1

declare dso_local i32* @sqlite3BinaryCompareCollSeq(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @sqlite3IsBinary(i32*) #1

declare dso_local i32 @sqlite3ExprCollSeqMatch(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
