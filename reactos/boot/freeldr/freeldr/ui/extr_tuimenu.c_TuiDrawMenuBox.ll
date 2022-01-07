; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiDrawMenuBox.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiDrawMenuBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i64, i32**, i64 }

@UiMenuBox = common dso_local global i64 0, align 8
@D_VERT = common dso_local global i32 0, align 4
@D_HORZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UiMenuFgColor = common dso_local global i32 0, align 4
@UiMenuBgColor = common dso_local global i32 0, align 4
@UiTimeText = common dso_local global i8* null, align 8
@UiCenterMenu = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\C7\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\B6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawMenuBox(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load i64, i64* @UiMenuBox, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @D_VERT, align 4
  %23 = load i32, i32* @D_HORZ, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* @UiMenuFgColor, align 4
  %27 = load i32, i32* @UiMenuBgColor, align 4
  %28 = call i32 @ATTR(i32 %26, i32 %27)
  %29 = call i32 @UiDrawBox(i32 %12, i64 %15, i32 %18, i64 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %9, %1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %94

35:                                               ; preds = %30
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %37 = load i8*, i8** @UiTimeText, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %40 = call i64 @strlen(i8* %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %46, i8* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %53 = call i32 @_itoa(i64 %51, i8* %52, i32 10)
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %56 = call i32 @strcat(i8* %54, i8* %55)
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %58 = load i8*, i8** @UiTimeText, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = call i32 @strcat(i8* %57, i8* %62)
  %64 = load i64, i64* @UiCenterMenu, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %35
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %71 = call i64 @strlen(i8* %70)
  %72 = trunc i64 %71 to i32
  %73 = sub nsw i32 %69, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %79 = load i32, i32* @UiMenuFgColor, align 4
  %80 = load i32, i32* @UiMenuBgColor, align 4
  %81 = call i32 @ATTR(i32 %79, i32 %80)
  %82 = call i32 @UiDrawText(i32 %74, i64 %77, i8* %78, i32 %81)
  br label %93

83:                                               ; preds = %35
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 4
  %88 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %89 = load i32, i32* @UiMenuFgColor, align 4
  %90 = load i32, i32* @UiMenuBgColor, align 4
  %91 = call i32 @ATTR(i32 %89, i32 %90)
  %92 = call i32 @UiDrawText(i32 0, i64 %87, i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %83, %66
  br label %138

94:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %103, %94
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %97, 79
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 %101
  store i8 32, i8* %102, align 1
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %95

106:                                              ; preds = %95
  %107 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 79
  store i8 0, i8* %107, align 1
  %108 = load i64, i64* @UiCenterMenu, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %115 = call i64 @strlen(i8* %114)
  %116 = trunc i64 %115 to i32
  %117 = sub nsw i32 %113, %116
  %118 = sub nsw i32 %117, 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %123 = load i32, i32* @UiMenuFgColor, align 4
  %124 = load i32, i32* @UiMenuBgColor, align 4
  %125 = call i32 @ATTR(i32 %123, i32 %124)
  %126 = call i32 @UiDrawText(i32 %118, i64 %121, i8* %122, i32 %125)
  br label %137

127:                                              ; preds = %106
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 4
  %132 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %133 = load i32, i32* @UiMenuFgColor, align 4
  %134 = load i32, i32* @UiMenuBgColor, align 4
  %135 = call i32 @ATTR(i32 %133, i32 %134)
  %136 = call i32 @UiDrawText(i32 0, i64 %131, i8* %132, i32 %135)
  br label %137

137:                                              ; preds = %127, %110
  br label %138

138:                                              ; preds = %137, %93
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %184, %138
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %187

145:                                              ; preds = %139
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 5
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %183

154:                                              ; preds = %145
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = add nsw i64 %163, 1
  %165 = load i32, i32* @UiMenuFgColor, align 4
  %166 = load i32, i32* @UiMenuBgColor, align 4
  %167 = call i32 @ATTR(i32 %165, i32 %166)
  %168 = call i32 @UiDrawText(i32 %157, i64 %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = add nsw i64 %177, 1
  %179 = load i32, i32* @UiMenuFgColor, align 4
  %180 = load i32, i32* @UiMenuBgColor, align 4
  %181 = call i32 @ATTR(i32 %179, i32 %180)
  %182 = call i32 @UiDrawText(i32 %171, i64 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %154, %145
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %139

187:                                              ; preds = %139
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @UiDrawBox(i32, i64, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_itoa(i64, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @UiDrawText(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
