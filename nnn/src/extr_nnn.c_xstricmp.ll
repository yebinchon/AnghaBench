; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_xstricmp.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_xstricmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @xstricmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xstricmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strtoll(i8* %10, i8** %6, i32 10)
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strtoll(i8* %12, i8** %7, i32 10)
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17, %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %55

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %55

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %25, %21
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %55

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %55

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strcoll(i8* %52, i8* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %49, %44, %38, %33
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @strcoll(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
