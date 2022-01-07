; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_compute_ref.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_compute_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reference = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@addr = common dso_local global i32 0, align 4
@baseaddr = common dso_local global i32 0, align 4
@comma = common dso_local global i32 0, align 4
@file = common dso_local global i32 0, align 4
@sp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reference*, i32)* @compute_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_ref(%struct.reference* %0, i32 %1) #0 {
  %3 = alloca %struct.reference*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.reference* %0, %struct.reference** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @addr, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @baseaddr, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @comma, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @file, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @sp, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.reference*, %struct.reference** %3, align 8
  %18 = getelementptr inbounds %struct.reference, %struct.reference* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* @sp, align 4
  %20 = load %struct.reference*, %struct.reference** %3, align 8
  %21 = getelementptr inbounds %struct.reference, %struct.reference* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @addr, align 4
  %23 = load %struct.reference*, %struct.reference** %3, align 8
  %24 = getelementptr inbounds %struct.reference, %struct.reference* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* @baseaddr, align 4
  %26 = load %struct.reference*, %struct.reference** %3, align 8
  %27 = getelementptr inbounds %struct.reference, %struct.reference* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @comma, align 4
  %29 = load %struct.reference*, %struct.reference** %3, align 8
  %30 = getelementptr inbounds %struct.reference, %struct.reference* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* @file, align 4
  %32 = load %struct.reference*, %struct.reference** %3, align 8
  %33 = getelementptr inbounds %struct.reference, %struct.reference* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  %35 = load %struct.reference*, %struct.reference** %3, align 8
  %36 = getelementptr inbounds %struct.reference, %struct.reference* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %2
  %40 = load %struct.reference*, %struct.reference** %3, align 8
  %41 = getelementptr inbounds %struct.reference, %struct.reference* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %45
  %48 = phi i32* [ %6, %45 ], [ null, %46 ]
  %49 = load %struct.reference*, %struct.reference** %3, align 8
  %50 = getelementptr inbounds %struct.reference, %struct.reference* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rd_expr(i8** %5, i32 %42, i32* %48, i32 %51, i32 1)
  %53 = load %struct.reference*, %struct.reference** %3, align 8
  %54 = getelementptr inbounds %struct.reference, %struct.reference* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.reference*, %struct.reference** %3, align 8
  %59 = getelementptr inbounds %struct.reference, %struct.reference* %58, i32 0, i32 6
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %47
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* @sp, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* @addr, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* @baseaddr, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* @comma, align 4
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* @file, align 4
  %67 = load %struct.reference*, %struct.reference** %3, align 8
  %68 = getelementptr inbounds %struct.reference, %struct.reference* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  ret i32 %69
}

declare dso_local i32 @rd_expr(i8**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
