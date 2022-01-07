; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/tablesample/extr_bernoulli.c_bernoulli_beginsamplescan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/tablesample/extr_bernoulli.c_bernoulli_beginsamplescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLESAMPLE_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"sample percentage must be between 0 and 100\00", align 1
@PG_UINT32_MAX = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32, i32)* @bernoulli_beginsamplescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bernoulli_beginsamplescan(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call double @DatumGetFloat4(i32 %18)
  store double %19, double* %10, align 8
  %20 = load double, double* %10, align 8
  %21 = fcmp olt double %20, 0.000000e+00
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load double, double* %10, align 8
  %24 = fcmp ogt double %23, 1.000000e+02
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load double, double* %10, align 8
  %27 = call i64 @isnan(double %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %22, %4
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_TABLESAMPLE_ARGUMENT, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i64, i64* @PG_UINT32_MAX, align 8
  %37 = sitofp i64 %36 to double
  %38 = fadd double %37, 1.000000e+00
  %39 = load double, double* %10, align 8
  %40 = fmul double %38, %39
  %41 = fdiv double %40, 1.000000e+02
  %42 = call double @llvm.rint.f64(double %41)
  store double %42, double* %11, align 8
  %43 = load double, double* %11, align 8
  %44 = fptosi double %43 to i64
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @InvalidOffsetNumber, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load double, double* %10, align 8
  %56 = fcmp oge double %55, 2.500000e+01
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  ret void
}

declare dso_local double @DatumGetFloat4(i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
