; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_update_table_sizes_consts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_update_table_sizes_consts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_const_tab = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.d3dx_const_tab*)* @update_table_sizes_consts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_table_sizes_consts(i32* %0, %struct.d3dx_const_tab* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.d3dx_const_tab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.d3dx_const_tab* %1, %struct.d3dx_const_tab** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %61, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %11 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %8
  %15 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %16 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %61

25:                                               ; preds = %14
  %26 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %27 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %35 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %33, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %45 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %48 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @update_table_size(i32* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %25, %24
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %8

64:                                               ; preds = %8
  ret void
}

declare dso_local i32 @update_table_size(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
