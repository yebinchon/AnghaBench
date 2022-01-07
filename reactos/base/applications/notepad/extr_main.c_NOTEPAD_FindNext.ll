; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_FindNext.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_FindNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@Globals = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EM_GETSEL = common dso_local global i32 0, align 4
@EM_REPLACESEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FR_DOWN = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@EM_SCROLLCARET = common dso_local global i32 0, align 4
@STRING_CANNOTFIND = common dso_local global i32 0, align 4
@STRING_NOTEPAD = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NOTEPAD_FindNext(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [128 x i32], align 16
  %17 = alloca [128 x i32], align 16
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %15, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @_tcslen(i64 %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 2), align 4
  %26 = call i32 @GetWindowTextLength(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %3
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i64 @HeapAlloc(i32 %30, i32 0, i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %196

42:                                               ; preds = %29
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 2), align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @GetWindowText(i32 %43, i32* %44, i32 %46)
  br label %48

48:                                               ; preds = %42, %3
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 2), align 4
  %50 = load i32, i32* @EM_GETSEL, align 4
  %51 = ptrtoint i64* %13 to i64
  %52 = ptrtoint i64* %14 to i64
  %53 = call i32 @SendMessage(i32 %49, i32 %50, i64 %51, i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %48
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %13, align 8
  %68 = call i64 @NOTEPAD_FindTextAt(%struct.TYPE_5__* %64, i32* %65, i32 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 2), align 4
  %72 = load i32, i32* @EM_REPLACESEL, align 4
  %73 = load i64, i64* @TRUE, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @SendMessage(i32 %71, i32 %72, i64 %73, i64 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @_tcslen(i64 %80)
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sub nsw i64 %82, %83
  %85 = sub nsw i64 %81, %84
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %70, %63
  br label %87

87:                                               ; preds = %86, %56, %48
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FR_DOWN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %110, %94
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @NOTEPAD_FindTextAt(%struct.TYPE_5__* %102, i32* %103, i32 %104, i64 %105)
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %113

110:                                              ; preds = %101
  %111 = load i64, i64* %12, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %12, align 8
  br label %96

113:                                              ; preds = %109, %96
  br label %132

114:                                              ; preds = %87
  %115 = load i64, i64* %13, align 8
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %130, %114
  %117 = load i64, i64* %12, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load i64, i64* %12, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %12, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i64, i64* %12, align 8
  %126 = call i64 @NOTEPAD_FindTextAt(%struct.TYPE_5__* %122, i32* %123, i32 %124, i64 %125)
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %131

130:                                              ; preds = %119
  br label %116

131:                                              ; preds = %129, %116
  br label %132

132:                                              ; preds = %131, %113
  %133 = load i64, i64* %15, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* %13, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %12, align 8
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 2), align 4
  %145 = load i32, i32* @EM_SETSEL, align 4
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = call i32 @SendMessage(i32 %144, i32 %145, i64 %146, i64 %150)
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 2), align 4
  %153 = load i32, i32* @EM_SCROLLCARET, align 4
  %154 = call i32 @SendMessage(i32 %152, i32 %153, i64 0, i64 0)
  %155 = load i64, i64* @TRUE, align 8
  store i64 %155, i64* %18, align 8
  br label %187

156:                                              ; preds = %132
  %157 = load i64, i64* %7, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %156
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 1), align 4
  %161 = load i32, i32* @STRING_CANNOTFIND, align 4
  %162 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %163 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %164 = call i32 @ARRAY_SIZE(i32* %163)
  %165 = call i32 @LoadString(i32 %160, i32 %161, i32* %162, i32 %164)
  %166 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %167 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %168 = call i32 @ARRAY_SIZE(i32* %167)
  %169 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @_sntprintf(i32* %166, i32 %168, i32* %169, i64 %172)
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 1), align 4
  %175 = load i32, i32* @STRING_NOTEPAD, align 4
  %176 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %177 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %178 = call i32 @ARRAY_SIZE(i32* %177)
  %179 = call i32 @LoadString(i32 %174, i32 %175, i32* %176, i32 %178)
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 0), align 4
  %181 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %182 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %183 = load i32, i32* @MB_OK, align 4
  %184 = call i32 @MessageBox(i32 %180, i32* %181, i32* %182, i32 %183)
  br label %185

185:                                              ; preds = %159, %156
  %186 = load i64, i64* @FALSE, align 8
  store i64 %186, i64* %18, align 8
  br label %187

187:                                              ; preds = %185, %143
  %188 = load i32*, i32** %11, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = call i32 (...) @GetProcessHeap()
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @HeapFree(i32 %191, i32 0, i32* %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load i64, i64* %18, align 8
  store i64 %195, i64* %4, align 8
  br label %196

196:                                              ; preds = %194, %40
  %197 = load i64, i64* %4, align 8
  ret i64 %197
}

declare dso_local i64 @_tcslen(i64) #1

declare dso_local i32 @GetWindowTextLength(i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetWindowText(i32, i32*, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i64, i64) #1

declare dso_local i64 @NOTEPAD_FindTextAt(%struct.TYPE_5__*, i32*, i32, i64) #1

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @_sntprintf(i32*, i32, i32*, i64) #1

declare dso_local i32 @MessageBox(i32, i32*, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
