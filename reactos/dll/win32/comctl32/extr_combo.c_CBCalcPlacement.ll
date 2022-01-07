; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBCalcPlacement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBCalcPlacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }

@CBS_SIMPLE = common dso_local global i64 0, align 8
@SM_CXVSCROLL = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i64 0, align 8
@CBS_DROPDOWNLIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"\09text\09= (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09button\09= (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09lbox\09= (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @CBCalcPlacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBCalcPlacement(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %13 = call i32 @GetClientRect(i32 %11, %struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = call i32 (...) @COMBO_XBORDERSIZE()
  %16 = sub nsw i32 0, %15
  %17 = call i32 (...) @COMBO_YBORDERSIZE()
  %18 = sub nsw i32 0, %17
  %19 = call i32 @InflateRect(%struct.TYPE_14__* %14, i32 %16, i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = call i64 @CBGetTextAreaHeight(i32 %23, %struct.TYPE_15__* %24)
  %26 = add nsw i64 %22, %25
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = call i32 @CopyRect(%struct.TYPE_14__* %29, %struct.TYPE_14__* %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = call i64 @CB_GETTYPE(%struct.TYPE_15__* %32)
  %34 = load i64, i64* @CBS_SIMPLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %5
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %57

43:                                               ; preds = %5
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @SM_CXVSCROLL, align 4
  %48 = call i64 @GetSystemMetrics(i32 %47)
  %49 = sub nsw i64 %46, %48
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %43, %36
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = call i64 @CB_GETTYPE(%struct.TYPE_15__* %58)
  %60 = load i64, i64* @CBS_DROPDOWN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = call i64 (...) @COMBO_EDITBUTTONSPACE()
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = call i64 @CB_GETTYPE(%struct.TYPE_15__* %69)
  %71 = load i64, i64* @CBS_DROPDOWNLIST, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = call i32 (...) @EDIT_CONTROL_PADDING()
  %76 = sub nsw i32 0, %75
  %77 = call i32 (...) @EDIT_CONTROL_PADDING()
  %78 = sub nsw i32 0, %77
  %79 = call i32 @InflateRect(%struct.TYPE_14__* %74, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = call i64 @CB_GETTYPE(%struct.TYPE_15__* %81)
  %83 = load i64, i64* @CBS_SIMPLE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = call i32 @GetClientRect(i32 %86, %struct.TYPE_14__* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (...) @COMBO_YBORDERSIZE()
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %143

97:                                               ; preds = %80
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (...) @COMBO_XBORDERSIZE()
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = icmp slt i64 %100, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %97
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (...) @COMBO_XBORDERSIZE()
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = add nsw i64 %111, %117
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = call i64 @CB_GETTYPE(%struct.TYPE_15__* %121)
  %123 = load i64, i64* @CBS_DROPDOWN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %108
  %126 = call i64 (...) @COMBO_EDITBUTTONSPACE()
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %125, %108
  br label %142

132:                                              ; preds = %97
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %132, %131
  br label %143

143:                                              ; preds = %142, %85
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %146, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %151, %143
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = call i32 @wine_dbgstr_rect(%struct.TYPE_14__* %158)
  %160 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %162 = call i32 @wine_dbgstr_rect(%struct.TYPE_14__* %161)
  %163 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %165 = call i32 @wine_dbgstr_rect(%struct.TYPE_14__* %164)
  %166 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  ret void
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @InflateRect(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @COMBO_XBORDERSIZE(...) #1

declare dso_local i32 @COMBO_YBORDERSIZE(...) #1

declare dso_local i64 @CBGetTextAreaHeight(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CopyRect(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_15__*) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i64 @COMBO_EDITBUTTONSPACE(...) #1

declare dso_local i32 @EDIT_CONTROL_PADDING(...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
