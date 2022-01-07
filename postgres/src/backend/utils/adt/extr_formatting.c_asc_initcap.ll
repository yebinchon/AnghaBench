; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_asc_initcap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_asc_initcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @asc_initcap(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %69

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i8* @pnstrdup(i8* %14, i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %64, %13
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call signext i8 @pg_ascii_tolower(i8 zeroext %27)
  store i8 %28, i8* %9, align 1
  %29 = load i8*, i8** %7, align 8
  store i8 %28, i8* %29, align 1
  br label %35

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @pg_ascii_toupper(i8 zeroext %32)
  store i8 %33, i8* %9, align 1
  %34 = load i8*, i8** %7, align 8
  store i8 %33, i8* %34, align 1
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i8, i8* %9, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 65
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8, i8* %9, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 90
  br i1 %42, label %61, label %43

43:                                               ; preds = %39, %35
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sge i32 %45, 97
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sle i32 %49, 122
  br i1 %50, label %61, label %51

51:                                               ; preds = %47, %43
  %52 = load i8, i8* %9, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8, i8* %9, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  br label %61

61:                                               ; preds = %59, %47, %39
  %62 = phi i1 [ true, %47 ], [ true, %39 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  br label %18

67:                                               ; preds = %18
  %68 = load i8*, i8** %6, align 8
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %67, %12
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i8* @pnstrdup(i8*, i64) #1

declare dso_local signext i8 @pg_ascii_tolower(i8 zeroext) #1

declare dso_local signext i8 @pg_ascii_toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
