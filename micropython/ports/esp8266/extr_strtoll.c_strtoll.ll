; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_strtoll.c_strtoll.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_strtoll.c_strtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoll(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %59, %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 48, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 57
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 48
  store i32 %24, i32* %8, align 4
  br label %46

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 65, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %29, 90
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 55
  store i32 %33, i32* %8, align 4
  br label %45

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 97, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 122
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 87
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %37, %34
  br label %62

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %62

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %52, %54
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  br label %9

62:                                               ; preds = %50, %43, %9
  %63 = load i8*, i8** %4, align 8
  %64 = load i8**, i8*** %5, align 8
  store i8* %63, i8** %64, align 8
  %65 = load i64, i64* %7, align 8
  ret i64 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
