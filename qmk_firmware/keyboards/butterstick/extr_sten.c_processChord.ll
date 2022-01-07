; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/butterstick/extr_sten.c_processChord.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/butterstick/extr_sten.c_processChord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cChord = common dso_local global i32 0, align 4
@stickyBits = common dso_local global i32 0, align 4
@chordIndex = common dso_local global i32 0, align 4
@chordState = common dso_local global i32* null, align 8
@FN = common dso_local global i32 0, align 4
@repeatFlag = common dso_local global i32 0, align 4
@QWERBUF = common dso_local global i32 0, align 4
@PWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processChord(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* @cChord, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @stickyBits, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load i32, i32* @stickyBits, align 4
  %19 = load i32, i32* @cChord, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @cChord, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %33, %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @chordIndex, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* @stickyBits, align 4
  %27 = load i32*, i32** @chordState, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %21

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* @cChord, align 4
  %39 = load i32, i32* @FN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @FN, align 4
  %44 = load i32, i32* @cChord, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* @cChord, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = call i32 @processFakeSteno(i32 1)
  %51 = load i32, i32* @cChord, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @processFakeSteno(i32 0)
  br label %180

55:                                               ; preds = %49, %46
  %56 = call i32 @processQwerty(i32 1)
  %57 = load i32, i32* @cChord, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = call i32 @processQwerty(i32 0)
  %61 = load i32, i32* @repeatFlag, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (...) @restoreState()
  store i32 0, i32* @repeatFlag, align 4
  call void @processChord(i32 0)
  br label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @cChord, align 4
  %67 = call i32 @saveState(i32 %66)
  br label %68

68:                                               ; preds = %65, %63
  br label %180

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @QWERBUF, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %5, align 8
  %74 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %149, %70
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %150

79:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %132, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @chordIndex, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %135

84:                                               ; preds = %80
  %85 = load i32*, i32** @chordState, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  store i32 %92, i32* @cChord, align 4
  %93 = load i32, i32* @cChord, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %132

96:                                               ; preds = %84
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* @cChord, align 4
  %104 = load i32, i32* %9, align 4
  %105 = xor i32 %103, %104
  %106 = load i32, i32* @PWR, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %10, align 4
  br label %135

110:                                              ; preds = %102, %99, %96
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @PWR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @PWR, align 4
  %117 = load i32, i32* @cChord, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* @cChord, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %2, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @processFakeSteno(i32 1)
  store i32 %123, i32* %9, align 4
  br label %126

124:                                              ; preds = %119
  %125 = call i32 @processQwerty(i32 1)
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %129, %126
  br label %132

132:                                              ; preds = %131, %95
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %80

135:                                              ; preds = %108, %80
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %74, i64 %141
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @QWERBUF, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  store i32 1, i32* %12, align 4
  br label %178

149:                                              ; preds = %135
  br label %75

150:                                              ; preds = %75
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %167, %150
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %151
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %74, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* @cChord, align 4
  %160 = load i32, i32* %2, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = call i32 @processFakeSteno(i32 0)
  br label %166

164:                                              ; preds = %155
  %165 = call i32 @processQwerty(i32 0)
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %151

170:                                              ; preds = %151
  %171 = load i32, i32* @repeatFlag, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @saveState(i32 %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* %3, align 4
  store i32 %177, i32* @cChord, align 4
  store i32 1, i32* %12, align 4
  br label %178

178:                                              ; preds = %176, %148
  %179 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %179)
  br label %180

180:                                              ; preds = %178, %68, %53
  ret void
}

declare dso_local i32 @processFakeSteno(i32) #1

declare dso_local i32 @processQwerty(i32) #1

declare dso_local i32 @restoreState(...) #1

declare dso_local i32 @saveState(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
