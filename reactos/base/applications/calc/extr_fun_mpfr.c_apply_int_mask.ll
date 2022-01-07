; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_apply_int_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_apply_int_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"FFFFFFFFFFFFFFFF\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"00000000FFFFFFFF\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"000000000000FFFF\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"00000000000000FF\00", align 1
@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_int_mask(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  switch i32 %5, label %18 [
    i32 129, label %6
    i32 130, label %9
    i32 128, label %12
    i32 131, label %15
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mpz_init_set_str(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @mpz_init_set_str(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mpz_init_set_str(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @mpz_init_set_str(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 16)
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mpz_init_set_si(i32 %19, i32 -1)
  br label %21

21:                                               ; preds = %18, %15, %12, %9, %6
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @mpz_init(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %29 = call i32 @mpfr_get_z(i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mpz_and(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %39 = call i32 @mpfr_set_z(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @mpz_clear(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mpz_clear(i32 %42)
  ret void
}

declare dso_local i32 @mpz_init_set_str(i32, i8*, i32) #1

declare dso_local i32 @mpz_init_set_si(i32, i32) #1

declare dso_local i32 @mpz_init(i32) #1

declare dso_local i32 @mpfr_get_z(i32, i32, i32) #1

declare dso_local i32 @mpz_and(i32, i32, i32) #1

declare dso_local i32 @mpfr_set_z(i32, i32, i32) #1

declare dso_local i32 @mpz_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
