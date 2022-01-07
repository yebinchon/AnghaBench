; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_ssl_hello.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_ssl_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ssl_hello.key = internal constant [2 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ssl_hello(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  %10 = call i32 @time(i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 3
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %15, %19
  %21 = add nsw i32 %20, 5
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @MALLOC(i64 %23)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memcpy(i8* %25, i8* %26, i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = lshr i32 %29, 24
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 11
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %4, align 4
  %35 = lshr i32 %34, 16
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 12
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %4, align 4
  %40 = lshr i32 %39, 8
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 13
  store i8 %41, i8* %43, align 1
  %44 = load i32, i32* %4, align 4
  %45 = lshr i32 %44, 0
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 14
  store i8 %46, i8* %48, align 1
  store i32 4, i32* %5, align 4
  br label %49

49:                                               ; preds = %64, %1
  %50 = load i32, i32* %5, align 4
  %51 = icmp ult i32 %50, 32
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = call i64 @siphash24(i32* %7, i32 4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ssl_hello.key, i64 0, i64 0))
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* %8, align 1
  %58 = load i8, i8* %8, align 1
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add i32 11, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %58, i8* %63, align 1
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i32 @time(i32) #1

declare dso_local i8* @MALLOC(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @siphash24(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
