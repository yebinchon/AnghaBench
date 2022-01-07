; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiMessageBoxCritical.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiMessageBoxCritical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UiScreenWidth = common dso_local global i32 0, align 4
@UiScreenHeight = common dso_local global i32 0, align 4
@D_VERT = common dso_local global i32 0, align 4
@D_HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UiMessageBoxFgColor = common dso_local global i32 0, align 4
@UiMessageBoxBgColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"   OK   \00", align 1
@COLOR_BLACK = common dso_local global i32 0, align 4
@COLOR_GRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Press ENTER to continue\00", align 1
@KEY_EXTENDED = common dso_local global i8 0, align 1
@KEY_ENTER = common dso_local global i8 0, align 1
@KEY_SPACE = common dso_local global i8 0, align 1
@KEY_ESC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiMessageBoxCritical(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [260 x i8], align 16
  %15 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 8, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %33, %1
  %17 = load i64, i64* %8, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %16

36:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %73, %36
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i8*, i8** %3, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i8*, i8** %3, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %50, %43
  %58 = phi i1 [ false, %43 ], [ %56, %50 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %43

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %64
  store i32 0, i32* %7, align 4
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %37

76:                                               ; preds = %37
  %77 = load i32, i32* @UiScreenWidth, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 2
  %80 = sub nsw i32 %77, %79
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %82, %83
  %85 = add nsw i32 %84, 3
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @UiScreenHeight, align 4
  %87 = load i32, i32* %5, align 4
  %88 = sub i32 %86, %87
  %89 = sub i32 %88, 2
  %90 = udiv i32 %89, 2
  %91 = add i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %92, %93
  %95 = add i32 %94, 4
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @D_VERT, align 4
  %101 = load i32, i32* @D_HORZ, align 4
  %102 = load i32, i32* @TRUE, align 4
  %103 = load i32, i32* @TRUE, align 4
  %104 = load i32, i32* @UiMessageBoxFgColor, align 4
  %105 = load i32, i32* @UiMessageBoxBgColor, align 4
  %106 = call i32 @ATTR(i32 %104, i32 %105)
  %107 = call i32 @TuiDrawBox(i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %106)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %108

108:                                              ; preds = %154, %76
  %109 = load i64, i64* %8, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %109, %113
  br i1 %114, label %115, label %157

115:                                              ; preds = %108
  %116 = load i8*, i8** %3, align 8
  %117 = load i64, i64* %8, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 10
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load i8*, i8** %3, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %122, %115
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 %130
  store i8 0, i8* %131, align 1
  store i64 0, i64* %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 2
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %135, %136
  %138 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 0
  %139 = load i32, i32* @UiMessageBoxFgColor, align 4
  %140 = load i32, i32* @UiMessageBoxBgColor, align 4
  %141 = call i32 @ATTR(i32 %139, i32 %140)
  %142 = call i32 @UiDrawText(i32 %133, i32 %137, i8* %138, i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %153

145:                                              ; preds = %122
  %146 = load i8*, i8** %3, align 8
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %9, align 8
  %152 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 %150
  store i8 %149, i8* %152, align 1
  br label %153

153:                                              ; preds = %145, %129
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %8, align 8
  br label %108

157:                                              ; preds = %108
  %158 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 0
  %159 = call i32 @strcpy(i8* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %10, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sdiv i32 %163, 2
  %165 = add nsw i32 %160, %164
  %166 = sub nsw i32 %165, 3
  %167 = load i32, i32* %13, align 4
  %168 = sub nsw i32 %167, 2
  %169 = getelementptr inbounds [260 x i8], [260 x i8]* %14, i64 0, i64 0
  %170 = load i32, i32* @COLOR_BLACK, align 4
  %171 = load i32, i32* @COLOR_GRAY, align 4
  %172 = call i32 @ATTR(i32 %170, i32 %171)
  %173 = call i32 @UiDrawText(i32 %166, i32 %168, i8* %169, i32 %172)
  %174 = call i32 @UiDrawStatusText(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %175 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  br label %176

176:                                              ; preds = %208, %157
  %177 = call i64 (...) @MachConsKbHit()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %208

179:                                              ; preds = %176
  %180 = call signext i8 (...) @MachConsGetCh()
  store i8 %180, i8* %15, align 1
  %181 = load i8, i8* %15, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8, i8* @KEY_EXTENDED, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = call signext i8 (...) @MachConsGetCh()
  store i8 %187, i8* %15, align 1
  br label %188

188:                                              ; preds = %186, %179
  %189 = load i8, i8* %15, align 1
  %190 = sext i8 %189 to i32
  %191 = load i8, i8* @KEY_ENTER, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %206, label %194

194:                                              ; preds = %188
  %195 = load i8, i8* %15, align 1
  %196 = sext i8 %195 to i32
  %197 = load i8, i8* @KEY_SPACE, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load i8, i8* %15, align 1
  %202 = sext i8 %201 to i32
  %203 = load i8, i8* @KEY_ESC, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %200, %194, %188
  br label %212

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207, %176
  %209 = call i32 (...) @TuiUpdateDateTime()
  %210 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  %211 = call i32 (...) @MachHwIdle()
  br label %176

212:                                              ; preds = %206
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TuiDrawBox(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i32 @UiDrawText(i32, i32, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @UiDrawStatusText(i8*) #1

declare dso_local i32 @VideoCopyOffScreenBufferToVRAM(...) #1

declare dso_local i64 @MachConsKbHit(...) #1

declare dso_local signext i8 @MachConsGetCh(...) #1

declare dso_local i32 @TuiUpdateDateTime(...) #1

declare dso_local i32 @MachHwIdle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
