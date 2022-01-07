; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_tm2timestamp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_tm2timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32, i32, i32, i32 }

@POSTGRES_EPOCH_JDATE = common dso_local global i64 0, align 8
@USECS_PER_DAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm2timestamp(%struct.pg_tm* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pg_tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pg_tm* %0, %struct.pg_tm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %13 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %16 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %19 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_VALID_JULIAN(i32 %14, i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i64*, i64** %9, align 8
  store i64 0, i64* %24, align 8
  store i32 -1, i32* %5, align 4
  br label %100

25:                                               ; preds = %4
  %26 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %27 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %30 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %33 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @date2j(i32 %28, i32 %31, i32 %34)
  %36 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %10, align 8
  %38 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %39 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %42 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %45 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @time2t(i32 %40, i32 %43, i32 %46, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @USECS_PER_DAY, align 8
  %51 = mul nsw i64 %49, %50
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* @USECS_PER_DAY, align 8
  %60 = sdiv i64 %58, %59
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %25
  %64 = load i64*, i64** %9, align 8
  store i64 0, i64* %64, align 8
  store i32 -1, i32* %5, align 4
  br label %100

65:                                               ; preds = %25
  %66 = load i64*, i64** %9, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69, %65
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = icmp slt i64 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %69
  %80 = load i64*, i64** %9, align 8
  store i64 0, i64* %80, align 8
  store i32 -1, i32* %5, align 4
  br label %100

81:                                               ; preds = %76, %72
  %82 = load i32*, i32** %8, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 0, %88
  %90 = call i64 @dt2local(i64 %86, i32 %89)
  %91 = load i64*, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %81
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @IS_VALID_TIMESTAMP(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i64*, i64** %9, align 8
  store i64 0, i64* %98, align 8
  store i32 -1, i32* %5, align 4
  br label %100

99:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %97, %79, %63, %23
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @IS_VALID_JULIAN(i32, i32, i32) #1

declare dso_local i64 @date2j(i32, i32, i32) #1

declare dso_local i64 @time2t(i32, i32, i32, i32) #1

declare dso_local i64 @dt2local(i64, i32) #1

declare dso_local i32 @IS_VALID_TIMESTAMP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
