; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_danetest.c_checked_uint8.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_danetest.c_checked_uint8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @checked_uint8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checked_uint8(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  %14 = call i32 (...) @save_errno()
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strtol(i8* %15, i8** %8, i32 10)
  store i64 %16, i64* %9, align 8
  %17 = call i32 (...) @restore_errno()
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @LONG_MIN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @LONG_MAX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @ERANGE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @_UC(i8 signext %35)
  %37 = call i64 @isspace(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  %43 = icmp ne i64 %40, %41
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %33, %29, %25
  store i32 -1, i32* %3, align 4
  br label %64

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %54, %45
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @_UC(i8 signext %49)
  %51 = call i64 @isspace(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %47

57:                                               ; preds = %47
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %44
  %65 = load i32, i32* %3, align 4
  ret i32 %65
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
