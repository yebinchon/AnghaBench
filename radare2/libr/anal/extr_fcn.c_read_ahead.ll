; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_fcn.c_read_ahead.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_fcn.c_read_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i64, i32*, i32)*, i32 }

@read_ahead.cache = internal global [1024 x i32] zeroinitializer, align 16
@cache_addr = common dso_local global i64 0, align 8
@UT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32*, i32)* @read_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ahead(%struct.TYPE_5__* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %103

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 4096
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 %25(i32 %29, i64 %30, i32* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @memcpy(i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @read_ahead.cache, i64 0, i64 0), i32* %34, i32 4096)
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* @cache_addr, align 8
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %103

38:                                               ; preds = %18
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @UT64_ADD_OVFCHK(i64 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @UT64_MAX, align 8
  br label %50

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi i64 [ %44, %43 ], [ %49, %45 ]
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* @cache_addr, align 8
  %53 = call i64 @UT64_ADD_OVFCHK(i64 %52, i32 4096)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @UT64_MAX, align 8
  br label %60

57:                                               ; preds = %50
  %58 = load i64, i64* @cache_addr, align 8
  %59 = add nsw i64 %58, 4096
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i64 [ %56, %55 ], [ %59, %57 ]
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @UT64_MAX, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @cache_addr, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp slt i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65, %60
  %74 = phi i1 [ false, %65 ], [ false, %60 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32*, i32** %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @cache_addr, align 8
  %82 = sub nsw i64 %80, %81
  %83 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @read_ahead.cache, i64 0, i64 0), i64 %82
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @memcpy(i32* %79, i32* %83, i32 %84)
  br label %101

86:                                               ; preds = %73
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 %90(i32 %94, i64 %95, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @read_ahead.cache, i64 0, i64 0), i32 4096)
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @memcpy(i32* %97, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @read_ahead.cache, i64 0, i64 0), i32 %98)
  %100 = load i64, i64* %7, align 8
  store i64 %100, i64* @cache_addr, align 8
  br label %101

101:                                              ; preds = %86, %78
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %21, %17
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @UT64_ADD_OVFCHK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
