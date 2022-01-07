; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_debug.c_get_file.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_debug.c_get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_6__*, i64)* @get_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_file(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  store %struct.TYPE_5__** %19, %struct.TYPE_5__*** %6, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %48, %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %31
  store %struct.TYPE_5__** %32, %struct.TYPE_5__*** %9, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %26
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %40, i64 1
  store %struct.TYPE_5__** %41, %struct.TYPE_5__*** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %39
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i32 -1
  store %struct.TYPE_5__** %51, %struct.TYPE_5__*** %6, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %56 = icmp ule %struct.TYPE_5__** %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %61, i64 %65
  %67 = icmp ult %struct.TYPE_5__** %58, %66
  br label %68

68:                                               ; preds = %57, %49
  %69 = phi i1 [ false, %49 ], [ %67, %57 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @mrb_assert(i32 %70)
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %68
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %80, i64 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = ptrtoint %struct.TYPE_5__** %81 to i64
  %86 = ptrtoint %struct.TYPE_5__** %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %78
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %95, i64 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  br label %104

100:                                              ; preds = %78
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i64 [ %99, %94 ], [ %103, %100 ]
  %106 = icmp slt i64 %79, %105
  br label %107

107:                                              ; preds = %104, %68
  %108 = phi i1 [ false, %68 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @mrb_assert(i32 %109)
  %111 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %3, align 8
  br label %113

113:                                              ; preds = %107, %15
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %114
}

declare dso_local i32 @mrb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
