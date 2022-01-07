; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c__zip_changed.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c__zip_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i64, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_changed(%struct.zip* %0, i64* %1) #0 {
  %3 = alloca %struct.zip*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.zip* %0, %struct.zip** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.zip*, %struct.zip** %3, align 8
  %9 = getelementptr inbounds %struct.zip, %struct.zip* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.zip*, %struct.zip** %3, align 8
  %14 = getelementptr inbounds %struct.zip, %struct.zip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.zip*, %struct.zip** %3, align 8
  %17 = getelementptr inbounds %struct.zip, %struct.zip* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12, %2
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %12
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %80, %21
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.zip*, %struct.zip** %3, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %22
  %29 = load %struct.zip*, %struct.zip** %3, align 8
  %30 = getelementptr inbounds %struct.zip, %struct.zip* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %28
  %38 = load %struct.zip*, %struct.zip** %3, align 8
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %37
  %47 = load %struct.zip*, %struct.zip** %3, align 8
  %48 = getelementptr inbounds %struct.zip, %struct.zip* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %46
  %56 = load %struct.zip*, %struct.zip** %3, align 8
  %57 = getelementptr inbounds %struct.zip, %struct.zip* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55, %37, %28
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %55, %46
  %68 = load %struct.zip*, %struct.zip** %3, align 8
  %69 = getelementptr inbounds %struct.zip, %struct.zip* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %76, %67
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %22

83:                                               ; preds = %22
  %84 = load i64*, i64** %4, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = load i64*, i64** %4, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
