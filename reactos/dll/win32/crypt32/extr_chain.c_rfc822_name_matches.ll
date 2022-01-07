; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_rfc822_name_matches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_rfc822_name_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s, %s\0A\00", align 1
@CERT_TRUST_INVALID_NAME_CONSTRAINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @rfc822_name_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfc822_name_matches(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @debugstr_w(i64 %10)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @debugstr_w(i64 %12)
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @CERT_TRUST_INVALID_NAME_CONSTRAINTS, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %55

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @strchrW(i64 %27, i8 signext 64)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @lstrcmpiW(i64 %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %54

37:                                               ; preds = %26
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @strchrW(i64 %38, i8 signext 64)
  store i64 %39, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 @domain_name_matches(i64 %42, i64 %44)
  store i32 %45, i32* %7, align 4
  br label %53

46:                                               ; preds = %37
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @lstrcmpiW(i64 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %30
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i64 @strchrW(i64, i8 signext) #1

declare dso_local i32 @lstrcmpiW(i64, i64) #1

declare dso_local i32 @domain_name_matches(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
