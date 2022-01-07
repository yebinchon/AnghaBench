; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-tmspr.c_tfiar_tfhar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-tmspr.c_tfiar_tfhar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPRN_TFIAR = common dso_local global i32 0, align 4
@SPRN_TFHAR = common dso_local global i32 0, align 4
@num_loops = common dso_local global i32 0, align 4
@passed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tfiar_tfhar(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = call i32 @CPU_ZERO(i32* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = lshr i64 %12, 1
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @CPU_SET(i32 %15, i32* %9)
  %17 = call i32 @sched_setaffinity(i32 0, i32 4, i32* %9)
  %18 = load i8*, i8** %2, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = add i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @SPRN_TFIAR, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @mtspr(i32 %23, i64 %24)
  %26 = load i8*, i8** %2, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, -4
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* @SPRN_TFHAR, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @mtspr(i32 %32, i64 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %53, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @num_loops, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i32, i32* @SPRN_TFHAR, align 4
  %41 = call i64 @mfspr(i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i32, i32* @SPRN_TFIAR, align 4
  %43 = call i64 @mfspr(i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %39
  store i64 0, i64* @passed, align 8
  br label %57

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %35

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i64 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
