; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_dword_to_dec3n.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_dword_to_dec3n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec3n = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32)* @dword_to_dec3n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @dword_to_dec3n(i32 %0) #0 {
  %2 = alloca %struct.dec3n, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 1023
  %6 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %2, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 1047552
  %9 = ashr i32 %8, 10
  %10 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %2, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1072693248
  %13 = ashr i32 %12, 20
  %14 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %2, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -1073741824
  %17 = lshr i32 %16, 30
  %18 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %2, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.dec3n* %2 to { i64, i64 }*
  %20 = load { i64, i64 }, { i64, i64 }* %19, align 4
  ret { i64, i64 } %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
