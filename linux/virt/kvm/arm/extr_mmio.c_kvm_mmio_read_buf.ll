; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmio.c_kvm_mmio_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmio.c_kvm_mmio_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvm_mmio_read_buf(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %union.anon, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %33 [
    i32 1, label %8
    i32 2, label %12
    i32 4, label %19
    i32 8, label %26
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  br label %33

12:                                               ; preds = %2
  %13 = bitcast %union.anon* %6 to i64*
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @memcpy(i64* %13, i8* %14, i32 %15)
  %17 = bitcast %union.anon* %6 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  br label %33

19:                                               ; preds = %2
  %20 = bitcast %union.anon* %6 to i64*
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @memcpy(i64* %20, i8* %21, i32 %22)
  %24 = bitcast %union.anon* %6 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  br label %33

26:                                               ; preds = %2
  %27 = bitcast %union.anon* %6 to i64*
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @memcpy(i64* %27, i8* %28, i32 %29)
  %31 = bitcast %union.anon* %6 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %2, %26, %19, %12, %8
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
