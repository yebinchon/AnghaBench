; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_strcasestrn.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_strcasestrn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_strcasestrn(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %6, align 8
  %12 = load i8, i8* %10, align 1
  store i8 %12, i8* %9, align 1
  %13 = load i8, i8* %9, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i8, i8* %9, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 %18, 90
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8, i8* %9, align 1
  %22 = sext i8 %21 to i32
  %23 = or i32 %22, 32
  br label %27

24:                                               ; preds = %16, %3
  %25 = load i8, i8* %9, align 1
  %26 = sext i8 %25 to i32
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %23, %20 ], [ %26, %24 ]
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %9, align 1
  br label %30

30:                                               ; preds = %65, %27
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %5, align 8
  %34 = load i32, i32* %32, align 4
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i8, i8* %8, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  br label %75

40:                                               ; preds = %31
  %41 = load i8, i8* %8, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 65
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 90
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  %51 = or i32 %50, 32
  br label %55

52:                                               ; preds = %44, %40
  %53 = load i8, i8* %8, align 1
  %54 = sext i8 %53 to i32
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %51, %48 ], [ %54, %52 ]
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  br label %58

58:                                               ; preds = %55
  %59 = load i8, i8* %8, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* %9, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %31, label %64

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @ngx_strncasecmp(i32* %66, i32* %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %30, label %72

72:                                               ; preds = %65
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 -1
  store i32* %74, i32** %5, align 8
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %72, %39
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

declare dso_local i64 @ngx_strncasecmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
