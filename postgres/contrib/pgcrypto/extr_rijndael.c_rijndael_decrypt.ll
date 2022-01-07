; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_rijndael_decrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_rijndael_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rijndael_decrypt(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @io_swap(i32 %24)
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 4, %27
  %29 = add nsw i32 %28, 24
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %25, %32
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @io_swap(i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 4, %40
  %42 = add nsw i32 %41, 25
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %38, %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @io_swap(i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 4, %53
  %55 = add nsw i32 %54, 26
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %51, %58
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %59, i32* %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @io_swap(i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 4, %66
  %68 = add nsw i32 %67, 27
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %64, %71
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 5
  %77 = mul nsw i32 4, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32* %79, i32** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 6
  br i1 %81, label %82, label %91

82:                                               ; preds = %3
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @i_nround(i32* %83, i32* %84, i32* %85)
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @i_nround(i32* %87, i32* %88, i32* %89)
  br label %91

91:                                               ; preds = %82, %3
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 4
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @i_nround(i32* %95, i32* %96, i32* %97)
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @i_nround(i32* %99, i32* %100, i32* %101)
  br label %103

103:                                              ; preds = %94, %91
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @i_nround(i32* %104, i32* %105, i32* %106)
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @i_nround(i32* %108, i32* %109, i32* %110)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @i_nround(i32* %112, i32* %113, i32* %114)
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @i_nround(i32* %116, i32* %117, i32* %118)
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @i_nround(i32* %120, i32* %121, i32* %122)
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @i_nround(i32* %124, i32* %125, i32* %126)
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @i_nround(i32* %128, i32* %129, i32* %130)
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @i_nround(i32* %132, i32* %133, i32* %134)
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @i_nround(i32* %136, i32* %137, i32* %138)
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @i_lround(i32* %140, i32* %141, i32* %142)
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = call i32 @io_swap(i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @io_swap(i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %151, i32* %153, align 4
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @io_swap(i32 %155)
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @io_swap(i32 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  store i32 %161, i32* %163, align 4
  ret void
}

declare dso_local i32 @io_swap(i32) #1

declare dso_local i32 @i_nround(i32*, i32*, i32*) #1

declare dso_local i32 @i_lround(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
