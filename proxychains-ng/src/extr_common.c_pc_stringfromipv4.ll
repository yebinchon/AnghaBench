; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_common.c_pc_stringfromipv4.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_common.c_pc_stringfromipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pc_stringfromipv4(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %64, %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = icmp ult i8* %11, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sge i32 %20, 100
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sge i32 %25, 200
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  store i8 50, i8* %28, align 1
  br label %33

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 49, i8* %31, align 1
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = srem i32 %35, 100
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %7, align 1
  br label %38

38:                                               ; preds = %33, %15
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %41, 10
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = sdiv i32 %45, 10
  %47 = add nsw i32 %46, 48
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = srem i32 %52, 10
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %7, align 1
  br label %55

55:                                               ; preds = %43, %38
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %57, 48
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  store i8 46, i8* %62, align 1
  br label %64

64:                                               ; preds = %55
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %10

67:                                               ; preds = %10
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  store i8 0, i8* %69, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
