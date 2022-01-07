; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn.c_ud_syn_rel_target.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn.c_ud_syn_rel_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i64 }
%struct.ud_operand = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"invalid relative offset size.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ud_syn_rel_target(%struct.ud* %0, %struct.ud_operand* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ud*, align 8
  %5 = alloca %struct.ud_operand*, align 8
  %6 = alloca i64, align 8
  store %struct.ud* %0, %struct.ud** %4, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %5, align 8
  %7 = load %struct.ud*, %struct.ud** %4, align 8
  %8 = getelementptr inbounds %struct.ud, %struct.ud* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 64, %9
  %11 = zext i32 %10 to i64
  %12 = lshr i64 -1, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ud_operand*, %struct.ud_operand** %5, align 8
  %14 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %49 [
    i32 8, label %16
    i32 16, label %27
    i32 32, label %38
  ]

16:                                               ; preds = %2
  %17 = load %struct.ud*, %struct.ud** %4, align 8
  %18 = getelementptr inbounds %struct.ud, %struct.ud* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ud_operand*, %struct.ud_operand** %5, align 8
  %21 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %19, %23
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %3, align 8
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.ud*, %struct.ud** %4, align 8
  %29 = getelementptr inbounds %struct.ud, %struct.ud* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ud_operand*, %struct.ud_operand** %5, align 8
  %32 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %30, %34
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %3, align 8
  br label %51

38:                                               ; preds = %2
  %39 = load %struct.ud*, %struct.ud** %4, align 8
  %40 = getelementptr inbounds %struct.ud, %struct.ud* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ud_operand*, %struct.ud_operand** %5, align 8
  %43 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %41, %45
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %3, align 8
  br label %51

49:                                               ; preds = %2
  %50 = call i32 @UD_ASSERT(i32 0)
  store i64 0, i64* %3, align 8
  br label %51

51:                                               ; preds = %49, %38, %27, %16
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @UD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
