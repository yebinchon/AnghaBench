; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_RelayEvent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_RelayEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i16, i16 }

@.str = private unnamed_addr constant [15 x i8] c"lpMsg == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tool (%p) %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"WM_MOUSEMOVE (%p %s)\0A\00", align 1
@ID_TIMERLEAVE = common dso_local global i32 0, align 4
@ID_TIMERSHOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"timer 1 started\0A\00", align 1
@ID_TIMERPOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"timer 2 restarted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_12__*)* @TOOLTIPS_RelayEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLTIPS_RelayEvent(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__, align 2
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %164

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %163 [
    i32 134, label %16
    i32 133, label %16
    i32 132, label %16
    i32 131, label %16
    i32 129, label %16
    i32 128, label %16
    i32 130, label %19
  ]

16:                                               ; preds = %12, %12, %12, %12, %12, %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @TOOLTIPS_Hide(%struct.TYPE_10__* %17)
  br label %163

19:                                               ; preds = %12
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @LOWORD(i32 %22)
  %24 = trunc i64 %23 to i16
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i16 %24, i16* %25, align 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @HIWORD(i32 %28)
  %30 = trunc i64 %29 to i16
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TOOLTIPS_GetToolFromPoint(%struct.TYPE_10__* %35, i32 %38, %struct.TYPE_11__* %6)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wine_dbgstr_point(%struct.TYPE_11__* %6)
  %57 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %120

63:                                               ; preds = %19
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = call i32 @TOOLTIPS_Hide(%struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ID_TIMERLEAVE, align 4
  %75 = call i32 @KillTimer(i32 %73, i32 %74)
  br label %119

76:                                               ; preds = %63
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ID_TIMERSHOW, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SetTimer(i32 %87, i32 %88, i32 %91, i32 0)
  %93 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %84, %79
  br label %118

95:                                               ; preds = %76
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = call i32 @TOOLTIPS_Hide(%struct.TYPE_10__* %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ID_TIMERLEAVE, align 4
  %102 = call i32 @KillTimer(i32 %100, i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %95
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ID_TIMERSHOW, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SetTimer(i32 %110, i32 %111, i32 %114, i32 0)
  %116 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %107, %95
  br label %118

118:                                              ; preds = %117, %94
  br label %119

119:                                              ; preds = %118, %68
  br label %162

120:                                              ; preds = %19
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ID_TIMERPOP, align 4
  %130 = call i32 @KillTimer(i32 %128, i32 %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ID_TIMERPOP, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SetTimer(i32 %133, i32 %134, i32 %137, i32 0)
  %139 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %161

140:                                              ; preds = %120
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, -1
  br i1 %144, label %145, label %160

145:                                              ; preds = %140
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ID_TIMERSHOW, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @SetTimer(i32 %153, i32 %154, i32 %157, i32 0)
  %159 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %150, %145, %140
  br label %161

161:                                              ; preds = %160, %125
  br label %162

162:                                              ; preds = %161, %119
  br label %163

163:                                              ; preds = %12, %162, %16
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %10
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TOOLTIPS_Hide(%struct.TYPE_10__*) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @TOOLTIPS_GetToolFromPoint(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @wine_dbgstr_point(%struct.TYPE_11__*) #1

declare dso_local i32 @KillTimer(i32, i32) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
