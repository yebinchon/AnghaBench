; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_check_log_duration.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_check_log_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_duration = common dso_local global i64 0, align 8
@log_min_duration_sample = common dso_local global i32 0, align 4
@log_min_duration_statement = common dso_local global i32 0, align 4
@xact_is_sampled = common dso_local global i64 0, align 8
@log_statement_sample_rate = common dso_local global i32 0, align 4
@MAX_RANDOM_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%ld.%03d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_log_duration(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* @log_duration, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @log_min_duration_sample, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @log_min_duration_statement, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @xact_is_sampled, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %138

23:                                               ; preds = %20, %17, %14, %2
  store i32 0, i32* %11, align 4
  %24 = call i32 (...) @GetCurrentStatementStartTimestamp()
  %25 = call i32 (...) @GetCurrentTimestamp()
  %26 = call i32 @TimestampDifference(i32 %24, i32 %25, i64* %6, i32* %7)
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 1000
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @log_min_duration_statement, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @log_min_duration_statement, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @log_min_duration_statement, align 4
  %37 = sdiv i32 %36, 1000
  %38 = sext i32 %37 to i64
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = mul nsw i64 %41, 1000
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* @log_min_duration_statement, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp sge i64 %45, %47
  br label %49

49:                                               ; preds = %40, %34
  %50 = phi i1 [ true, %34 ], [ %48, %40 ]
  br label %51

51:                                               ; preds = %49, %31
  %52 = phi i1 [ false, %31 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %23
  %54 = phi i1 [ true, %23 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @log_min_duration_sample, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @log_min_duration_sample, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @log_min_duration_sample, align 4
  %64 = sdiv i32 %63, 1000
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %6, align 8
  %69 = mul nsw i64 %68, 1000
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32, i32* @log_min_duration_sample, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp sge i64 %72, %74
  br label %76

76:                                               ; preds = %67, %61
  %77 = phi i1 [ true, %61 ], [ %75, %67 ]
  br label %78

78:                                               ; preds = %76, %58
  %79 = phi i1 [ false, %58 ], [ %77, %76 ]
  br label %80

80:                                               ; preds = %78, %53
  %81 = phi i1 [ true, %53 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load i32, i32* @log_statement_sample_rate, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* @log_statement_sample_rate, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = call i32 (...) @random()
  %93 = load i32, i32* @log_statement_sample_rate, align 4
  %94 = load i32, i32* @MAX_RANDOM_VALUE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = icmp sle i32 %92, %95
  br label %97

97:                                               ; preds = %91, %88
  %98 = phi i1 [ true, %88 ], [ %96, %91 ]
  br label %99

99:                                               ; preds = %97, %85
  %100 = phi i1 [ false, %85 ], [ %98, %97 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %99, %80
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @log_duration, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @xact_is_sampled, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %111, %108, %105, %102
  %115 = load i8*, i8** %4, align 8
  %116 = load i64, i64* %6, align 8
  %117 = mul nsw i64 %116, 1000
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = load i32, i32* %7, align 4
  %122 = srem i32 %121, 1000
  %123 = call i32 @snprintf(i8* %115, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %120, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* @xact_is_sampled, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129, %126, %114
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 2, i32* %3, align 4
  br label %139

136:                                              ; preds = %132, %129
  store i32 1, i32* %3, align 4
  br label %139

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137, %20
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %136, %135
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @GetCurrentStatementStartTimestamp(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
