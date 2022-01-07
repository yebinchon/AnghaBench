; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_va2pa.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_va2pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@UT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i64, i64*, i64*)* @va2pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @va2pa(i64 %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i32* %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %17 = load i64, i64* @UT64_MAX, align 8
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 %19, %18
  store i64 %20, i64* %8, align 8
  store i64 0, i64* %16, align 8
  br label %21

21:                                               ; preds = %94, %7
  %22 = load i64, i64* %16, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %97

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = load i64, i64* %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %28, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = load i64, i64* %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = icmp slt i64 %36, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %35
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = load i64, i64* %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %56, %61
  store i64 %62, i64* %15, align 8
  %63 = load i64*, i64** %13, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %49
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %66, %71
  %73 = load i64*, i64** %13, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %65, %49
  %75 = load i64*, i64** %14, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = load i64, i64* %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %83, %88
  %90 = sub nsw i64 %82, %89
  %91 = load i64*, i64** %14, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %77, %74
  br label %97

93:                                               ; preds = %35, %27
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %16, align 8
  br label %21

97:                                               ; preds = %92, %21
  %98 = load i64, i64* %15, align 8
  ret i64 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
