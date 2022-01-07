; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_blackrock_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_blackrock_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlackRock = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BLACKROCK: randomization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blackrock_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.BlackRock, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BlackRock, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @blackrock_init(%struct.BlackRock* %4, i32 1000, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %23, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @blackrock_shuffle(%struct.BlackRock* %4, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @blackrock_unshuffle(%struct.BlackRock* %4, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %52

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %10

26:                                               ; preds = %10
  store i32 9045, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 10, %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @time(i32 0)
  %39 = call i32 @blackrock_init(%struct.BlackRock* %7, i32 %37, i32 %38, i32 4)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @blackrock_verify(%struct.BlackRock* %7, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %52

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %27

51:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %51, %44, %21
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @blackrock_init(%struct.BlackRock*, i32, i32, i32) #1

declare dso_local i32 @blackrock_shuffle(%struct.BlackRock*, i32) #1

declare dso_local i32 @blackrock_unshuffle(%struct.BlackRock*, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @blackrock_verify(%struct.BlackRock*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
