; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiProcessMenuKeyboardEvent.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiProcessMenuKeyboardEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32, i64, i64, i32**, i32 }

@KEY_EXTENDED = common dso_local global i64 0, align 8
@UiVtbl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@KEY_UP = common dso_local global i64 0, align 8
@KEY_DOWN = common dso_local global i64 0, align 8
@KEY_HOME = common dso_local global i64 0, align 8
@KEY_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TuiProcessMenuKeyboardEvent(%struct.TYPE_7__* %0, i64 (i64, i64, i32)* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64 (i64, i64, i32)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 (i64, i64, i32)* %1, i64 (i64, i64, i32)** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 (...) @MachConsKbHit()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %186

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = call i32 @TuiDrawMenuBox(%struct.TYPE_7__* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = call i64 (...) @MachConsGetCh()
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @KEY_EXTENDED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i64 (...) @MachConsGetCh()
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i64 (i64, i64, i32)*, i64 (i64, i64, i32)** %5, align 8
  %31 = icmp ne i64 (i64, i64, i32)* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i64 (i64, i64, i32)*, i64 (i64, i64, i32)** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 %33(i64 %34, i64 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @UiVtbl, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i32 %44(%struct.TYPE_7__* %45)
  store i64 0, i64* %3, align 8
  br label %186

47:                                               ; preds = %32, %29
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @KEY_UP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @KEY_DOWN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @KEY_HOME, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @KEY_END, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %184

63:                                               ; preds = %59, %55, %51, %47
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @KEY_UP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %63
  %75 = load i64, i64* %7, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @TuiDrawMenuItem(%struct.TYPE_7__* %82, i64 %83)
  %85 = load i64, i64* %7, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %77
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %97, %89, %77
  br label %177

103:                                              ; preds = %74, %63
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @KEY_UP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %7, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107, %103
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @KEY_END, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110, %107
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @TuiDrawMenuItem(%struct.TYPE_7__* %118, i64 %119)
  br label %176

121:                                              ; preds = %110
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @KEY_DOWN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %156

125:                                              ; preds = %121
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @TuiDrawMenuItem(%struct.TYPE_7__* %134, i64 %135)
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %129
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* %7, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %150, %142, %129
  br label %175

156:                                              ; preds = %125, %121
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @KEY_DOWN, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %8, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %160, %156
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @KEY_HOME, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %164, %160
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @TuiDrawMenuItem(%struct.TYPE_7__* %171, i64 %172)
  br label %174

174:                                              ; preds = %168, %164
  br label %175

175:                                              ; preds = %174, %155
  br label %176

176:                                              ; preds = %175, %114
  br label %177

177:                                              ; preds = %176, %102
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @TuiDrawMenuItem(%struct.TYPE_7__* %178, i64 %181)
  %183 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  br label %184

184:                                              ; preds = %177, %59
  %185 = load i64, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  br label %186

186:                                              ; preds = %184, %43, %11
  %187 = load i64, i64* %3, align 8
  ret i64 %187
}

declare dso_local i32 @MachConsKbHit(...) #1

declare dso_local i32 @TuiDrawMenuBox(%struct.TYPE_7__*) #1

declare dso_local i64 @MachConsGetCh(...) #1

declare dso_local i32 @TuiDrawMenuItem(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @VideoCopyOffScreenBufferToVRAM(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
