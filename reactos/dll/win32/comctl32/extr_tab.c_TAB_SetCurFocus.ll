; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tab.c_TAB_SetCurFocus.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tab.c_TAB_SetCurFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%p %d)\0A\00", align 1
@TCN_SELCHANGE = common dso_local global i32 0, align 4
@TCS_BUTTONS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TCN_FOCUSCHANGE = common dso_local global i32 0, align 4
@TCN_SELCHANGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @TAB_SetCurFocus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TAB_SetCurFocus(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = load i32, i32* @TCN_SELCHANGE, align 4
  %25 = call i32 @TAB_SendSimpleNotify(%struct.TYPE_8__* %23, i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @TAB_InvalidateTabArea(%struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %20, %13
  br label %131

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %130

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TCS_BUTTONS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %48
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @TAB_InternalGetItemRect(%struct.TYPE_8__* %61, i32 %62, i32* %6, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @InvalidateRect(i32 %68, i32* %6, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  br label %72

72:                                               ; preds = %71, %48
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @TAB_InternalGetItemRect(%struct.TYPE_8__* %73, i32 %74, i32* %6, i32* null)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32 @InvalidateRect(i32 %80, i32* %6, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = load i32, i32* @TCN_FOCUSCHANGE, align 4
  %86 = call i32 @TAB_SendSimpleNotify(%struct.TYPE_8__* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %42
  br label %129

88:                                               ; preds = %35
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %128

100:                                              ; preds = %97, %88
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = load i32, i32* @TCN_SELCHANGING, align 4
  %109 = call i32 @TAB_SendSimpleNotify(%struct.TYPE_8__* %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = load i32, i32* @TCN_SELCHANGE, align 4
  %117 = call i32 @TAB_SendSimpleNotify(%struct.TYPE_8__* %115, i32 %116)
  br label %122

118:                                              ; preds = %106
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = call i32 @TAB_EnsureSelectionVisible(%struct.TYPE_8__* %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = call i32 @TAB_InvalidateTabArea(%struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %122, %100
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128, %87
  br label %130

130:                                              ; preds = %129, %29
  br label %131

131:                                              ; preds = %130, %28
  ret i32 0
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @TAB_SendSimpleNotify(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TAB_InvalidateTabArea(%struct.TYPE_8__*) #1

declare dso_local i64 @TAB_InternalGetItemRect(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @TAB_EnsureSelectionVisible(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
