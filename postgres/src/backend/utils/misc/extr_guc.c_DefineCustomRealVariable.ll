; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_DefineCustomRealVariable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_DefineCustomRealVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_real = type { double*, double, double, double, double, i32, i32, i32, i32 }

@PGC_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DefineCustomRealVariable(i8* %0, i8* %1, i8* %2, double* %3, double %4, double %5, double %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.config_real*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store double* %3, double** %16, align 8
  store double %4, double* %17, align 8
  store double %5, double* %18, align 8
  store double %6, double* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* @PGC_REAL, align 4
  %32 = call i64 @init_custom_variable(i8* %26, i8* %27, i8* %28, i32 %29, i32 %30, i32 %31, i32 56)
  %33 = inttoptr i64 %32 to %struct.config_real*
  store %struct.config_real* %33, %struct.config_real** %25, align 8
  %34 = load double*, double** %16, align 8
  %35 = load %struct.config_real*, %struct.config_real** %25, align 8
  %36 = getelementptr inbounds %struct.config_real, %struct.config_real* %35, i32 0, i32 0
  store double* %34, double** %36, align 8
  %37 = load double, double* %17, align 8
  %38 = load %struct.config_real*, %struct.config_real** %25, align 8
  %39 = getelementptr inbounds %struct.config_real, %struct.config_real* %38, i32 0, i32 1
  store double %37, double* %39, align 8
  %40 = load double, double* %17, align 8
  %41 = load %struct.config_real*, %struct.config_real** %25, align 8
  %42 = getelementptr inbounds %struct.config_real, %struct.config_real* %41, i32 0, i32 2
  store double %40, double* %42, align 8
  %43 = load double, double* %18, align 8
  %44 = load %struct.config_real*, %struct.config_real** %25, align 8
  %45 = getelementptr inbounds %struct.config_real, %struct.config_real* %44, i32 0, i32 3
  store double %43, double* %45, align 8
  %46 = load double, double* %19, align 8
  %47 = load %struct.config_real*, %struct.config_real** %25, align 8
  %48 = getelementptr inbounds %struct.config_real, %struct.config_real* %47, i32 0, i32 4
  store double %46, double* %48, align 8
  %49 = load i32, i32* %22, align 4
  %50 = load %struct.config_real*, %struct.config_real** %25, align 8
  %51 = getelementptr inbounds %struct.config_real, %struct.config_real* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load %struct.config_real*, %struct.config_real** %25, align 8
  %54 = getelementptr inbounds %struct.config_real, %struct.config_real* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %24, align 4
  %56 = load %struct.config_real*, %struct.config_real** %25, align 8
  %57 = getelementptr inbounds %struct.config_real, %struct.config_real* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.config_real*, %struct.config_real** %25, align 8
  %59 = getelementptr inbounds %struct.config_real, %struct.config_real* %58, i32 0, i32 5
  %60 = call i32 @define_custom_variable(i32* %59)
  ret void
}

declare dso_local i64 @init_custom_variable(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @define_custom_variable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
