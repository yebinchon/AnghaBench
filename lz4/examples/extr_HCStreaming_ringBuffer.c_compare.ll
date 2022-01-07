; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_HCStreaming_ringBuffer.c_compare.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_HCStreaming_ringBuffer.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compare(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [65536 x i8], align 16
  %8 = alloca [65536 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 1, i64* %6, align 8
  br label %13

13:                                               ; preds = %75, %2
  %14 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @fread(i8* %14, i32 1, i32 65536, i32* %15)
  store i64 %16, i64* %9, align 8
  %17 = getelementptr inbounds [65536 x i8], [65536 x i8]* %8, i64 0, i64 0
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @fread(i8* %17, i32 1, i32 65536, i32* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 0, i64* %3, align 8
  br label %80

26:                                               ; preds = %22, %13
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %6, align 8
  br label %78

41:                                               ; preds = %26
  %42 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %43 = getelementptr inbounds [65536 x i8], [65536 x i8]* %8, i64 0, i64 0
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @memcmp(i8* %42, i8* %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [65536 x i8], [65536 x i8]* %8, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %58, %63
  br label %65

65:                                               ; preds = %53, %48
  %66 = phi i1 [ false, %48 ], [ %64, %53 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %48

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %6, align 8
  br label %78

75:                                               ; preds = %41
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 65536
  store i64 %77, i64* %6, align 8
  br label %13

78:                                               ; preds = %70, %37
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %78, %25
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
