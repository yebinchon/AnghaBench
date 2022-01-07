; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_UpdateTipTextT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_UpdateTipTextT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i64, i32*, i32 }

@TTTOOLINFOW_V1_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tool %d\0A\00", align 1
@LPSTR_TEXTCALLBACKW = common dso_local global i32* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i64)* @TOOLTIPS_UpdateTipTextT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLTIPS_UpdateTipTextT(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %180

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TTTOOLINFOW_V1_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %180

23:                                               ; preds = %15
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = call i32 @TOOLTIPS_GetToolFromInfoT(%struct.TYPE_11__* %24, %struct.TYPE_10__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %180

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %8, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @IS_INTRESOURCE(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %154

55:                                               ; preds = %30
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %153

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @TOOLTIPS_IsCallbackString(i32* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32*, i32** @LPSTR_TEXTCALLBACKW, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  br label %152

71:                                               ; preds = %60
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @IS_INTRESOURCE(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** @LPSTR_TEXTCALLBACKW, align 8
  %87 = icmp ne i32* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @Free(i32* %91)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %93, %76, %71
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %151

101:                                              ; preds = %96
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @lstrlenW(i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i8* @Alloc(i32 %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @strcpyW(i32* %120, i32* %123)
  br label %150

125:                                              ; preds = %101
  %126 = load i32, i32* @CP_ACP, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = ptrtoint i32* %129 to i32
  %131 = call i32 @MultiByteToWideChar(i32 %126, i32 0, i32 %130, i32 -1, i32* null, i32 0)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i8* @Alloc(i32 %135)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  store i32* %137, i32** %139, align 8
  %140 = load i32, i32* @CP_ACP, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = ptrtoint i32* %143 to i32
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @MultiByteToWideChar(i32 %140, i32 0, i32 %144, i32 -1, i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %125, %104
  br label %151

151:                                              ; preds = %150, %96
  br label %152

152:                                              ; preds = %151, %67
  br label %153

153:                                              ; preds = %152, %55
  br label %154

154:                                              ; preds = %153, %49
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %180

160:                                              ; preds = %154
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = load i32, i32* @FALSE, align 4
  %168 = call i32 @TOOLTIPS_Show(%struct.TYPE_11__* %166, i32 %167)
  br label %179

169:                                              ; preds = %160
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = load i32, i32* @TRUE, align 4
  %177 = call i32 @TOOLTIPS_Show(%struct.TYPE_11__* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %178, %165
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %159, %29, %21, %14
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @TOOLTIPS_GetToolFromInfoT(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @IS_INTRESOURCE(i32*) #1

declare dso_local i64 @TOOLTIPS_IsCallbackString(i32*, i64) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @strcpyW(i32*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @TOOLTIPS_Show(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
