; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_GetCompositionStr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_GetCompositionStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@GCS_COMPSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to allocate IME CompositionString\0A\00", align 1
@GCS_COMPATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to allocate IME Attribute String\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_4__*)* @EDIT_GetCompositionStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_GetCompositionStr(i32 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  store i64* null, i64** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GCS_COMPSTR, align 4
  %13 = call i32 @ImmGetCompositionStringW(i32 %11, i32 %12, i64* null, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %146

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i64* @heap_alloc(i32 %18)
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %146

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GCS_COMPSTR, align 4
  %30 = load i64*, i64** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ImmGetCompositionStringW(i32 %28, i32 %29, i64* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @GCS_COMPATTR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @GCS_COMPATTR, align 4
  %41 = call i32 @ImmGetCompositionStringW(i32 %39, i32 %40, i64* null, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i64* @heap_alloc(i32 %48)
  store i64* %49, i64** %9, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 @heap_free(i64* %54)
  br label %146

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @GCS_COMPATTR, align 4
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ImmGetCompositionStringW(i32 %57, i32 %58, i64* %59, i32 %60)
  %62 = load i64*, i64** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %56, %38
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %107

101:                                              ; preds = %81
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %91
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = load i32, i32* @FALSE, align 4
  %110 = load i64*, i64** %8, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* @TRUE, align 4
  %116 = load i32, i32* @TRUE, align 4
  %117 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_4__* %108, i32 %109, i64* %110, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = call i64 @abs(i64 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = call i32 @heap_free(i64* %142)
  %144 = load i64*, i64** %8, align 8
  %145 = call i32 @heap_free(i64* %144)
  br label %146

146:                                              ; preds = %107, %52, %22, %16
  ret void
}

declare dso_local i32 @ImmGetCompositionStringW(i32, i32, i64*, i32) #1

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @heap_free(i64*) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_4__*, i32, i64*, i32, i32, i32) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
