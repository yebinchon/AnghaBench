; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-zeroaccess.c_zadecrypt.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-zeroaccess.c_zadecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64)* @zadecrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zadecrypt(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 1718906930, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %91, %4
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %94

21:                                               ; preds = %19
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %23, 0
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* %9, align 4
  %29 = lshr i32 %28, 0
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = xor i32 %27, %31
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 0
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = lshr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = zext i8 %46 to i32
  %48 = xor i32 %43, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 %49, i8* %53, align 1
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 2
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %9, align 4
  %61 = lshr i32 %60, 16
  %62 = trunc i32 %61 to i8
  %63 = zext i8 %62 to i32
  %64 = xor i32 %59, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 2
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %65, i8* %69, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 3
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i32, i32* %9, align 4
  %77 = lshr i32 %76, 24
  %78 = trunc i32 %77 to i8
  %79 = zext i8 %78 to i32
  %80 = xor i32 %75, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 3
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 %81, i8* %85, align 1
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %86, 1
  %88 = load i32, i32* %9, align 4
  %89 = lshr i32 %88, 31
  %90 = or i32 %87, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %21
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %10, align 8
  br label %11

94:                                               ; preds = %19
  %95 = load i64, i64* %6, align 8
  %96 = trunc i64 %95 to i32
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
