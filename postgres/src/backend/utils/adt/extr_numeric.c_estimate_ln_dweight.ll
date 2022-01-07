; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_estimate_ln_dweight.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_estimate_ln_dweight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }

@const_zero_point_nine = common dso_local global i32 0, align 4
@const_one_point_one = common dso_local global i32 0, align 4
@const_one = common dso_local global i32 0, align 4
@DEC_DIGITS = common dso_local global i32 0, align 4
@NBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @estimate_ln_dweight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_ln_dweight(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i64 @cmp_var(%struct.TYPE_8__* %8, i32* @const_zero_point_nine)
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = call i64 @cmp_var(%struct.TYPE_8__* %12, i32* @const_one_point_one)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = call i32 @init_var(%struct.TYPE_8__* %4)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = call i32 @sub_var(%struct.TYPE_8__* %17, i32* @const_one, %struct.TYPE_8__* %4)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DEC_DIGITS, align 4
  %26 = mul nsw i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @log10(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = add nsw i32 %26, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = call i32 @free_var(%struct.TYPE_8__* %4)
  br label %85

37:                                               ; preds = %11, %1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DEC_DIGITS, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 1
  br i1 %56, label %57, label %70

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NBASE, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @DEC_DIGITS, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %57, %42
  %71 = load i32, i32* %5, align 4
  %72 = sitofp i32 %71 to double
  %73 = call i32 @log(double %72)
  %74 = sitofp i32 %73 to double
  %75 = load i32, i32* %6, align 4
  %76 = sitofp i32 %75 to double
  %77 = fmul double %76, 0x40026BB1BBB55516
  %78 = fadd double %74, %77
  store double %78, double* %7, align 8
  %79 = load double, double* %7, align 8
  %80 = call i32 @Abs(double %79)
  %81 = call i64 @log10(i32 %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %70
  br label %85

85:                                               ; preds = %84, %35
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @cmp_var(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @init_var(%struct.TYPE_8__*) #1

declare dso_local i32 @sub_var(%struct.TYPE_8__*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @log10(i32) #1

declare dso_local i32 @free_var(%struct.TYPE_8__*) #1

declare dso_local i32 @log(double) #1

declare dso_local i32 @Abs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
