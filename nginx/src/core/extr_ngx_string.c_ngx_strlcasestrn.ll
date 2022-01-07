; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_strlcasestrn.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_strlcasestrn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_strlcasestrn(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %12, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %11, align 1
  %16 = load i8, i8* %11, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 65
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i8, i8* %11, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 90
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8, i8* %11, align 1
  %25 = sext i8 %24 to i32
  %26 = or i32 %25, 32
  br label %30

27:                                               ; preds = %19, %4
  %28 = load i8, i8* %11, align 1
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ %26, %23 ], [ %29, %27 ]
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %11, align 1
  %33 = load i64, i64* %9, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = sub i64 0, %33
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %72, %30
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp uge i32* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32* null, i32** %5, align 8
  br label %81

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  %46 = load i32, i32* %44, align 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %10, align 1
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 65
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i8, i8* %10, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 90
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8, i8* %10, align 1
  %57 = sext i8 %56 to i32
  %58 = or i32 %57, 32
  br label %62

59:                                               ; preds = %51, %43
  %60 = load i8, i8* %10, align 1
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %58, %55 ], [ %61, %59 ]
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %10, align 1
  br label %65

65:                                               ; preds = %62
  %66 = load i8, i8* %10, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* %11, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %38, label %71

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @ngx_strncasecmp(i32* %73, i32* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %37, label %78

78:                                               ; preds = %72
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 -1
  store i32* %80, i32** %6, align 8
  store i32* %80, i32** %5, align 8
  br label %81

81:                                               ; preds = %78, %42
  %82 = load i32*, i32** %5, align 8
  ret i32* %82
}

declare dso_local i64 @ngx_strncasecmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
