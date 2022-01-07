; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_exdatatest.c_exnew.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_exdatatest.c_exnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saved_idx = common dso_local global i32 0, align 4
@saved_argl = common dso_local global i32 0, align 4
@saved_argp = common dso_local global i32 0, align 4
@gbl_result = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32, i64, i8*)* @exnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exnew(i8* %0, i8* %1, i32* %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @saved_idx, align 4
  %15 = call i32 @TEST_int_eq(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %6
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* @saved_argl, align 4
  %20 = call i32 @TEST_long_eq(i64 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* @saved_argp, align 4
  %25 = call i32 @TEST_ptr_eq(i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @TEST_ptr_null(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %22, %17, %6
  store i64 0, i64* @gbl_result, align 8
  br label %32

32:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @TEST_long_eq(i64, i32) #1

declare dso_local i32 @TEST_ptr_eq(i8*, i32) #1

declare dso_local i32 @TEST_ptr_null(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
