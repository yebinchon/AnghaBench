; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_KeyDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_KeyDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64 }

@TBS_DOWNISLEFT = common dso_local global i32 0, align 4
@TBS_VERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TB_TOP = common dso_local global i32 0, align 4
@TB_BOTTOM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @TRACKBAR_KeyDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_KeyDown(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TBS_DOWNISLEFT, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TBS_VERT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %141 [
    i32 128, label %25
    i32 132, label %38
    i32 135, label %51
    i32 129, label %64
    i32 131, label %77
    i32 130, label %90
    i32 133, label %103
    i32 134, label %122
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = call i32 @TRACKBAR_LineDown(%struct.TYPE_10__* %32)
  br label %37

34:                                               ; preds = %28, %25
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call i32 @TRACKBAR_LineUp(%struct.TYPE_10__* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %141

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @TRACKBAR_LineDown(%struct.TYPE_10__* %45)
  br label %50

47:                                               ; preds = %41, %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = call i32 @TRACKBAR_LineUp(%struct.TYPE_10__* %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %141

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @TRACKBAR_LineUp(%struct.TYPE_10__* %58)
  br label %63

60:                                               ; preds = %54, %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 @TRACKBAR_LineDown(%struct.TYPE_10__* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %141

64:                                               ; preds = %2
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = call i32 @TRACKBAR_LineUp(%struct.TYPE_10__* %71)
  br label %76

73:                                               ; preds = %67, %64
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = call i32 @TRACKBAR_LineDown(%struct.TYPE_10__* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %141

77:                                               ; preds = %2
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = call i32 @TRACKBAR_PageUp(%struct.TYPE_10__* %84)
  br label %89

86:                                               ; preds = %80, %77
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = call i32 @TRACKBAR_PageDown(%struct.TYPE_10__* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %141

90:                                               ; preds = %2
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = call i32 @TRACKBAR_PageDown(%struct.TYPE_10__* %97)
  br label %102

99:                                               ; preds = %93, %90
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = call i32 @TRACKBAR_PageUp(%struct.TYPE_10__* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %141

103:                                              ; preds = %2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %3, align 4
  br label %158

113:                                              ; preds = %103
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = load i32, i32* @TB_TOP, align 4
  %121 = call i32 @notify_with_scroll(%struct.TYPE_10__* %119, i32 %120)
  br label %141

122:                                              ; preds = %2
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %158

132:                                              ; preds = %122
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = load i32, i32* @TB_BOTTOM, align 4
  %140 = call i32 @notify_with_scroll(%struct.TYPE_10__* %138, i32 %139)
  br label %141

141:                                              ; preds = %2, %132, %113, %102, %89, %76, %63, %50, %37
  %142 = load i64, i64* %8, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = call i32 @TRACKBAR_UpdateThumb(%struct.TYPE_10__* %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @TRACKBAR_InvalidateThumbMove(%struct.TYPE_10__* %150, i64 %151, i64 %154)
  br label %156

156:                                              ; preds = %147, %141
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %130, %111
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @TRACKBAR_LineDown(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACKBAR_LineUp(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACKBAR_PageUp(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACKBAR_PageDown(%struct.TYPE_10__*) #1

declare dso_local i32 @notify_with_scroll(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TRACKBAR_UpdateThumb(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACKBAR_InvalidateThumbMove(%struct.TYPE_10__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
