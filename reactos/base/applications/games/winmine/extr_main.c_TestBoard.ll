; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_TestBoard.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_TestBoard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i32, i32, i64, i64, i64*, i32, i32, %struct.TYPE_13__**, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }

@GAMEOVER = common dso_local global i64 0, align 8
@WON = common dso_local global i64 0, align 8
@FLAG = common dso_local global i64 0, align 8
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@CUSTOM = common dso_local global i64 0, align 8
@DLG_CONGRATS = common dso_local global i32 0, align 4
@CongratsDlgProc = common dso_local global i32 0, align 4
@DLG_TIMES = common dso_local global i32 0, align 4
@TimesDlgProc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*, i32, i32, i32)* @TestBoard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestBoard(i32 %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 13
  %20 = bitcast %struct.TYPE_14__* %11 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i64 @PtInRect(i32* %19, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %5
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GAMEOVER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WON, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = bitcast %struct.TYPE_14__* %11 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call i32 @TestMines(%struct.TYPE_15__* %37, i64 %40, i32 %38)
  br label %59

42:                                               ; preds = %30, %24, %5
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 12
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 12
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @UnpressBoxes(%struct.TYPE_15__* %43, i64 %47, i64 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 12
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %42, %36
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %203

64:                                               ; preds = %59
  %65 = load i64, i64* @WON, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %152

75:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %76

76:                                               ; preds = %136, %75
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp ule i32 %77, %80
  br i1 %81, label %82, label %139

82:                                               ; preds = %76
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %132, %82
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp ule i32 %84, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %83
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 11
  %92 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %92, i64 %94
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %89
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 11
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %106, i64 %108
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @FLAG, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %103
  %119 = load i64, i64* @FLAG, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 11
  %122 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %122, i64 %124
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store i64 %119, i64* %130, align 8
  br label %131

131:                                              ; preds = %118, %103, %89
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %83

135:                                              ; preds = %83
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %76

139:                                              ; preds = %76
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RDW_INVALIDATE, align 4
  %149 = load i32, i32* @RDW_UPDATENOW, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @RedrawWindow(i32 %147, i32* null, i32 0, i32 %150)
  br label %152

152:                                              ; preds = %139, %64
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CUSTOM, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %202

158:                                              ; preds = %152
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 8
  %164 = load i64*, i64** %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %161, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %158
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 8
  %177 = load i64*, i64** %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i64, i64* %177, i64 %180
  store i64 %174, i64* %181, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @DLG_CONGRATS, align 4
  %186 = call i32 @MAKEINTRESOURCEW(i32 %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @CongratsDlgProc, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %190 = ptrtoint %struct.TYPE_15__* %189 to i32
  %191 = call i32 @DialogBoxParamW(i32 %184, i32 %186, i32 %187, i32 %188, i32 %190)
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @DLG_TIMES, align 4
  %196 = call i32 @MAKEINTRESOURCEW(i32 %195)
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @TimesDlgProc, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %200 = ptrtoint %struct.TYPE_15__* %199 to i32
  %201 = call i32 @DialogBoxParamW(i32 %194, i32 %196, i32 %197, i32 %198, i32 %200)
  br label %202

202:                                              ; preds = %171, %158, %152
  br label %203

203:                                              ; preds = %202, %59
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = load i32, i32* %10, align 4
  %206 = bitcast %struct.TYPE_14__* %11 to i64*
  %207 = load i64, i64* %206, align 4
  %208 = call i32 @TestFace(%struct.TYPE_15__* %204, i64 %207, i32 %205)
  ret void
}

declare dso_local i64 @PtInRect(i32*, i64) #1

declare dso_local i32 @TestMines(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @UnpressBoxes(%struct.TYPE_15__*, i64, i64) #1

declare dso_local i32 @RedrawWindow(i32, i32*, i32, i32) #1

declare dso_local i32 @DialogBoxParamW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @TestFace(%struct.TYPE_15__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
