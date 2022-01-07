; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_ChildWnd_CmdWndProc.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_ChildWnd_CmdWndProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@g_pChildWnd = common dso_local global %struct.TYPE_2__* null, align 8
@TVE_EXPAND = common dso_local global i32 0, align 4
@TVE_COLLAPSE = common dso_local global i32 0, align 4
@MB_ICONHAND = common dso_local global i32 0, align 4
@hFrameWnd = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@ID_TREE_SUGGESTION_MIN = common dso_local global i32 0, align 4
@ID_TREE_SUGGESTION_MAX = common dso_local global i32 0, align 4
@Suggestions = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ChildWnd_CmdWndProc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChildWnd_CmdWndProc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @LOWORD(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @UNREFERENCED_PARAMETER(i32 %17)
  %19 = load i32, i32* %14, align 4
  switch i32 %19, label %150 [
    i32 135, label %20
    i32 128, label %23
    i32 131, label %24
    i32 133, label %34
    i32 129, label %44
    i32 132, label %57
    i32 130, label %89
    i32 140, label %94
    i32 141, label %97
    i32 137, label %111
    i32 136, label %120
    i32 139, label %120
    i32 138, label %120
    i32 134, label %126
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DestroyWindow(i32 %21)
  br label %186

23:                                               ; preds = %4
  br label %186

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TreeView_GetSelection(i32 %30)
  %32 = load i32, i32* @TVE_EXPAND, align 4
  %33 = call i32 @TreeView_Expand(i32 %27, i32 %31, i32 %32)
  br label %186

34:                                               ; preds = %4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @TreeView_GetSelection(i32 %40)
  %42 = load i32, i32* @TVE_COLLAPSE, align 4
  %43 = call i32 @TreeView_Expand(i32 %37, i32 %41, i32 %42)
  br label %186

44:                                               ; preds = %4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SetFocus(i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @TreeView_GetSelection(i32 %54)
  %56 = call i32 @TreeView_EditLabel(i32 %51, i32 %55)
  br label %186

57:                                               ; preds = %4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TreeView_GetSelection(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @GetItemPath(i32 %64, i32 %65, i32* %11)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %57
  %74 = load i32, i32* @MB_ICONHAND, align 4
  %75 = call i32 @MessageBeep(i32 %74)
  br label %88

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @DeleteKey(i32 %77, i32 %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DeleteNode(i32 %85, i32 0)
  br label %87

87:                                               ; preds = %82, %76
  br label %88

88:                                               ; preds = %87, %73
  br label %186

89:                                               ; preds = %4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ExportRegistryFile(i32 %92)
  br label %186

94:                                               ; preds = %4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @FindDialog(i32 %95)
  br label %186

97:                                               ; preds = %4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @TreeView_GetSelection(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32* @GetItemPath(i32 %104, i32 %105, i32* %11)
  store i32* %106, i32** %12, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @CopyKeyName(i32 %107, i32 %108, i32* %109)
  br label %186

111:                                              ; preds = %4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @TreeView_GetSelection(i32 %117)
  %119 = call i32 @CreateNewKey(i32 %114, i32 %118)
  br label %186

120:                                              ; preds = %4, %4, %4
  %121 = load i32, i32* @hFrameWnd, align 4
  %122 = load i32, i32* @WM_COMMAND, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @SendMessageW(i32 %121, i32 %122, i32 %123, i32 %124)
  br label %186

126:                                              ; preds = %4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %126
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  br label %147

143:                                              ; preds = %126
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i32 [ %142, %139 ], [ %146, %143 ]
  %149 = call i32 @SetFocus(i32 %148)
  br label %186

150:                                              ; preds = %4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @ID_TREE_SUGGESTION_MIN, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %184

154:                                              ; preds = %150
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @ID_TREE_SUGGESTION_MAX, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %184

158:                                              ; preds = %154
  %159 = load i32*, i32** @Suggestions, align 8
  store i32* %159, i32** %13, align 8
  br label %160

160:                                              ; preds = %175, %158
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @ID_TREE_SUGGESTION_MIN, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @wcslen(i32* %169)
  %171 = add nsw i32 %170, 1
  %172 = load i32*, i32** %13, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %13, align 8
  br label %175

175:                                              ; preds = %168, %164
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %14, align 4
  br label %160

178:                                              ; preds = %160
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pChildWnd, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = call i32 @SelectNode(i32 %181, i32* %182)
  br label %186

184:                                              ; preds = %154, %150
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %5, align 4
  br label %188

186:                                              ; preds = %178, %147, %120, %111, %97, %94, %89, %88, %44, %34, %24, %23, %20
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @UNREFERENCED_PARAMETER(i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @TreeView_Expand(i32, i32, i32) #1

declare dso_local i32 @TreeView_GetSelection(i32) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i32 @TreeView_EditLabel(i32, i32) #1

declare dso_local i32* @GetItemPath(i32, i32, i32*) #1

declare dso_local i32 @MessageBeep(i32) #1

declare dso_local i32 @DeleteKey(i32, i32, i32*) #1

declare dso_local i32 @DeleteNode(i32, i32) #1

declare dso_local i32 @ExportRegistryFile(i32) #1

declare dso_local i32 @FindDialog(i32) #1

declare dso_local i32 @CopyKeyName(i32, i32, i32*) #1

declare dso_local i32 @CreateNewKey(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @SelectNode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
