; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_blackrock2_init.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_blackrock2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlackRock = type { double, double, i64, double, i32, double, i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blackrock2_init(%struct.BlackRock* %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.BlackRock*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.BlackRock* %0, %struct.BlackRock** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load double, double* %6, align 8
  %12 = fmul double %11, 1.000000e+00
  %13 = call i64 @sqrt(double %12)
  %14 = sitofp i64 %13 to double
  %15 = call double @next_power_of_two(double %14)
  store double %15, double* %9, align 8
  %16 = load double, double* %6, align 8
  %17 = load double, double* %9, align 8
  %18 = fdiv double %16, %17
  %19 = call double @next_power_of_two(double %18)
  store double %19, double* %10, align 8
  %20 = load double, double* %6, align 8
  %21 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %22 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %21, i32 0, i32 0
  store double %20, double* %22, align 8
  %23 = load double, double* %9, align 8
  %24 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %25 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %24, i32 0, i32 1
  store double %23, double* %25, align 8
  %26 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %27 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = call i8* @bit_count(double %28)
  %30 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %31 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %33 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = fsub double %34, 1.000000e+00
  %36 = fptoui double %35 to i64
  %37 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %38 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load double, double* %10, align 8
  %40 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %41 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %40, i32 0, i32 3
  store double %39, double* %41, align 8
  %42 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %43 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %42, i32 0, i32 3
  %44 = load double, double* %43, align 8
  %45 = call i8* @bit_count(double %44)
  %46 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %47 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %49 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %48, i32 0, i32 3
  %50 = load double, double* %49, align 8
  %51 = fsub double %50, 1.000000e+00
  %52 = fptosi double %51 to i64
  %53 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %54 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %53, i32 0, i32 6
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %57 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load double, double* %7, align 8
  %59 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %60 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %59, i32 0, i32 5
  store double %58, double* %60, align 8
  %61 = load double, double* %6, align 8
  %62 = load %struct.BlackRock*, %struct.BlackRock** %5, align 8
  %63 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %62, i32 0, i32 0
  store double %61, double* %63, align 8
  ret void
}

declare dso_local double @next_power_of_two(double) #1

declare dso_local i64 @sqrt(double) #1

declare dso_local i8* @bit_count(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
