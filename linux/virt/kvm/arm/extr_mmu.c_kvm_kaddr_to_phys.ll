; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_kaddr_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_kaddr_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @kvm_kaddr_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_kaddr_to_phys(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @is_vmalloc_addr(i8* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @virt_addr_valid(i8* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @__pa(i8* %14)
  store i64 %15, i64* %2, align 8
  br label %23

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @vmalloc_to_page(i8* %17)
  %19 = call i64 @page_to_phys(i32 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @offset_in_page(i8* %20)
  %22 = add nsw i64 %19, %21
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %16, %7
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i32 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local i64 @__pa(i8*) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i64 @offset_in_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
