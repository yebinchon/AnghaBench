; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_read_index_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_read_index_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i64, i64, i64, i64*)* }
%struct.TYPE_7__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_read_index_span(%struct.TYPE_9__* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %15, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %23, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %22, %14, %5
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %31

42:                                               ; preds = %31
  br label %113

43:                                               ; preds = %22
  %44 = load i64, i64* %8, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ule i64 %49, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_9__*, i64, i64, i64, i64*)*, i32 (%struct.TYPE_9__*, i64, i64, i64, i64*)** %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = call i32 %60(%struct.TYPE_9__* %61, i64 %62, i64 %63, i64 %64, i64* %65)
  br label %112

67:                                               ; preds = %46, %43
  store i64 0, i64* %11, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %79, %70
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = icmp ugt i64 %75, 0
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  br i1 %78, label %79, label %89

79:                                               ; preds = %77
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %71

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %67
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub nsw i64 %96, %97
  %99 = call i64 @MIN2(i64 %91, i64 %98)
  store i64 %99, i64* %7, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_9__*, i64, i64, i64, i64*)*, i32 (%struct.TYPE_9__*, i64, i64, i64, i64*)** %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = call i32 %103(%struct.TYPE_9__* %104, i64 %105, i64 %106, i64 %107, i64* %110)
  br label %112

112:                                              ; preds = %90, %56
  br label %113

113:                                              ; preds = %112, %42
  ret void
}

declare dso_local i64 @MIN2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
