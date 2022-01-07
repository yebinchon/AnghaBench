; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereUsablePartialIndex.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereUsablePartialIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

@TK_AND = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*, %struct.TYPE_11__*)* @whereUsablePartialIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereUsablePartialIndex(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  br label %11

11:                                               ; preds = %26, %3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TK_AND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = call i32 @whereUsablePartialIndex(i32 %18, %struct.TYPE_10__* %19, %struct.TYPE_11__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %68

26:                                               ; preds = %17
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %7, align 8
  br label %11

30:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  br label %34

34:                                               ; preds = %62, %30
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %10, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @sqlite3ExprImpliesExpr(%struct.TYPE_11__* %44, %struct.TYPE_11__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = load i32, i32* @EP_FromJoin, align 4
  %52 = call i32 @ExprHasProperty(%struct.TYPE_11__* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %49
  store i32 1, i32* %4, align 4
  br label %68

61:                                               ; preds = %54, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 1
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %9, align 8
  br label %34

67:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %60, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @sqlite3ExprImpliesExpr(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
