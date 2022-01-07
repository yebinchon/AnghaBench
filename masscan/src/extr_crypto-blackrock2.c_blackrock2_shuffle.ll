; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_blackrock2_shuffle.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_blackrock2_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlackRock = type { i64, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @blackrock2_shuffle(%struct.BlackRock* %0, i64 %1) #0 {
  %3 = alloca %struct.BlackRock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.BlackRock* %0, %struct.BlackRock** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %7 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %10 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %13 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %16 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %19 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %23 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ENCRYPT(i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i64 %21, i32 %24)
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %32, %2
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %29 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %34 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %37 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %40 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %43 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %46 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %50 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ENCRYPT(i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i64 %48, i32 %51)
  store i64 %52, i64* %5, align 8
  br label %26

53:                                               ; preds = %26
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i64 @ENCRYPT(i32, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
