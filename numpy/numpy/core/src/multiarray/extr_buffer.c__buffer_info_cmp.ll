; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_info_cmp.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_info_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @_buffer_info_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_buffer_info_cmp(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strcmp(i32 %10, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %3, align 8
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %84

31:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %80, %31
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %46, %53
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %3, align 8
  br label %84

59:                                               ; preds = %39
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %66, %73
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %59
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %84

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %32

83:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  br label %84

84:                                               ; preds = %83, %77, %57, %29, %17
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
