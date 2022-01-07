; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_rdm.c_rdm_get_version.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_rdm.c_rdm_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@RDM_IOCTL_GET_VERSION = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdm_get_version(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RDM_IOCTL_GET_VERSION, align 4
  %11 = call i64 @rdm_send_receive(i32 %9, i32 %10, i32* null, i32 0, i32** %6, i32* %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, i32* @LPTR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i64 @LocalAlloc(i32 %17, i32 %19)
  %21 = load i64*, i64** %4, align 8
  store i64 %20, i64* %21, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @RtlCopyMemory(i64 %25, i32* %26, i32 %27)
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @LocalFree(i32* %31)
  br label %33

33:                                               ; preds = %30, %13
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @rdm_send_receive(i32, i32, i32*, i32, i32**, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i64, i32*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
