; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_grow_sorttab.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_grow_sorttab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, %struct.symt_ht** }
%struct.symt_ht = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32)* @symt_grow_sorttab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symt_grow_sorttab(%struct.module* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symt_ht**, align 8
  %7 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.module*, %struct.module** %4, align 8
  %10 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ule i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.module*, %struct.module** %4, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 1
  %18 = load %struct.symt_ht**, %struct.symt_ht*** %17, align 8
  %19 = icmp ne %struct.symt_ht** %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.module*, %struct.module** %4, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load %struct.module*, %struct.module** %4, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 1
  %28 = load %struct.symt_ht**, %struct.symt_ht*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call %struct.symt_ht** @HeapReAlloc(i32 %25, i32 0, %struct.symt_ht** %28, i32 %32)
  store %struct.symt_ht** %33, %struct.symt_ht*** %6, align 8
  br label %41

34:                                               ; preds = %15
  store i32 64, i32* %7, align 4
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call %struct.symt_ht** @HeapAlloc(i32 %35, i32 0, i32 %39)
  store %struct.symt_ht** %40, %struct.symt_ht*** %6, align 8
  br label %41

41:                                               ; preds = %34, %20
  %42 = load %struct.symt_ht**, %struct.symt_ht*** %6, align 8
  %43 = icmp ne %struct.symt_ht** %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.module*, %struct.module** %4, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.symt_ht**, %struct.symt_ht*** %6, align 8
  %51 = load %struct.module*, %struct.module** %4, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 1
  store %struct.symt_ht** %50, %struct.symt_ht*** %52, align 8
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %44, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.symt_ht** @HeapReAlloc(i32, i32, %struct.symt_ht**, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.symt_ht** @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
