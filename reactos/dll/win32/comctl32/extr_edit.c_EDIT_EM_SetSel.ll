; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_SetSel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_SetSel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64, i64)* @EDIT_EM_SetSel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EDIT_EM_SetSel(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = call i64 @get_text_length(%struct.TYPE_5__* %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %5, align 8
  br label %115

30:                                               ; preds = %24, %4
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %47

40:                                               ; preds = %30
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @min(i64 %41, i64 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @min(i64 %44, i64 %45)
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i32, i32* @EF_AFTER_WRAP, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %69

62:                                               ; preds = %47
  %63 = load i32, i32* @EF_AFTER_WRAP, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @ORDER_UINT(i64 %70, i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @ORDER_UINT(i64 %73, i64 %74)
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @ORDER_UINT(i64 %76, i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @ORDER_UINT(i64 %79, i64 %80)
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %69
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %90, i64 %91, i64 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %94, i64 %95, i64 %96)
  br label %107

98:                                               ; preds = %85
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %99, i64 %100, i64 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %103, i64 %104, i64 %105)
  br label %107

107:                                              ; preds = %98, %89
  br label %113

108:                                              ; preds = %69
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %109, i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %108, %107
  %114 = load i64, i64* @TRUE, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %113, %28
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i64 @get_text_length(%struct.TYPE_5__*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ORDER_UINT(i64, i64) #1

declare dso_local i32 @EDIT_InvalidateText(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
