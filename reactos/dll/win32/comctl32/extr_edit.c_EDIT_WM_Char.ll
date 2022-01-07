; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_Char.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_Char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@VK_CONTROL = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_WANTRETURN = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EDIT_WM_Char.cr_lfW = internal constant [2 x i32] [i32 13, i32 10], align 4
@TRUE = common dso_local global i32 0, align 4
@EDIT_WM_Char.tabW = internal constant [1 x i32] [i32 9], align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@WM_COPY = common dso_local global i32 0, align 4
@WM_PASTE = common dso_local global i32 0, align 4
@WM_CUT = common dso_local global i32 0, align 4
@WM_UNDO = common dso_local global i32 0, align 4
@ES_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @EDIT_WM_Char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_Char(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @VK_CONTROL, align 4
  %7 = call i32 @GetKeyState(i32 %6)
  %8 = and i32 %7, 32768
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %182 [
    i32 13, label %10
    i32 10, label %31
    i32 9, label %61
    i32 128, label %87
    i32 3, label %119
    i32 22, label %133
    i32 24, label %147
    i32 26, label %168
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ES_MULTILINE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ES_WANTRETURN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @EDIT_IsInsideDialog(%struct.TYPE_10__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %216

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %17, %10
  br label %31

31:                                               ; preds = %2, %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ES_MULTILINE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ES_READONLY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @EDIT_MoveHome(%struct.TYPE_10__* %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @EDIT_MoveDown_ML(%struct.TYPE_10__* %50, i32 %51)
  br label %59

53:                                               ; preds = %38
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__* %54, i32 %55, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @EDIT_WM_Char.cr_lfW, i64 0, i64 0), i32 2, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59, %31
  br label %216

61:                                               ; preds = %2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ES_MULTILINE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ES_READONLY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = call i32 @EDIT_IsInsideDialog(%struct.TYPE_10__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %216

80:                                               ; preds = %75
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__* %81, i32 %82, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @EDIT_WM_Char.tabW, i64 0, i64 0), i32 1, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %68, %61
  br label %216

87:                                               ; preds = %2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ES_READONLY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %118, label %97

97:                                               ; preds = %94
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = call i32 @EDIT_WM_Clear(%struct.TYPE_10__* %106)
  br label %117

108:                                              ; preds = %97
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = call i32 @EDIT_EM_SetSel(%struct.TYPE_10__* %109, i32 -1, i32 0, i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @EDIT_MoveBackward(%struct.TYPE_10__* %112, i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = call i32 @EDIT_WM_Clear(%struct.TYPE_10__* %115)
  br label %117

117:                                              ; preds = %108, %105
  br label %118

118:                                              ; preds = %117, %94, %87
  br label %216

119:                                              ; preds = %2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ES_PASSWORD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WM_COPY, align 4
  %131 = call i32 @SendMessageW(i32 %129, i32 %130, i32 0, i32 0)
  br label %132

132:                                              ; preds = %126, %119
  br label %216

133:                                              ; preds = %2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ES_READONLY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %133
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @WM_PASTE, align 4
  %145 = call i32 @SendMessageW(i32 %143, i32 %144, i32 0, i32 0)
  br label %146

146:                                              ; preds = %140, %133
  br label %216

147:                                              ; preds = %2
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ES_READONLY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ES_PASSWORD, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %154
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @WM_CUT, align 4
  %166 = call i32 @SendMessageW(i32 %164, i32 %165, i32 0, i32 0)
  br label %167

167:                                              ; preds = %161, %154, %147
  br label %216

168:                                              ; preds = %2
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ES_READONLY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %168
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @WM_UNDO, align 4
  %180 = call i32 @SendMessageW(i32 %178, i32 %179, i32 0, i32 0)
  br label %181

181:                                              ; preds = %175, %168
  br label %216

182:                                              ; preds = %2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ES_NUMBER, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load i32, i32* %4, align 4
  %191 = icmp sge i32 %190, 48
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %4, align 4
  %194 = icmp sle i32 %193, 57
  br i1 %194, label %196, label %195

195:                                              ; preds = %192, %189
  br label %216

196:                                              ; preds = %192, %182
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ES_READONLY, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %4, align 4
  %205 = icmp sge i32 %204, 32
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load i32, i32* %4, align 4
  %208 = icmp ne i32 %207, 127
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %211 = load i32, i32* @TRUE, align 4
  %212 = load i32, i32* @TRUE, align 4
  %213 = load i32, i32* @TRUE, align 4
  %214 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__* %210, i32 %211, i32* %4, i32 1, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %206, %203, %196
  br label %216

216:                                              ; preds = %215, %195, %181, %167, %146, %132, %118, %86, %79, %60, %28
  ret i32 1
}

declare dso_local i32 @GetKeyState(i32) #1

declare dso_local i32 @EDIT_IsInsideDialog(%struct.TYPE_10__*) #1

declare dso_local i32 @EDIT_MoveHome(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @EDIT_MoveDown_ML(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @EDIT_WM_Clear(%struct.TYPE_10__*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @EDIT_MoveBackward(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
