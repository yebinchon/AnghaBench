; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_dectoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_dectoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECPG_INFORMIX_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@PGTYPES_NUM_OVERFLOW = common dso_local global i32 0, align 4
@ECPG_INFORMIX_NUM_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dectoint(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32* (...) @PGTYPESnumeric_new()
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ECPG_INFORMIX_OUT_OF_MEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @PGTYPESnumeric_from_decimal(i32* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @PGTYPESnumeric_free(i32* %19)
  %21 = load i32, i32* @ECPG_INFORMIX_OUT_OF_MEMORY, align 4
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %13
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PGTYPESnumeric_to_int(i32* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @PGTYPESnumeric_free(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PGTYPES_NUM_OVERFLOW, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @ECPG_INFORMIX_NUM_OVERFLOW, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %18, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32* @PGTYPESnumeric_new(...) #1

declare dso_local i64 @PGTYPESnumeric_from_decimal(i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_free(i32*) #1

declare dso_local i32 @PGTYPESnumeric_to_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
