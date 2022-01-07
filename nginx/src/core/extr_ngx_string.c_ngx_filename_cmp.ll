; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_filename_cmp.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_filename_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ngx_filename_cmp(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %14, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %8, align 1
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %9, align 1
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load i8, i8* %8, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %7, align 8
  br label %10

33:                                               ; preds = %27
  store i8 0, i8* %4, align 1
  br label %77

34:                                               ; preds = %13
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %9, align 1
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 %44, %46
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %4, align 1
  br label %77

49:                                               ; preds = %38
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %57

54:                                               ; preds = %49
  %55 = load i8, i8* %8, align 1
  %56 = sext i8 %55 to i32
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %8, align 1
  %60 = load i8, i8* %9, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %67

64:                                               ; preds = %57
  %65 = load i8, i8* %9, align 1
  %66 = sext i8 %65 to i32
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i32 [ 0, %63 ], [ %66, %64 ]
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %9, align 1
  %70 = load i8, i8* %8, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* %9, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %71, %73
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %4, align 1
  br label %77

76:                                               ; preds = %10
  store i8 0, i8* %4, align 1
  br label %77

77:                                               ; preds = %76, %67, %42, %33
  %78 = load i8, i8* %4, align 1
  ret i8 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
