; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_astrcmp_n.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_astrcmp_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@astrblank = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @astrcmp_n(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** @astrblank, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** @astrblank, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %60, %23
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %8, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %9, align 1
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %63

35:                                               ; preds = %24
  %36 = load i8, i8* %8, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %63

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %56, %50, %44
  %61 = phi i1 [ false, %50 ], [ false, %44 ], [ %59, %56 ]
  br i1 %61, label %24, label %62

62:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %41, %34, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
