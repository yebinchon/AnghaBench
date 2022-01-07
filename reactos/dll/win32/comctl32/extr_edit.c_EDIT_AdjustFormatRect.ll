; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_AdjustFormatRect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_AdjustFormatRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @EDIT_AdjustFormatRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_AdjustFormatRect(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i64 @max(i64 %11, i64 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ES_MULTILINE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = call i64 @get_vertical_line_count(%struct.TYPE_13__* %31)
  store i64 %32, i64* %5, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = mul nsw i64 %37, %40
  %42 = add nsw i64 %36, %41
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  store i64 %42, i64* %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %49, %53
  store i64 %54, i64* %4, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub nsw i64 %76, %77
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i64 0, i64* %7, align 8
  br label %82

82:                                               ; preds = %81, %73
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 6
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_13__* %93)
  br label %107

95:                                               ; preds = %1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %92
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @GetClientRect(i32 %110, %struct.TYPE_12__* %3)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @min(i64 %115, i32 %117)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i64 %118, i64* %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ES_MULTILINE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %107
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %138 = call i32 @get_text_length(%struct.TYPE_13__* %137)
  %139 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_13__* %136, i32 0, i32 %138, i32 0, i32* null)
  br label %140

140:                                              ; preds = %135, %128, %107
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @EF_AFTER_WRAP, align 4
  %149 = and i32 %147, %148
  %150 = call i32 @EDIT_SetCaretPos(%struct.TYPE_13__* %141, i32 %144, i32 %149)
  ret void
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @get_vertical_line_count(%struct.TYPE_13__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_13__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_13__*, i32, i32, i32, i32*) #1

declare dso_local i32 @get_text_length(%struct.TYPE_13__*) #1

declare dso_local i32 @EDIT_SetCaretPos(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
