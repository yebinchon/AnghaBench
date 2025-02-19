; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_regis.c_mb_strchr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_regis.c_mb_strchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @mb_strchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_strchr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @pg_mblen(i8* %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ false, %13 ], [ %21, %18 ]
  br i1 %23, label %24, label %58

24:                                               ; preds = %22
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @pg_mblen(i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %51, %30
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %52

51:                                               ; preds = %36
  br label %32

52:                                               ; preds = %50, %32
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %8, align 8
  br label %13

58:                                               ; preds = %22
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
