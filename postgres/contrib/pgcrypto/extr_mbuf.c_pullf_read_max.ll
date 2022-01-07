; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_mbuf.c_pullf_read_max.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_mbuf.c_pullf_read_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pullf_read_max(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32**, i32*** %8, align 8
  %16 = call i32 @pullf_read(i32* %13, i32 %14, i32** %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %71

25:                                               ; preds = %19
  %26 = load i32*, i32** %9, align 8
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @memcpy(i32* %26, i32* %28, i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load i32**, i32*** %8, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %55, %25
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pullf_read(i32* %41, i32 %42, i32** %12)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @px_memset(i32* %47, i32 0, i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %71

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %69

55:                                               ; preds = %51
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %37

69:                                               ; preds = %54, %37
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %46, %23
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @pullf_read(i32*, i32, i32**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @px_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
