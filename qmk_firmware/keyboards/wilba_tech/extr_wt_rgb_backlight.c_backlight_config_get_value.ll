; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_config_get_value.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_config_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@g_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_config_get_value(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %144 [
    i32 130, label %12
    i32 129, label %18
    i32 128, label %24
    i32 132, label %30
    i32 131, label %36
    i32 141, label %42
    i32 142, label %48
    i32 143, label %54
    i32 149, label %57
    i32 140, label %60
    i32 139, label %63
    i32 146, label %66
    i32 145, label %69
    i32 148, label %72
    i32 147, label %75
    i32 138, label %82
    i32 137, label %85
    i32 136, label %92
    i32 135, label %95
    i32 134, label %102
    i32 133, label %105
    i32 150, label %112
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 18), align 8
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %144

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 17), align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %144

24:                                               ; preds = %1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 16), align 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %144

30:                                               ; preds = %1
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 15), align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  br label %144

36:                                               ; preds = %1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 14), align 8
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %144

42:                                               ; preds = %1
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 13), align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  br label %144

48:                                               ; preds = %1
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 12), align 8
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  br label %144

54:                                               ; preds = %1
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 0), align 8
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  br label %144

57:                                               ; preds = %1
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 1), align 4
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  br label %144

60:                                               ; preds = %1
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 2), align 8
  %62 = load i32*, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  br label %144

63:                                               ; preds = %1
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 3), align 4
  %65 = load i32*, i32** %4, align 8
  store i32 %64, i32* %65, align 4
  br label %144

66:                                               ; preds = %1
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @_get_color(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 11), i32* %67)
  br label %144

69:                                               ; preds = %1
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @_get_color(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 10), i32* %70)
  br label %144

72:                                               ; preds = %1
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @_get_color(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 9, i32 1), i32* %73)
  br label %144

75:                                               ; preds = %1
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 9, i32 0), align 8
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i32 @backlight_get_indicator_row_col(i32 %76, i32* %78, i32* %80)
  br label %144

82:                                               ; preds = %1
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @_get_color(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 8, i32 1), i32* %83)
  br label %144

85:                                               ; preds = %1
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 8, i32 0), align 8
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = call i32 @backlight_get_indicator_row_col(i32 %86, i32* %88, i32* %90)
  br label %144

92:                                               ; preds = %1
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @_get_color(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 7, i32 1), i32* %93)
  br label %144

95:                                               ; preds = %1
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 7, i32 0), align 8
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = call i32 @backlight_get_indicator_row_col(i32 %96, i32* %98, i32* %100)
  br label %144

102:                                              ; preds = %1
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @_get_color(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 6, i32 1), i32* %103)
  br label %144

105:                                              ; preds = %1
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 6, i32 0), align 8
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = call i32 @backlight_get_indicator_row_col(i32 %106, i32* %108, i32* %110)
  br label %144

112:                                              ; preds = %1
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %140, %112
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 5
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 4), align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 8
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 4), align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 255
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = mul nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %116
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %113

143:                                              ; preds = %113
  br label %144

144:                                              ; preds = %143, %1, %105, %102, %95, %92, %85, %82, %75, %72, %69, %66, %63, %60, %57, %54, %48, %42, %36, %30, %24, %18, %12
  ret void
}

declare dso_local i32 @_get_color(i32*, i32*) #1

declare dso_local i32 @backlight_get_indicator_row_col(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
