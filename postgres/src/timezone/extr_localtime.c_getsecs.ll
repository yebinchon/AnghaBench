; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_getsecs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_getsecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOURSPERDAY = common dso_local global i32 0, align 4
@DAYSPERWEEK = common dso_local global i32 0, align 4
@SECSPERHOUR = common dso_local global i64 0, align 8
@MINSPERHOUR = common dso_local global i32 0, align 4
@SECSPERMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @getsecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getsecs(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @HOURSPERDAY, align 4
  %9 = load i32, i32* @DAYSPERWEEK, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sub nsw i32 %10, 1
  %12 = call i8* @getnum(i8* %7, i32* %6, i32 0, i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %64

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* @SECSPERHOUR, align 8
  %19 = trunc i64 %18 to i32
  %20 = mul nsw i32 %17, %19
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %62

26:                                               ; preds = %16
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @MINSPERHOUR, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i8* @getnum(i8* %29, i32* %6, i32 0, i32 %31)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %64

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SECSPERMIN, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 58
  br i1 %46, label %47, label %61

47:                                               ; preds = %36
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* @SECSPERMIN, align 4
  %52 = call i8* @getnum(i8* %50, i32* %6, i32 0, i32 %51)
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i8* null, i8** %3, align 8
  br label %64

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %36
  br label %62

62:                                               ; preds = %61, %16
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %62, %55, %35, %15
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i8* @getnum(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
