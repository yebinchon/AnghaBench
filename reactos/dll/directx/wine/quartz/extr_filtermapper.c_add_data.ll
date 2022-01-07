; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filtermapper.c_add_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filtermapper.c_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vector = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Vector*, i32*, i32)* @add_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_data(%struct.Vector* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.Vector*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.Vector* %0, %struct.Vector** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.Vector*, %struct.Vector** %4, align 8
  %10 = getelementptr inbounds %struct.Vector, %struct.Vector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.Vector*, %struct.Vector** %4, align 8
  %13 = getelementptr inbounds %struct.Vector, %struct.Vector* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = load %struct.Vector*, %struct.Vector** %4, align 8
  %18 = getelementptr inbounds %struct.Vector, %struct.Vector* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %3
  %22 = load %struct.Vector*, %struct.Vector** %4, align 8
  %23 = getelementptr inbounds %struct.Vector, %struct.Vector* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load %struct.Vector*, %struct.Vector** %4, align 8
  %26 = getelementptr inbounds %struct.Vector, %struct.Vector* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = mul nsw i32 %29, 2
  %31 = load %struct.Vector*, %struct.Vector** %4, align 8
  %32 = getelementptr inbounds %struct.Vector, %struct.Vector* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.Vector*, %struct.Vector** %4, align 8
  %34 = getelementptr inbounds %struct.Vector, %struct.Vector* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @CoTaskMemAlloc(i32 %35)
  %37 = load %struct.Vector*, %struct.Vector** %4, align 8
  %38 = getelementptr inbounds %struct.Vector, %struct.Vector* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.Vector*, %struct.Vector** %4, align 8
  %40 = getelementptr inbounds %struct.Vector, %struct.Vector* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.Vector*, %struct.Vector** %4, align 8
  %44 = getelementptr inbounds %struct.Vector, %struct.Vector* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32* %41, i32* %42, i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @CoTaskMemFree(i32* %47)
  br label %49

49:                                               ; preds = %21, %3
  %50 = load %struct.Vector*, %struct.Vector** %4, align 8
  %51 = getelementptr inbounds %struct.Vector, %struct.Vector* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.Vector*, %struct.Vector** %4, align 8
  %54 = getelementptr inbounds %struct.Vector, %struct.Vector* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.Vector*, %struct.Vector** %4, align 8
  %63 = getelementptr inbounds %struct.Vector, %struct.Vector* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
