; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn_slow.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@FOLL_HWPOISON = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32, i32*, i32*)* @hva_to_pfn_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_to_pfn_slow(i64 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @FOLL_HWPOISON, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = call i32 (...) @might_sleep()
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @FOLL_WRITE, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @FOLL_NOWAIT, align 4
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @get_user_pages_unlocked(i64 %38, i32 1, %struct.page** %13, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %70

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @__get_user_pages_fast(i64 %56, i32 1, i32 1, %struct.page** %15)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  store i32 1, i32* %60, align 4
  %61 = load %struct.page*, %struct.page** %13, align 8
  %62 = call i32 @put_page(%struct.page* %61)
  %63 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %63, %struct.page** %13, align 8
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %52, %45
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = call i32 @page_to_pfn(%struct.page* %66)
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %43
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @get_user_pages_unlocked(i64, i32, %struct.page**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
