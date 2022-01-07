; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_parse_name.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_name(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %11, align 8
  br label %16

16:                                               ; preds = %80, %4
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 192
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %32, %29
  store i32 1, i32* %13, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 63
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %11, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %35, %25
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %85

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %99

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %73, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  %76 = load i32, i32* %74, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  store i8 %77, i8* %78, align 1
  br label %69

80:                                               ; preds = %69
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %8, align 8
  store i8 46, i8* %81, align 1
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %16

85:                                               ; preds = %51
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  store i8 46, i8* %89, align 1
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  store i8 0, i8* %94, align 1
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %9, align 8
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %60
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
