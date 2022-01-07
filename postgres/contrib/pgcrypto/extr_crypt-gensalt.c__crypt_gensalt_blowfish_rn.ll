; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_blowfish_rn.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-gensalt.c__crypt_gensalt_blowfish_rn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_crypt_gensalt_blowfish_rn(i64 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
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
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %26, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 30
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %24, 31
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %20, %14, %5
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %29, %26
  store i8* null, i8** %6, align 8
  br label %68

33:                                               ; preds = %23, %17
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i64 5, i64* %7, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 36, i8* %39, align 1
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 50, i8* %41, align 1
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 97, i8* %43, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  store i8 36, i8* %45, align 1
  %46 = load i64, i64* %7, align 8
  %47 = udiv i64 %46, 10
  %48 = add i64 48, %47
  %49 = trunc i64 %48 to i8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8 %49, i8* %51, align 1
  %52 = load i64, i64* %7, align 8
  %53 = urem i64 %52, 10
  %54 = add i64 48, %53
  %55 = trunc i64 %54 to i8
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  store i8 %55, i8* %57, align 1
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 6
  store i8 36, i8* %59, align 1
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 7
  %62 = load i8*, i8** %8, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = call i32 @BF_encode(i8* %61, i32* %63, i32 16)
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 29
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %10, align 8
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %37, %32
  %69 = load i8*, i8** %6, align 8
  ret i8* %69
}

declare dso_local i32 @BF_encode(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
