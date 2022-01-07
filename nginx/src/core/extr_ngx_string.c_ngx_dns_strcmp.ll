; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_dns_strcmp.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_dns_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ngx_dns_strcmp(i32* %0, i32* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* %9, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %6, align 1
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %13, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 65
  br i1 %19, label %20, label %28

20:                                               ; preds = %8
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 90
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = or i32 %26, 32
  br label %31

28:                                               ; preds = %20, %8
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %27, %24 ], [ %30, %28 ]
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 65
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 90
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8, i8* %7, align 1
  %43 = sext i8 %42 to i32
  %44 = or i32 %43, 32
  br label %48

45:                                               ; preds = %37, %31
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i32 [ %44, %41 ], [ %47, %45 ]
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %7, align 1
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %7, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i8, i8* %6, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %8

60:                                               ; preds = %56
  store i8 0, i8* %3, align 1
  br label %88

61:                                               ; preds = %48
  %62 = load i8, i8* %6, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %69

66:                                               ; preds = %61
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 32, %65 ], [ %68, %66 ]
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %6, align 1
  %72 = load i8, i8* %7, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %79

76:                                               ; preds = %69
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  br label %79

79:                                               ; preds = %76, %75
  %80 = phi i32 [ 32, %75 ], [ %78, %76 ]
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %7, align 1
  %82 = load i8, i8* %6, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8, i8* %7, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 %83, %85
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %3, align 1
  br label %88

88:                                               ; preds = %79, %60
  %89 = load i8, i8* %3, align 1
  ret i8 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
