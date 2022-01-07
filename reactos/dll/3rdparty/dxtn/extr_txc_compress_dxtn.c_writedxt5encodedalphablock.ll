; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_compress_dxtn.c_writedxt5encodedalphablock.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_compress_dxtn.c_writedxt5encodedalphablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*)* @writedxt5encodedalphablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writedxt5encodedalphablock(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 3
  %22 = or i32 %17, %21
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 3
  %27 = shl i32 %26, 6
  %28 = or i32 %22, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 2
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 1
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 4
  %44 = or i32 %39, %43
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = shl i32 %48, 7
  %50 = or i32 %44, %49
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 1
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 2
  %61 = or i32 %56, %60
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 5
  %66 = or i32 %61, %65
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 9
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 3
  %76 = or i32 %71, %75
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 10
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 3
  %81 = shl i32 %80, 6
  %82 = or i32 %76, %81
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 10
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 2
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 11
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 1
  %93 = or i32 %88, %92
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 12
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 4
  %98 = or i32 %93, %97
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 13
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = shl i32 %102, 7
  %104 = or i32 %98, %103
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 13
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 1
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 14
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 2
  %115 = or i32 %110, %114
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 15
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 5
  %120 = or i32 %115, %119
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
