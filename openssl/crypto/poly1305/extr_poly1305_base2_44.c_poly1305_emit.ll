; ModuleID = '/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_base2_44.c_poly1305_emit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_base2_44.c_poly1305_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poly1305_emit(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %7, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 44
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %14, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 20
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 24
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %14, align 4
  %44 = ashr i32 %43, 64
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %14, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 40
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %14, align 4
  %49 = ashr i32 %48, 64
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 5
  store i32 %53, i32* %14, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %14, align 4
  %56 = ashr i32 %55, 64
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %14, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %14, align 4
  %60 = ashr i32 %59, 64
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 2
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %15, align 4
  %72 = xor i32 %71, -1
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %15, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %15, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %6, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64*, i64** %6, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 32
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %88, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %14, align 4
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %6, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load i64*, i64** %6, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 3
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = shl i32 %106, 32
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %102, %108
  %110 = load i32, i32* %14, align 4
  %111 = ashr i32 %110, 64
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  store i32 %114, i32* %9, align 4
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @U64TO8(i8* %116, i32 %117)
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @U64TO8(i8* %120, i32 %121)
  ret void
}

declare dso_local i32 @U64TO8(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
