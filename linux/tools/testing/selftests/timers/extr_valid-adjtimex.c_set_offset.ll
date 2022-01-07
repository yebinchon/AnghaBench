; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_valid-adjtimex.c_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_valid-adjtimex.c_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@ADJ_SETOFFSET = common dso_local global i32 0, align 4
@ADJ_NANO = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"(sec: %ld  usec: %ld) \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_offset(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timex, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.timex* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* @ADJ_SETOFFSET, align 4
  %10 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load i32, i32* @ADJ_NANO, align 4
  %15 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @NSEC_PER_SEC, align 8
  %20 = sdiv i64 %18, %19
  %21 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @NSEC_PER_SEC, align 8
  %25 = srem i64 %23, %24
  %26 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* @NSEC_PER_SEC, align 8
  %41 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %35, %30, %13
  br label %75

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @USEC_PER_SEC, align 8
  %49 = sdiv i64 %47, %48
  %50 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @USEC_PER_SEC, align 8
  %54 = srem i64 %52, %53
  %55 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* @USEC_PER_SEC, align 8
  %70 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %64, %59, %46
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* @CLOCK_REALTIME, align 4
  %77 = call i32 @clock_adjtime(i32 %76, %struct.timex* %6)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %83, i64 %86)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %90

89:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @clock_adjtime(i32, %struct.timex*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
