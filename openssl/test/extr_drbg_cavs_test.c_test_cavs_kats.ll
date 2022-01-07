; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbg_cavs_test.c_test_cavs_kats.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbg_cavs_test.c_test_cavs_kats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_kat = type { i32, i32 }

@USE_DF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_kat**, i32)* @test_cavs_kats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cavs_kats(%struct.drbg_kat** %0, i32 %1) #0 {
  %3 = alloca %struct.drbg_kat**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbg_kat*, align 8
  %6 = alloca i32, align 4
  store %struct.drbg_kat** %0, %struct.drbg_kat*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drbg_kat**, %struct.drbg_kat*** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.drbg_kat*, %struct.drbg_kat** %7, i64 %9
  %11 = load %struct.drbg_kat*, %struct.drbg_kat** %10, align 8
  store %struct.drbg_kat* %11, %struct.drbg_kat** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.drbg_kat*, %struct.drbg_kat** %5, align 8
  %13 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %33 [
    i32 130, label %15
    i32 129, label %21
    i32 128, label %27
  ]

15:                                               ; preds = %2
  %16 = load %struct.drbg_kat*, %struct.drbg_kat** %5, align 8
  %17 = call i32 @single_kat_no_reseed(%struct.drbg_kat* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %35

20:                                               ; preds = %15
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.drbg_kat*, %struct.drbg_kat** %5, align 8
  %23 = call i32 @single_kat_pr_false(%struct.drbg_kat* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %35

26:                                               ; preds = %21
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.drbg_kat*, %struct.drbg_kat** %5, align 8
  %29 = call i32 @single_kat_pr_true(%struct.drbg_kat* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %35

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %2
  br label %35

34:                                               ; preds = %32, %26, %20
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %33, %31, %25, %19
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @single_kat_no_reseed(%struct.drbg_kat*) #1

declare dso_local i32 @single_kat_pr_false(%struct.drbg_kat*) #1

declare dso_local i32 @single_kat_pr_true(%struct.drbg_kat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
