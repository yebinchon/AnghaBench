; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_blackrock_shuffle.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_blackrock_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlackRock = type { i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @blackrock_shuffle(%struct.BlackRock* %0, i64 %1) #0 {
  %3 = alloca %struct.BlackRock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.BlackRock* %0, %struct.BlackRock** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %7 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %10 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %13 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %17 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ENCRYPT(i32 %8, i32 %11, i32 %14, i64 %15, i32 %18)
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %26, %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %23 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %28 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %31 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %34 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %38 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ENCRYPT(i32 %29, i32 %32, i32 %35, i64 %36, i32 %39)
  store i64 %40, i64* %5, align 8
  br label %20

41:                                               ; preds = %20
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @ENCRYPT(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
