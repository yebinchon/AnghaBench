; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_pixie-timer.c_pixie_time_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_pixie-timer.c_pixie_time_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pixie_time_selftest.duration = internal constant double 4.567890e+05, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"timing error, long delay\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"timing error, long delay %5.0f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pixie_time_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = call double (...) @pixie_gettime()
  store double %5, double* %2, align 8
  %6 = call i32 @pixie_usleep(double 4.567890e+05)
  %7 = call double (...) @pixie_gettime()
  store double %7, double* %3, align 8
  %8 = load double, double* %3, align 8
  %9 = load double, double* %2, align 8
  %10 = fsub double %8, %9
  store double %10, double* %4, align 8
  %11 = load double, double* %4, align 8
  %12 = fcmp olt double %11, 0x4119179866666667
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %26

16:                                               ; preds = %0
  %17 = load double, double* %4, align 8
  %18 = fcmp olt double 0x4120BA6599999999, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = load double, double* %4, align 8
  %22 = fmul double %21, 1.000000e+02
  %23 = fdiv double %22, 4.567890e+05
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), double %23)
  store i32 1, i32* %1, align 4
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %19, %13
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local double @pixie_gettime(...) #1

declare dso_local i32 @pixie_usleep(double) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
