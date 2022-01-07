; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_StyleChanged.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_StyleChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"(styletype=%lx, styleOld=0x%08x, styleNew=0x%08x)\0A\00", align 1
@GWL_STYLE = common dso_local global i64 0, align 8
@DTS_SHOWNONE = common dso_local global i32 0, align 4
@WC_BUTTONW = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@BS_AUTOCHECKBOX = common dso_local global i32 0, align 4
@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@DTS_UPDOWN = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@UD_MAXVAL = common dso_local global i32 0, align 4
@UD_MINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, %struct.TYPE_5__*)* @DATETIME_StyleChanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DATETIME_StyleChanged(%struct.TYPE_6__* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %8, i32 %11, i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @GWL_STYLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %145

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DTS_SHOWNONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %20
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DTS_SHOWNONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %32
  %40 = load i32, i32* @WC_BUTTONW, align 4
  %41 = load i32, i32* @WS_CHILD, align 4
  %42 = load i32, i32* @WS_VISIBLE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BS_AUTOCHECKBOX, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GWLP_HINSTANCE, align 4
  %53 = call i64 @GetWindowLongPtrW(i32 %51, i32 %52)
  %54 = trunc i64 %53 to i32
  %55 = call i64 @CreateWindowExW(i32 0, i32 %40, i32 0, i32 %45, i32 2, i32 2, i32 13, i32 13, i32 %48, i32 0, i32 %54, i32 0)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @BM_SETCHECK, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = call i32 @SendMessageW(i64 %60, i32 %61, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %39, %32, %20
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DTS_SHOWNONE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DTS_SHOWNONE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @DestroyWindow(i64 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %76, %69
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DTS_UPDOWN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %118, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DTS_UPDOWN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load i32, i32* @WS_CHILD, align 4
  %106 = load i32, i32* @WS_BORDER, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @WS_VISIBLE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @UD_MAXVAL, align 4
  %114 = load i32, i32* @UD_MINVAL, align 4
  %115 = call i64 @CreateUpDownControl(i32 %109, i32 120, i32 1, i32 20, i32 20, i32 %112, i32 1, i32 0, i32 0, i32 %113, i32 %114, i32 0)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %104, %97, %90
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DTS_UPDOWN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @DTS_UPDOWN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @DestroyWindow(i64 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %132, %125, %118
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @TRUE, align 4
  %144 = call i32 @InvalidateRect(i32 %142, i32* null, i32 %143)
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %139, %19
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @TRACE(i8*, i64, i32, i32) #1

declare dso_local i64 @CreateWindowExW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i64 @CreateUpDownControl(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
