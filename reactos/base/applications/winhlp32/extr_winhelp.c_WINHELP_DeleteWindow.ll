; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_winhelp.c_WINHELP_DeleteWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_winhelp.c_WINHELP_DeleteWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@Globals = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@CTL_ID_TEXT = common dso_local global i32 0, align 4
@GWLP_WNDPROC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @WINHELP_DeleteWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WINHELP_DeleteWindow(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1), %struct.TYPE_10__*** %3, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = icmp eq %struct.TYPE_10__* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %19, align 8
  br label %25

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 6
  store %struct.TYPE_10__** %24, %struct.TYPE_10__*** %3, align 8
  br label %6

25:                                               ; preds = %15, %6
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 0), align 8
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lstrcmpiA(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %28, %25
  %38 = phi i1 [ false, %25 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 3), align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = icmp eq %struct.TYPE_10__* %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1), align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 3), align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1), align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SetActiveWindow(i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  %56 = icmp eq %struct.TYPE_10__* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store %struct.TYPE_10__* null, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CTL_ID_TEXT, align 4
  %63 = call i32 @GetDlgItem(i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @GWLP_WNDPROC, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @SetWindowLongPtrA(i32 %64, i32 %65, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = call i32 @WINHELP_DeleteButtons(%struct.TYPE_10__* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %58
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = call i32 @WINHELP_DeletePageLinks(%struct.TYPE_11__* %80)
  br label %82

82:                                               ; preds = %77, %58
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @DestroyWindow(i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @DeleteObject(i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = call i32 @WINHELP_DeleteBackSet(%struct.TYPE_10__* %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = icmp ne %struct.TYPE_11__* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @HLPFILE_FreeHlpFile(i32 %108)
  br label %110

110:                                              ; preds = %103, %92
  %111 = call i32 (...) @GetProcessHeap()
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = call i32 @HeapFree(i32 %111, i32 0, %struct.TYPE_10__* %112)
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (...) @MACRO_Exit()
  br label %118

118:                                              ; preds = %116, %110
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1), align 8
  %120 = icmp ne %struct.TYPE_10__* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call i32 @PostQuitMessage(i32 0)
  br label %123

123:                                              ; preds = %121, %118
  ret void
}

declare dso_local i32 @lstrcmpiA(i32, i8*) #1

declare dso_local i32 @SetActiveWindow(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SetWindowLongPtrA(i32, i32, i32) #1

declare dso_local i32 @WINHELP_DeleteButtons(%struct.TYPE_10__*) #1

declare dso_local i32 @WINHELP_DeletePageLinks(%struct.TYPE_11__*) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @WINHELP_DeleteBackSet(%struct.TYPE_10__*) #1

declare dso_local i32 @HLPFILE_FreeHlpFile(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @MACRO_Exit(...) #1

declare dso_local i32 @PostQuitMessage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
