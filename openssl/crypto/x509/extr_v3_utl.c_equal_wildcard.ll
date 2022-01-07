; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_equal_wildcard.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_equal_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @equal_wildcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equal_wildcard(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %26, label %21

21:                                               ; preds = %15, %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @valid_star(i8* %22, i64 %23, i32 %24)
  store i8* %25, i8** %12, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @equal_nocase(i8* %30, i64 %31, i8* %32, i64 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %59

36:                                               ; preds = %26
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8*, i8** %12, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sub nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @wildcard_match(i8* %37, i32 %43, i8* %45, i32 %54, i8* %55, i64 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %36, %29
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i8* @valid_star(i8*, i64, i32) #1

declare dso_local i32 @equal_nocase(i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @wildcard_match(i8*, i32, i8*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
