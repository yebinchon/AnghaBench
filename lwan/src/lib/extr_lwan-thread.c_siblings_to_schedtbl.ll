; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_siblings_to_schedtbl.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_siblings_to_schedtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan*, i64*, i64*)* @siblings_to_schedtbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siblings_to_schedtbl(%struct.lwan* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.lwan*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.lwan* %0, %struct.lwan** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.lwan*, %struct.lwan** %4, align 8
  %12 = getelementptr inbounds %struct.lwan, %struct.lwan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32* @alloca(i32 %16)
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %29, %3
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.lwan*, %struct.lwan** %4, align 8
  %21 = getelementptr inbounds %struct.lwan, %struct.lwan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %18

32:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %79, %32
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.lwan*, %struct.lwan** %4, align 8
  %36 = getelementptr inbounds %struct.lwan, %struct.lwan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %33
  %41 = load i32*, i32** %7, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %7, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 %51, i32* %57, align 4
  br label %78

58:                                               ; preds = %40
  %59 = load i32*, i32** %7, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  store i64 %66, i64* %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %58, %49
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %33

82:                                               ; preds = %33
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load i64*, i64** %6, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.lwan*, %struct.lwan** %4, align 8
  %89 = getelementptr inbounds %struct.lwan, %struct.lwan* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i64* %86, i32* %87, i32 %93)
  br label %95

95:                                               ; preds = %85, %82
  ret void
}

declare dso_local i32* @alloca(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
