; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_escape_analysis.c_is_local_def.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_escape_analysis.c_is_local_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@IS_CONST = common dso_local global i32 0, align 4
@ZEND_ACC_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32*)* @is_local_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_local_def(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %19
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %12, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %25
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %13, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %89 [
    i32 134, label %36
    i32 141, label %36
    i32 128, label %36
    i32 140, label %36
    i32 133, label %37
  ]

36:                                               ; preds = %32, %32, %32, %32
  store i32 1, i32* %6, align 4
  br label %104

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IS_CONST, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CRT_CONSTANT(i32 %47)
  %49 = add nsw i32 %48, 1
  %50 = call i32 @Z_STR_P(i32 %49)
  %51 = call %struct.TYPE_13__* @get_class_entry(i32* %44, i32 %50)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %14, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %87

54:                                               ; preds = %43
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ZEND_ACC_INHERITED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  store i32 1, i32* %6, align 4
  br label %104

87:                                               ; preds = %79, %74, %69, %64, %59, %54, %43
  br label %88

88:                                               ; preds = %87, %37
  br label %89

89:                                               ; preds = %32, %88
  br label %103

90:                                               ; preds = %5
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %101 [
    i32 140, label %100
    i32 139, label %100
    i32 137, label %100
    i32 135, label %100
    i32 138, label %100
    i32 136, label %100
    i32 129, label %100
    i32 130, label %100
    i32 131, label %100
    i32 132, label %100
  ]

100:                                              ; preds = %96, %96, %96, %96, %96, %96, %96, %96, %96, %96
  store i32 1, i32* %6, align 4
  br label %104

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %89
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %100, %86, %36
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_13__* @get_class_entry(i32*, i32) #1

declare dso_local i32 @Z_STR_P(i32) #1

declare dso_local i32 @CRT_CONSTANT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
