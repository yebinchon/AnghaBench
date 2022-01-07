; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_GetLFHKey.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_GetLFHKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RtlpHpHeapGlobalsOffset = common dso_local global i64 0, align 8
@RtlpLFHKeyOffset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ReadProcessMemory\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"LFH key not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64*)* @GetLFHKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetLFHKey(i32* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @r_return_val_if_fail(i32* %11, i32 0)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @GetHeapGlobalsOffset(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i64*, i64** %9, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %39

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @RtlpHpHeapGlobalsOffset, align 8
  %24 = add i64 %23, 8
  store i64 %24, i64* %10, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @RtlpLFHKeyOffset, align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %10, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @ReadProcessMemory(i32 %28, i32 %30, i64* %31, i32 8, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = call i32 @r_sys_perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64*, i64** %9, align 8
  store i64 0, i64* %37, align 8
  store i32 0, i32* %5, align 4
  br label %39

38:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %34, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @r_return_val_if_fail(i32*, i32) #1

declare dso_local i32 @GetHeapGlobalsOffset(i32*, i32) #1

declare dso_local i32 @ReadProcessMemory(i32, i32, i64*, i32, i32*) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
