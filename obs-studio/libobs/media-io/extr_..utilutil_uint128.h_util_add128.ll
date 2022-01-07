; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilutil_uint128.h_util_add128.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilutil_uint128.h_util_add128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i8** } (i64, i8**, i64, i8**)* @util_add128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8** } @util_add128(i64 %0, i8** %1, i64 %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_5__* %6 to { i64, i8** }*
  %10 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %9, i32 0, i32 1
  store i8** %1, i8*** %11, align 8
  %12 = bitcast %struct.TYPE_5__* %7 to { i64, i8** }*
  %13 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %12, i32 0, i32 1
  store i8** %3, i8*** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = add i64 %18, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 4294967295
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 32
  store i32 %33, i32* %8, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 32
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 32
  %40 = add nsw i32 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 32
  store i32 %50, i32* %8, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 4294967295
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %57, 4294967295
  %59 = add i64 %54, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = and i64 %65, 4294967295
  %67 = inttoptr i64 %66 to i8*
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = ashr i32 %71, 32
  store i32 %72, i32* %8, align 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 32
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 32
  %79 = add nsw i32 %75, %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 3
  store i8* %84, i8** %87, align 8
  %88 = bitcast %struct.TYPE_5__* %5 to { i64, i8** }*
  %89 = load { i64, i8** }, { i64, i8** }* %88, align 8
  ret { i64, i8** } %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
