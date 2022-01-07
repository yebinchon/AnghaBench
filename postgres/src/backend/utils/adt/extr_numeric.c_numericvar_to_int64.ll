; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numericvar_to_int64.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numericvar_to_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32* }

@NUMERIC_NEG = common dso_local global i64 0, align 8
@NBASE = common dso_local global i32 0, align 4
@PG_INT64_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @numericvar_to_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numericvar_to_int64(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = call i32 @init_var(%struct.TYPE_9__* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = call i32 @set_var_from_var(%struct.TYPE_9__* %14, %struct.TYPE_9__* %12)
  %16 = call i32 @round_var(%struct.TYPE_9__* %12, i32 0)
  %17 = call i32 @strip_var(%struct.TYPE_9__* %12)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  %24 = call i32 @free_var(%struct.TYPE_9__* %12)
  store i32 1, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sle i32 %31, %33
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NUMERIC_NEG, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %80, %35
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @NBASE, align 4
  %57 = call i32 @pg_mul_s64_overflow(i32 %55, i32 %56, i32* %10)
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @free_var(%struct.TYPE_9__* %12)
  store i32 0, i32* %3, align 4
  br label %101

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pg_sub_s64_overflow(i32 %67, i32 %72, i32* %10)
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @free_var(%struct.TYPE_9__* %12)
  store i32 0, i32* %3, align 4
  br label %101

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %50

83:                                               ; preds = %50
  %84 = call i32 @free_var(%struct.TYPE_9__* %12)
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @PG_INT64_MIN, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %101

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %83
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %94, %76, %60, %22
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @init_var(%struct.TYPE_9__*) #1

declare dso_local i32 @set_var_from_var(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @round_var(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @strip_var(%struct.TYPE_9__*) #1

declare dso_local i32 @free_var(%struct.TYPE_9__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pg_mul_s64_overflow(i32, i32, i32*) #1

declare dso_local i32 @pg_sub_s64_overflow(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
