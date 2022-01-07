; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_search.c_alloc_search_item.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_search.c_alloc_search_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32*)* @alloc_search_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @alloc_search_item(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lstrlenW(i32* %10)
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i64 [ %14, %9 ], [ 0, %15 ]
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = call %struct.TYPE_4__* @heap_alloc_zero(i32 16)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @heap_alloc(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @memcpy(i32 %29, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %16
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local %struct.TYPE_4__* @heap_alloc_zero(i32) #1

declare dso_local i32 @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
