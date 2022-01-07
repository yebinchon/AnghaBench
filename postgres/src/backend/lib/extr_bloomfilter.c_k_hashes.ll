; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_bloomfilter.c_k_hashes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_bloomfilter.c_k_hashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i8*, i64)* @k_hashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_hashes(%struct.TYPE_3__* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hash_any_extended(i8* %14, i64 %15, i32 %18)
  %20 = call i32 @DatumGetUInt64(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 32
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @mod_m(i64 %29, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @mod_m(i64 %32, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %35, i64* %37, align 8
  store i32 1, i32* %13, align 4
  br label %38

38:                                               ; preds = %61, %4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @mod_m(i64 %47, i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @mod_m(i64 %53, i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %56, i64* %60, align 8
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %38

64:                                               ; preds = %38
  ret void
}

declare dso_local i32 @DatumGetUInt64(i32) #1

declare dso_local i32 @hash_any_extended(i8*, i64, i32) #1

declare dso_local i64 @mod_m(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
