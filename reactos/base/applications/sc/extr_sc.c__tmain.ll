; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_sc.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_sc.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8** null, i8*** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @MainUsage()
  store i32 -1, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 92
  br i1 %20, label %21, label %53

21:                                               ; preds = %13
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 92
  br i1 %28, label %29, label %53

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @MainUsage()
  store i32 -1, i32* %3, align 4
  br label %69

34:                                               ; preds = %29
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  store i8** %45, i8*** %8, align 8
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 3
  %52 = call i32 @ScControl(i8* %47, i8* %48, i8** %49, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %21, %13
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %7, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  store i8** %61, i8*** %8, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8**, i8*** %8, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 2
  %68 = call i32 @ScControl(i8* %63, i8* %64, i8** %65, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %46, %32, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @MainUsage(...) #1

declare dso_local i32 @ScControl(i8*, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
