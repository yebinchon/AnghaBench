; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_rijndael_encrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_rijndael_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rijndael_encrypt(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @io_swap(i32 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %21, %24
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @io_swap(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @io_swap(i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %39, %42
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %43, i32* %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @io_swap(i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %48, %51
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %11, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 6
  br i1 %57, label %58, label %67

58:                                               ; preds = %3
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @f_nround(i32* %59, i32* %60, i32* %61)
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @f_nround(i32* %63, i32* %64, i32* %65)
  br label %67

67:                                               ; preds = %58, %3
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @f_nround(i32* %71, i32* %72, i32* %73)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @f_nround(i32* %75, i32* %76, i32* %77)
  br label %79

79:                                               ; preds = %70, %67
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @f_nround(i32* %80, i32* %81, i32* %82)
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @f_nround(i32* %84, i32* %85, i32* %86)
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @f_nround(i32* %88, i32* %89, i32* %90)
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @f_nround(i32* %92, i32* %93, i32* %94)
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @f_nround(i32* %96, i32* %97, i32* %98)
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @f_nround(i32* %100, i32* %101, i32* %102)
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @f_nround(i32* %104, i32* %105, i32* %106)
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @f_nround(i32* %108, i32* %109, i32* %110)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @f_nround(i32* %112, i32* %113, i32* %114)
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @f_lround(i32* %116, i32* %117, i32* %118)
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = call i32 @io_swap(i32 %121)
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %122, i32* %124, align 4
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @io_swap(i32 %126)
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %127, i32* %129, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @io_swap(i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 %132, i32* %134, align 4
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @io_swap(i32 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 %137, i32* %139, align 4
  ret void
}

declare dso_local i32 @io_swap(i32) #1

declare dso_local i32 @f_nround(i32*, i32*, i32*) #1

declare dso_local i32 @f_lround(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
