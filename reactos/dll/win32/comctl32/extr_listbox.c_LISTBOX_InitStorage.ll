; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_InitStorage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_InitStorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@LB_ARRAY_GRANULARITY = common dso_local global i32 0, align 4
@LBN_ERRSPACE = common dso_local global i32 0, align 4
@LB_ERRSPACE = common dso_local global i32 0, align 4
@LB_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @LISTBOX_InitStorage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_InitStorage(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @LB_ARRAY_GRANULARITY, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LB_ARRAY_GRANULARITY, align 4
  %13 = srem i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @HeapSize(i32 %21, i32 0, i32* %24)
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32* @HeapReAlloc(i32 %32, i32 0, i32* %35, i32 %39)
  store i32* %40, i32** %6, align 8
  br label %48

41:                                               ; preds = %2
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32* @HeapAlloc(i32 %42, i32 0, i32 %46)
  store i32* %47, i32** %6, align 8
  br label %48

48:                                               ; preds = %41, %20
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = load i32, i32* @LBN_ERRSPACE, align 4
  %54 = call i32 @SEND_NOTIFICATION(%struct.TYPE_4__* %52, i32 %53)
  %55 = load i32, i32* @LB_ERRSPACE, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %48
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* @LB_OKAY, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @HeapSize(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @SEND_NOTIFICATION(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
