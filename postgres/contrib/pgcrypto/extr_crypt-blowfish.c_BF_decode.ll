; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-blowfish.c_BF_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-blowfish.c_BF_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @BF_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BF_decode(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %84, %3
  %23 = load i32, i32* %11, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 @BF_safe_atoi64(i32 %23, i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 @BF_safe_atoi64(i32 %29, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 2
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 48
  %39 = lshr i32 %38, 4
  %40 = or i32 %36, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp uge i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  br label %88

48:                                               ; preds = %22
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 @BF_safe_atoi64(i32 %49, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 60
  %60 = lshr i32 %59, 2
  %61 = or i32 %57, %60
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp uge i8* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  br label %88

69:                                               ; preds = %48
  %70 = load i32, i32* %14, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = call i32 @BF_safe_atoi64(i32 %70, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = and i32 %76, 3
  %78 = shl i32 %77, 6
  %79 = load i32, i32* %14, align 4
  %80 = or i32 %78, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  store i8 %81, i8* %82, align 1
  br label %84

84:                                               ; preds = %69
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %22, label %88

88:                                               ; preds = %84, %68, %47
  ret i32 0
}

declare dso_local i32 @BF_safe_atoi64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
