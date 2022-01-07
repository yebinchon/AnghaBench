; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_sub_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_sub_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8* }

@NUMERIC_POS = common dso_local global i64 0, align 8
@NUMERIC_NEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @sub_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub_var(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NUMERIC_POS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NUMERIC_NEG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = call i32 @add_abs(%struct.TYPE_14__* %19, %struct.TYPE_14__* %20, %struct.TYPE_14__* %21)
  %23 = load i64, i64* @NUMERIC_POS, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %59

26:                                               ; preds = %12
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = call i32 @cmp_abs(%struct.TYPE_14__* %27, %struct.TYPE_14__* %28)
  switch i32 %29, label %58 [
    i32 0, label %30
    i32 1, label %42
    i32 -1, label %50
  ]

30:                                               ; preds = %26
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = call i32 @zero_var(%struct.TYPE_14__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @Max(i8* %35, i8* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %58

42:                                               ; preds = %26
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i32 @sub_abs(%struct.TYPE_14__* %43, %struct.TYPE_14__* %44, %struct.TYPE_14__* %45)
  %47 = load i64, i64* @NUMERIC_POS, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %58

50:                                               ; preds = %26
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = call i32 @sub_abs(%struct.TYPE_14__* %51, %struct.TYPE_14__* %52, %struct.TYPE_14__* %53)
  %55 = load i64, i64* @NUMERIC_NEG, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %26, %50, %42, %30
  br label %59

59:                                               ; preds = %58, %18
  br label %108

60:                                               ; preds = %3
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NUMERIC_NEG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = call i32 @cmp_abs(%struct.TYPE_14__* %67, %struct.TYPE_14__* %68)
  switch i32 %69, label %98 [
    i32 0, label %70
    i32 1, label %82
    i32 -1, label %90
  ]

70:                                               ; preds = %66
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = call i32 @zero_var(%struct.TYPE_14__* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @Max(i8* %75, i8* %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %98

82:                                               ; preds = %66
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = call i32 @sub_abs(%struct.TYPE_14__* %83, %struct.TYPE_14__* %84, %struct.TYPE_14__* %85)
  %87 = load i64, i64* @NUMERIC_NEG, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %98

90:                                               ; preds = %66
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = call i32 @sub_abs(%struct.TYPE_14__* %91, %struct.TYPE_14__* %92, %struct.TYPE_14__* %93)
  %95 = load i64, i64* @NUMERIC_POS, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %66, %90, %82, %70
  br label %107

99:                                               ; preds = %60
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = call i32 @add_abs(%struct.TYPE_14__* %100, %struct.TYPE_14__* %101, %struct.TYPE_14__* %102)
  %104 = load i64, i64* @NUMERIC_NEG, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %99, %98
  br label %108

108:                                              ; preds = %107, %59
  ret void
}

declare dso_local i32 @add_abs(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @cmp_abs(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @zero_var(%struct.TYPE_14__*) #1

declare dso_local i8* @Max(i8*, i8*) #1

declare dso_local i32 @sub_abs(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
