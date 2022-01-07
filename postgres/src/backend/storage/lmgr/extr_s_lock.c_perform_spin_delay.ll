; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_s_lock.c_perform_spin_delay.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_s_lock.c_perform_spin_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32 }

@spins_per_delay = common dso_local global i64 0, align 8
@NUM_DELAYS = common dso_local global i64 0, align 8
@MIN_DELAY_USEC = common dso_local global i8* null, align 8
@MAX_RANDOM_VALUE = common dso_local global i64 0, align 8
@MAX_DELAY_USEC = common dso_local global double 0.000000e+00, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perform_spin_delay(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 (...) @SPIN_DELAY()
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @spins_per_delay, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %73

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* @NUM_DELAYS, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @s_lock_stuck(i32 %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %17, %10
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** @MIN_DELAY_USEC, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pg_usleep(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sitofp i32 %45 to double
  %47 = call i64 (...) @random()
  %48 = sitofp i64 %47 to double
  %49 = load i64, i64* @MAX_RANDOM_VALUE, align 8
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %48, %50
  %52 = fmul double %46, %51
  %53 = fadd double %52, 5.000000e-01
  %54 = fptosi double %53 to i32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sitofp i32 %61 to double
  %63 = load double, double* @MAX_DELAY_USEC, align 8
  %64 = fcmp ogt double %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %38
  %66 = load i8*, i8** @MIN_DELAY_USEC, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %38
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %1
  ret void
}

declare dso_local i32 @SPIN_DELAY(...) #1

declare dso_local i32 @s_lock_stuck(i32, i32, i32) #1

declare dso_local i32 @pg_usleep(i32) #1

declare dso_local i64 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
