; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_blackrock2_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_blackrock2_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlackRock = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BLACKROCK: randomization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blackrock2_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.BlackRock, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.BlackRock, align 4
  store i32 0, i32* %3, align 4
  %9 = call i32 @blackrock2_init(%struct.BlackRock* %5, i32 1000, i32 0, i32 6)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %23, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @blackrock2_shuffle(%struct.BlackRock* %5, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @blackrock2_unshuffle(%struct.BlackRock* %5, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %54

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %10

26:                                               ; preds = %10
  store i32 9045, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 11, %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 1, %35
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @time(i32 0)
  %41 = call i32 @blackrock2_init(%struct.BlackRock* %8, i32 %39, i32 %40, i32 6)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @verify(%struct.BlackRock* %8, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %54

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %27

53:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %46, %21
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @blackrock2_init(%struct.BlackRock*, i32, i32, i32) #1

declare dso_local i32 @blackrock2_shuffle(%struct.BlackRock*, i32) #1

declare dso_local i32 @blackrock2_unshuffle(%struct.BlackRock*, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @verify(%struct.BlackRock*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
