; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_add_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_add_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8* }

@NUMERIC_POS = common dso_local global i64 0, align 8
@NUMERIC_NEG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @add_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_var(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
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
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NUMERIC_POS, align 8
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
  br label %60

26:                                               ; preds = %12
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = call i32 @cmp_abs(%struct.TYPE_14__* %27, %struct.TYPE_14__* %28)
  switch i32 %29, label %59 [
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
  br label %59

42:                                               ; preds = %26
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i32 @sub_abs(%struct.TYPE_14__* %43, %struct.TYPE_14__* %44, %struct.TYPE_14__* %45)
  %47 = load i64, i64* @NUMERIC_POS, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %59

50:                                               ; preds = %26
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = call i32 @sub_abs(%struct.TYPE_14__* %51, %struct.TYPE_14__* %52, %struct.TYPE_14__* %53)
  %55 = load i8*, i8** @NUMERIC_NEG, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %26, %50, %42, %30
  br label %60

60:                                               ; preds = %59, %18
  br label %111

61:                                               ; preds = %3
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NUMERIC_POS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = call i32 @cmp_abs(%struct.TYPE_14__* %68, %struct.TYPE_14__* %69)
  switch i32 %70, label %100 [
    i32 0, label %71
    i32 1, label %83
    i32 -1, label %92
  ]

71:                                               ; preds = %67
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = call i32 @zero_var(%struct.TYPE_14__* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @Max(i8* %76, i8* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %100

83:                                               ; preds = %67
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = call i32 @sub_abs(%struct.TYPE_14__* %84, %struct.TYPE_14__* %85, %struct.TYPE_14__* %86)
  %88 = load i8*, i8** @NUMERIC_NEG, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %100

92:                                               ; preds = %67
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = call i32 @sub_abs(%struct.TYPE_14__* %93, %struct.TYPE_14__* %94, %struct.TYPE_14__* %95)
  %97 = load i64, i64* @NUMERIC_POS, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %67, %92, %83, %71
  br label %110

101:                                              ; preds = %61
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = call i32 @add_abs(%struct.TYPE_14__* %102, %struct.TYPE_14__* %103, %struct.TYPE_14__* %104)
  %106 = load i8*, i8** @NUMERIC_NEG, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %101, %100
  br label %111

111:                                              ; preds = %110, %60
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
