; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wcsdepad.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wcsdepad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wcsdepad(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %2, align 8
  br label %72

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %2, align 8
  br label %72

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %30, %16
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @wcslen(i8* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  %44 = mul i64 %43, 1
  %45 = call i32 @memmove(i8* %40, i8* %41, i64 %44)
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %66, %49
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 9
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ true, %54 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %4, align 8
  store i8 0, i8* %67, align 1
  br label %54

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %46
  %71 = load i8*, i8** %3, align 8
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %70, %14, %8
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
