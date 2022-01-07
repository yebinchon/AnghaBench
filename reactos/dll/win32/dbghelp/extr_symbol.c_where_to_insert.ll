; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_where_to_insert.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_where_to_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt_ht = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32, %struct.symt_ht*)* @where_to_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @where_to_insert(%struct.module* %0, i32 %1, %struct.symt_ht* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symt_ht*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.symt_ht* %2, %struct.symt_ht** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = udiv i32 %11, 2
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load %struct.symt_ht*, %struct.symt_ht** %7, align 8
  %18 = getelementptr inbounds %struct.symt_ht, %struct.symt_ht* %17, i32 0, i32 0
  %19 = call i32 @symt_get_address(i32* %18, i32* %10)
  br label %20

20:                                               ; preds = %39, %16
  %21 = load %struct.module*, %struct.module** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @cmp_sorttab_addr(%struct.module* %21, i32 %22, i32 %23)
  switch i32 %24, label %32 [
    i32 0, label %25
    i32 -1, label %27
    i32 1, label %30
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %20, %30, %27
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %34, %35
  %37 = udiv i32 %36, 2
  %38 = add i32 %33, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %20, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %25, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @symt_get_address(i32*, i32*) #1

declare dso_local i32 @cmp_sorttab_addr(%struct.module*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
