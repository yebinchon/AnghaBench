; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_llbtoa.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_llbtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @llbtoa(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [66 x i8], align 16
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 48, i8* %18, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %4, align 8
  br label %113

22:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -10
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  store i32 10, i32* %7, align 4
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, -9223372036854775808
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = xor i64 %30, -1
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  store i32 1, i32* %13, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %22
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = srem i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = sdiv i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = icmp sle i32 %51, 9
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 48
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  br label %69

57:                                               ; preds = %50, %38
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %58, 10
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %61, 36
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %64, 10
  %66 = add nsw i32 %65, 97
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %9, align 1
  br label %68

68:                                               ; preds = %63, %60, %57
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i8, i8* %9, align 1
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 %72
  store i8 %70, i8* %73, align 1
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %35

77:                                               ; preds = %35
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 0
  %85 = call i32 @strcat(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %77
  store i32 0, i32* %10, align 4
  %87 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 0
  %88 = call i32 @strlen(i8* %87)
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %102, %86
  %91 = load i32, i32* %11, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [66 x i8], [66 x i8]* %8, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 %97, i8* %101, align 1
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %11, align 4
  br label %90

107:                                              ; preds = %90
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %5, align 8
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %107, %16
  %114 = load i8*, i8** %4, align 8
  ret i8* %114
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
