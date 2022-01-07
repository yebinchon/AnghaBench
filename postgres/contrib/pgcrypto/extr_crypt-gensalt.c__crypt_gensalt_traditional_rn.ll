; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_traditional_rn.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_traditional_rn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_crypt_itoa64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_crypt_gensalt_traditional_rn(i64 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %23, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 25
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %14, %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %26, %23
  store i8* null, i8** %6, align 8
  br label %56

30:                                               ; preds = %20, %17
  %31 = load i8*, i8** @_crypt_itoa64, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 63
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** @_crypt_itoa64, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, 63
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %50, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %6, align 8
  br label %56

56:                                               ; preds = %30, %29
  %57 = load i8*, i8** %6, align 8
  ret i8* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
