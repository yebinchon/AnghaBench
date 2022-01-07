; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/primitives/extr_load_unaligned_zeropad.c_test_body.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/primitives/extr_load_unaligned_zeropad.c_test_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@mem_region = common dso_local global i64* null, align 8
@MAP_FAILED = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_body() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @getpagesize()
  store i32 %2, i32* @page_size, align 4
  %3 = load i32, i32* @page_size, align 4
  %4 = mul nsw i32 %3, 2
  %5 = load i32, i32* @PROT_READ, align 4
  %6 = load i32, i32* @PROT_WRITE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MAP_PRIVATE, align 4
  %9 = load i32, i32* @MAP_ANONYMOUS, align 4
  %10 = or i32 %8, %9
  %11 = call i64* @mmap(i32* null, i32 %4, i32 %7, i32 %10, i32 -1, i32 0)
  store i64* %11, i64** @mem_region, align 8
  %12 = load i64*, i64** @mem_region, align 8
  %13 = load i64*, i64** @MAP_FAILED, align 8
  %14 = icmp eq i64* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @FAIL_IF(i32 %15)
  store i64 0, i64* %1, align 8
  br label %17

17:                                               ; preds = %27, %0
  %18 = load i64, i64* %1, align 8
  %19 = load i32, i32* @page_size, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i64, i64* %1, align 8
  %24 = load i64*, i64** @mem_region, align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %1, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %1, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i64*, i64** @mem_region, align 8
  %32 = load i32, i32* @page_size, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i32, i32* @page_size, align 4
  %36 = call i32 @memset(i64* %34, i32 0, i32 %35)
  %37 = call i32 (...) @setup_segv_handler()
  store i64 0, i64* %1, align 8
  br label %38

38:                                               ; preds = %50, %30
  %39 = load i64, i64* %1, align 8
  %40 = load i32, i32* @page_size, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i64*, i64** @mem_region, align 8
  %45 = load i64, i64* %1, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %1, align 8
  %48 = call i32 @do_one_test(i64* %46, i64 %47)
  %49 = call i32 @FAIL_IF(i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %1, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %1, align 8
  br label %38

53:                                               ; preds = %38
  ret i32 0
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @setup_segv_handler(...) #1

declare dso_local i32 @do_one_test(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
