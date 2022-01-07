; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_check_rrdcalc_comparisons.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_check_rrdcalc_comparisons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RRDCALC_STATUS_UNINITIALIZED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s is not zero.\0A\00", align 1
@RRDCALC_STATUS_REMOVED = common dso_local global i64 0, align 8
@RRDCALC_STATUS_UNDEFINED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s is not less than %s\0A\00", align 1
@RRDCALC_STATUS_CLEAR = common dso_local global i64 0, align 8
@RRDCALC_STATUS_RAISED = common dso_local global i64 0, align 8
@RRDCALC_STATUS_WARNING = common dso_local global i64 0, align 8
@RRDCALC_STATUS_CRITICAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"RRDCALC_STATUSes are sortable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_rrdcalc_comparisons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rrdcalc_comparisons() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @memset(i64* %2, i32 0, i32 8)
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @RRDCALC_STATUS_UNINITIALIZED, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = load i64, i64* @RRDCALC_STATUS_UNINITIALIZED, align 8
  %11 = call i8* @rrdcalc_status2string(i64 %10)
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 1, i32* %1, align 4
  br label %94

13:                                               ; preds = %0
  %14 = load i64, i64* @RRDCALC_STATUS_REMOVED, align 8
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* @RRDCALC_STATUS_UNDEFINED, align 8
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @stderr, align 4
  %21 = load i64, i64* %2, align 8
  %22 = call i8* @rrdcalc_status2string(i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = call i8* @rrdcalc_status2string(i64 %23)
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %24)
  store i32 1, i32* %1, align 4
  br label %94

26:                                               ; preds = %13
  %27 = load i64, i64* @RRDCALC_STATUS_UNDEFINED, align 8
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* @RRDCALC_STATUS_UNINITIALIZED, align 8
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = load i64, i64* %2, align 8
  %35 = call i8* @rrdcalc_status2string(i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = call i8* @rrdcalc_status2string(i64 %36)
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %37)
  store i32 1, i32* %1, align 4
  br label %94

39:                                               ; preds = %26
  %40 = load i64, i64* @RRDCALC_STATUS_UNINITIALIZED, align 8
  store i64 %40, i64* %2, align 8
  %41 = load i64, i64* @RRDCALC_STATUS_CLEAR, align 8
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @stderr, align 4
  %47 = load i64, i64* %2, align 8
  %48 = call i8* @rrdcalc_status2string(i64 %47)
  %49 = load i64, i64* %3, align 8
  %50 = call i8* @rrdcalc_status2string(i64 %49)
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %50)
  store i32 1, i32* %1, align 4
  br label %94

52:                                               ; preds = %39
  %53 = load i64, i64* @RRDCALC_STATUS_CLEAR, align 8
  store i64 %53, i64* %2, align 8
  %54 = load i64, i64* @RRDCALC_STATUS_RAISED, align 8
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* %3, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @stderr, align 4
  %60 = load i64, i64* %2, align 8
  %61 = call i8* @rrdcalc_status2string(i64 %60)
  %62 = load i64, i64* %3, align 8
  %63 = call i8* @rrdcalc_status2string(i64 %62)
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %63)
  store i32 1, i32* %1, align 4
  br label %94

65:                                               ; preds = %52
  %66 = load i64, i64* @RRDCALC_STATUS_RAISED, align 8
  store i64 %66, i64* %2, align 8
  %67 = load i64, i64* @RRDCALC_STATUS_WARNING, align 8
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @stderr, align 4
  %73 = load i64, i64* %2, align 8
  %74 = call i8* @rrdcalc_status2string(i64 %73)
  %75 = load i64, i64* %3, align 8
  %76 = call i8* @rrdcalc_status2string(i64 %75)
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %76)
  store i32 1, i32* %1, align 4
  br label %94

78:                                               ; preds = %65
  %79 = load i64, i64* @RRDCALC_STATUS_WARNING, align 8
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* @RRDCALC_STATUS_CRITICAL, align 8
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %2, align 8
  %82 = load i64, i64* %3, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @stderr, align 4
  %86 = load i64, i64* %2, align 8
  %87 = call i8* @rrdcalc_status2string(i64 %86)
  %88 = load i64, i64* %3, align 8
  %89 = call i8* @rrdcalc_status2string(i64 %88)
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %89)
  store i32 1, i32* %1, align 4
  br label %94

91:                                               ; preds = %78
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %94

94:                                               ; preds = %91, %84, %71, %58, %45, %32, %19, %8
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @rrdcalc_status2string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
