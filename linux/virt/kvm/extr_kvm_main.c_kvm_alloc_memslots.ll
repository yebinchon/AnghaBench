; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_alloc_memslots.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_alloc_memslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memslots = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@KVM_MEM_SLOTS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_memslots* ()* @kvm_alloc_memslots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_memslots* @kvm_alloc_memslots() #0 {
  %1 = alloca %struct.kvm_memslots*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_memslots*, align 8
  %4 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %5 = call %struct.kvm_memslots* @kvzalloc(i32 16, i32 %4)
  store %struct.kvm_memslots* %5, %struct.kvm_memslots** %3, align 8
  %6 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %7 = icmp ne %struct.kvm_memslots* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.kvm_memslots* null, %struct.kvm_memslots** %1, align 8
  br label %34

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %29, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @KVM_MEM_SLOTS_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %15, i32* %22, align 4
  %23 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %15, i32* %28, align 4
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  store %struct.kvm_memslots* %33, %struct.kvm_memslots** %1, align 8
  br label %34

34:                                               ; preds = %32, %8
  %35 = load %struct.kvm_memslots*, %struct.kvm_memslots** %1, align 8
  ret %struct.kvm_memslots* %35
}

declare dso_local %struct.kvm_memslots* @kvzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
