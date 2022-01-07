; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_client.c_checked_uint8.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_client.c_checked_uint8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @checked_uint8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checked_uint8(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %6, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = call i32 (...) @save_errno()
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strtol(i8* %16, i8** %8, i32 10)
  store i64 %17, i64* %9, align 8
  %18 = call i32 (...) @restore_errno()
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @LONG_MIN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @LONG_MAX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ERANGE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %26, %22
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @_UC(i8 signext %36)
  %38 = call i64 @isspace(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  %44 = icmp ne i64 %41, %42
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %34, %30, %26
  store i32 -1, i32* %3, align 4
  br label %61

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %55, %46
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @_UC(i8 signext %50)
  %52 = call i64 @isspace(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  br label %48

58:                                               ; preds = %48
  %59 = load i8*, i8** %7, align 8
  %60 = load i8**, i8*** %4, align 8
  store i8* %59, i8** %60, align 8
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @save_errno(...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @restore_errno(...) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @_UC(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
