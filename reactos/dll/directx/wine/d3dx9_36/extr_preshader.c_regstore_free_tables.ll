; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_free_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_free_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_regstore = type { i32* }

@PRES_REGTAB_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_regstore*)* @regstore_free_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regstore_free_tables(%struct.d3dx_regstore* %0) #0 {
  %2 = alloca %struct.d3dx_regstore*, align 8
  %3 = alloca i32, align 4
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PRES_REGTAB_COUNT, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %2, align 8
  %11 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @HeapFree(i32 %9, i32 0, i32 %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
