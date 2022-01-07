; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_flock_compat.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_flock_compat.c_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %40, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %9, align 1
  %13 = load i8, i8* %9, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %38 [
    i32 48, label %15
    i32 49, label %15
    i32 50, label %15
    i32 51, label %15
    i32 52, label %15
    i32 53, label %15
    i32 54, label %15
    i32 55, label %15
    i32 56, label %15
    i32 57, label %15
    i32 46, label %23
    i32 0, label %29
  ]

15:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %16 = load i64, i64* %7, align 8
  %17 = mul i64 %16, 10
  %18 = load i8, i8* %9, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %19, 48
  %21 = sext i32 %20 to i64
  %22 = add i64 %17, %21
  store i64 %22, i64* %7, align 8
  br label %39

23:                                               ; preds = %10
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %64

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %10, %28
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %64

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = shl i64 %34, 8
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %35, %36
  store i64 %37, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %39

38:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %64

39:                                               ; preds = %33, %15
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8, i8* %41, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %10, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 3, %49
  %51 = mul nsw i32 8, %50
  %52 = load i64, i64* %8, align 8
  %53 = zext i32 %51 to i64
  %54 = shl i64 %52, %53
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %48, %45
  %56 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %57 = icmp ne %struct.in_addr* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @htonl(i64 %59)
  %61 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %55
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %38, %32, %27
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
