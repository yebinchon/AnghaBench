; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_blackrock_verify.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-blackrock.c_blackrock_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlackRock = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BlackRock*, i64)* @blackrock_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blackrock_verify(%struct.BlackRock* %0, i64 %1) #0 {
  %3 = alloca %struct.BlackRock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.BlackRock* %0, %struct.BlackRock** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %11 = getelementptr inbounds %struct.BlackRock, %struct.BlackRock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = call i8* @CALLOC(i32 1, i64 %21)
  store i8* %22, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %41, %20
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.BlackRock*, %struct.BlackRock** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @blackrock_shuffle(%struct.BlackRock* %28, i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = add i8 %38, 1
  store i8 %39, i8* %37, align 1
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %23

44:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %67

55:                                               ; preds = %53
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %45

67:                                               ; preds = %53
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i8* @CALLOC(i32, i64) #1

declare dso_local i64 @blackrock_shuffle(%struct.BlackRock*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
