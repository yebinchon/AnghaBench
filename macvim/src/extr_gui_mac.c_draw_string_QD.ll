; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_mac.c_draw_string_QD.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_mac.c_draw_string_QD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@gMacSystemVersion = common dso_local global i32 0, align 4
@p_antialias = common dso_local global i64 0, align 8
@kQDUseCGTextRendering = common dso_local global i32 0, align 4
@kQDUseCGTextMetrics = common dso_local global i32 0, align 4
@p_linespace = common dso_local global i64 0, align 8
@DRAW_TRANSP = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@normal = common dso_local global i32 0, align 4
@DRAW_BOLD = common dso_local global i32 0, align 4
@bold = common dso_local global i32 0, align 4
@DRAW_UNDERL = common dso_local global i32 0, align 4
@underline = common dso_local global i32 0, align 4
@srcOr = common dso_local global i32 0, align 4
@srcCopy = common dso_local global i32 0, align 4
@DRAW_UNDERC = common dso_local global i32 0, align 4
@CONV_NONE = common dso_local global i64 0, align 8
@has_mbyte = common dso_local global i64 0, align 8
@output_conv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32)* @draw_string_QD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_string_QD(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @gMacSystemVersion, align 4
  %15 = icmp sge i32 %14, 4128
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load i64, i64* @p_antialias, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @kQDUseCGTextRendering, align 4
  %21 = load i32, i32* @kQDUseCGTextMetrics, align 4
  %22 = or i32 %20, %21
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @QDSwapTextFlags(i32 %26)
  br label %28

28:                                               ; preds = %24, %5
  %29 = load i32, i32* @gMacSystemVersion, align 4
  %30 = icmp sge i32 %29, 4128
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* @p_antialias, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %28
  %35 = load i64, i64* @p_linespace, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @DRAW_TRANSP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @FILL_X(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @FILL_Y(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i8* @FILL_X(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @Columns, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %52, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i8* @FILL_Y(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = call i32 @EraseRect(%struct.TYPE_5__* %12)
  br label %67

67:                                               ; preds = %42, %37, %34
  %68 = load i32, i32* @gMacSystemVersion, align 4
  %69 = icmp sge i32 %68, 4128
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load i64, i64* @p_antialias, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %70
  %74 = load i32, i32* @normal, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DRAW_BOLD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @bold, align 4
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @DRAW_UNDERL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @underline, align 4
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @TextFace(i32 %93)
  %95 = load i32, i32* @srcOr, align 4
  %96 = call i32 @TextMode(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = call i8* @TEXT_X(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = call i8* @TEXT_Y(i32 %99)
  %101 = call i32 @MoveTo(i8* %98, i8* %100)
  %102 = load i32*, i32** %8, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @DrawText(i8* %103, i32 0, i32 %104)
  br label %169

106:                                              ; preds = %70, %67
  %107 = load i32, i32* @srcCopy, align 4
  %108 = call i32 @TextMode(i32 %107)
  %109 = load i32, i32* @normal, align 4
  %110 = call i32 @TextFace(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @DRAW_TRANSP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* @srcOr, align 4
  %117 = call i32 @TextMode(i32 %116)
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32, i32* %7, align 4
  %120 = call i8* @TEXT_X(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = call i8* @TEXT_Y(i32 %121)
  %123 = call i32 @MoveTo(i8* %120, i8* %122)
  %124 = load i32*, i32** %8, align 8
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @DrawText(i8* %125, i32 0, i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @DRAW_BOLD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %118
  %133 = load i32, i32* @srcOr, align 4
  %134 = call i32 @TextMode(i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = call i8* @TEXT_X(i32 %135)
  %137 = getelementptr i8, i8* %136, i64 1
  %138 = load i32, i32* %6, align 4
  %139 = call i8* @TEXT_Y(i32 %138)
  %140 = call i32 @MoveTo(i8* %137, i8* %139)
  %141 = load i32*, i32** %8, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @DrawText(i8* %142, i32 0, i32 %143)
  br label %145

145:                                              ; preds = %132, %118
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @DRAW_UNDERL, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  %152 = call i8* @FILL_X(i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  %155 = call i8* @FILL_Y(i32 %154)
  %156 = getelementptr i8, i8* %155, i64 -1
  %157 = call i32 @MoveTo(i8* %152, i8* %156)
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i8* @FILL_X(i32 %160)
  %162 = getelementptr i8, i8* %161, i64 -1
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  %165 = call i8* @FILL_Y(i32 %164)
  %166 = getelementptr i8, i8* %165, i64 -1
  %167 = call i32 @LineTo(i8* %162, i8* %166)
  br label %168

168:                                              ; preds = %150, %145
  br label %169

169:                                              ; preds = %168, %92
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @DRAW_UNDERC, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @draw_undercurl(i32 %175, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %169
  ret void
}

declare dso_local i32 @QDSwapTextFlags(i32) #1

declare dso_local i8* @FILL_X(i32) #1

declare dso_local i8* @FILL_Y(i32) #1

declare dso_local i32 @EraseRect(%struct.TYPE_5__*) #1

declare dso_local i32 @TextFace(i32) #1

declare dso_local i32 @TextMode(i32) #1

declare dso_local i32 @MoveTo(i8*, i8*) #1

declare dso_local i8* @TEXT_X(i32) #1

declare dso_local i8* @TEXT_Y(i32) #1

declare dso_local i32 @DrawText(i8*, i32, i32) #1

declare dso_local i32 @LineTo(i8*, i8*) #1

declare dso_local i32 @draw_undercurl(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
