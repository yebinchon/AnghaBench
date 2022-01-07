; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"string=%s rect=(%s)\0A\00", align 1
@CDIS_HOT = common dso_local global i32 0, align 4
@TBCDRF_HILITEHOTTRACK = common dso_local global i32 0, align 4
@CDIS_DISABLED = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@CDIS_INDETERMINATE = common dso_local global i32 0, align 4
@CDIS_MARKED = common dso_local global i32 0, align 4
@TBCDRF_NOMARK = common dso_local global i32 0, align 4
@CDIS_CHECKED = common dso_local global i32 0, align 4
@CDIS_SELECTED = common dso_local global i32 0, align 4
@DTT_GRAYED = common dso_local global i32 0, align 4
@TP_BUTTON = common dso_local global i32 0, align 4
@TS_DISABLED = common dso_local global i32 0, align 4
@TS_HOT = common dso_local global i32 0, align 4
@TS_HOTCHECKED = common dso_local global i32 0, align 4
@TS_NORMAL = common dso_local global i32 0, align 4
@TS_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32, %struct.TYPE_9__*, i32)* @TOOLBAR_DrawString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_DrawString(%struct.TYPE_8__* %0, i32* %1, i32 %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %158

27:                                               ; preds = %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %158

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @debugstr_w(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @wine_dbgstr_rect(i32* %35)
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SelectObject(i32 %38, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @CDIS_HOT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @TBCDRF_HILITEHOTTRACK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SetTextColor(i32 %53, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %127

58:                                               ; preds = %47, %32
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @CDIS_DISABLED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SetTextColor(i32 %64, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @OffsetRect(i32* %69, i32 1, i32 1)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @DrawTextW(i32 %71, i32 %72, i32 -1, i32* %73, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 0), align 4
  %80 = call i32 @SetTextColor(i32 %78, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @OffsetRect(i32* %81, i32 -1, i32 -1)
  br label %126

83:                                               ; preds = %58
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @CDIS_INDETERMINATE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @comctl32_color, i32 0, i32 0), align 4
  %91 = call i32 @SetTextColor(i32 %89, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %125

92:                                               ; preds = %83
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @CDIS_MARKED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @TBCDRF_NOMARK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @SetTextColor(i32 %103, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @SetBkColor(i32 %108, i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SetBkMode(i32 %113, i32 %116)
  store i32 %117, i32* %15, align 4
  br label %124

118:                                              ; preds = %97, %92
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SetTextColor(i32 %119, i32 %122)
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %118, %102
  br label %125

125:                                              ; preds = %124, %88
  br label %126

126:                                              ; preds = %125, %63
  br label %127

127:                                              ; preds = %126, %52
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @DrawTextW(i32 %128, i32 %129, i32 -1, i32* %130, i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @SetTextColor(i32 %135, i32 %136)
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @CDIS_MARKED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %127
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @TBCDRF_NOMARK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @SetBkColor(i32 %148, i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @SetBkMode(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %147, %142, %127
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @SelectObject(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %27, %5
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @OffsetRect(i32*, i32, i32) #1

declare dso_local i32 @DrawTextW(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
