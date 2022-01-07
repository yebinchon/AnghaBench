; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_FindTishriMolad.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_FindTishriMolad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HALAKIM_PER_METONIC_CYCLE = common dso_local global i64 0, align 8
@HALAKIM_PER_DAY = common dso_local global i32 0, align 4
@HALAKIM_PER_LUNAR_CYCLE = common dso_local global i32 0, align 4
@monthsPerYear = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*)* @FindTishriMolad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FindTishriMolad(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 310
  %17 = sdiv i32 %16, 6940
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @MoladOfMetonicCycle(i32 %18, i32* %11, i32* %12)
  br label %20

20:                                               ; preds = %26, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 6940
  %24 = add nsw i32 %23, 310
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* @HALAKIM_PER_METONIC_CYCLE, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %12, align 4
  br label %20

42:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 18
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 74
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %73

52:                                               ; preds = %46
  %53 = load i32, i32* @HALAKIM_PER_LUNAR_CYCLE, align 4
  %54 = load i32*, i32** @monthsPerYear, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %53, %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %64 = sdiv i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %69 = srem i32 %67, %68
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %43

73:                                               ; preds = %51, %43
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  ret void
}

declare dso_local i32 @MoladOfMetonicCycle(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
