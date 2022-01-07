; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn_fast.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_hva_to_pfn_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32*, i32*)* @hva_to_pfn_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_to_pfn_fast(i64 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1 x %struct.page*], align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %35

18:                                               ; preds = %14, %4
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %10, i64 0, i64 0
  %21 = call i32 @__get_user_pages_fast(i64 %19, i32 1, i32 1, %struct.page** %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %10, i64 0, i64 0
  %26 = load %struct.page*, %struct.page** %25, align 8
  %27 = call i32 @page_to_pfn(%struct.page* %26)
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %24
  store i32 1, i32* %5, align 4
  br label %35

34:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @__get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
