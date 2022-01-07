; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_DrawMine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_DrawMine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@BOX_BMP = common dso_local global i32 0, align 4
@GAMEOVER = common dso_local global i64 0, align 8
@FLAG_BMP = common dso_local global i32 0, align 4
@EXPLODE_BMP = common dso_local global i32 0, align 4
@MINE_BMP = common dso_local global i32 0, align 4
@QUESTION_BMP = common dso_local global i32 0, align 4
@WRONG_BMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unknown FlagType during game over in DrawMine\0A\00", align 1
@QPRESS_BMP = common dso_local global i32 0, align 4
@MPRESS_BMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unknown FlagType while playing in DrawMine\0A\00", align 1
@MINE_WIDTH = common dso_local global i32 0, align 4
@MINE_HEIGHT = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_7__*, i32, i32, i32)* @DrawMine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawMine(i32 %0, i32 %1, %struct.TYPE_7__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @BOX_BMP, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %23, %17, %6
  br label %204

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GAMEOVER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %39
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %72 [
    i32 130, label %66
    i32 131, label %68
    i32 128, label %70
    i32 129, label %70
  ]

66:                                               ; preds = %53
  %67 = load i32, i32* @FLAG_BMP, align 4
  store i32 %67, i32* %13, align 4
  br label %72

68:                                               ; preds = %53
  %69 = load i32, i32* @EXPLODE_BMP, align 4
  store i32 %69, i32* %13, align 4
  br label %72

70:                                               ; preds = %53, %53
  %71 = load i32, i32* @MINE_BMP, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %70, %53, %68, %66
  br label %96

73:                                               ; preds = %39
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %76, i64 %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %93 [
    i32 128, label %86
    i32 130, label %88
    i32 129, label %90
    i32 131, label %92
  ]

86:                                               ; preds = %73
  %87 = load i32, i32* @QUESTION_BMP, align 4
  store i32 %87, i32* %13, align 4
  br label %95

88:                                               ; preds = %73
  %89 = load i32, i32* @WRONG_BMP, align 4
  store i32 %89, i32* %13, align 4
  br label %95

90:                                               ; preds = %73
  %91 = load i32, i32* @BOX_BMP, align 4
  store i32 %91, i32* %13, align 4
  br label %95

92:                                               ; preds = %73
  br label %95

93:                                               ; preds = %73
  %94 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %92, %90, %88, %86
  br label %96

96:                                               ; preds = %95, %72
  br label %132

97:                                               ; preds = %33
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %100, i64 %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %129 [
    i32 128, label %110
    i32 130, label %118
    i32 129, label %120
    i32 131, label %128
  ]

110:                                              ; preds = %97
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @QUESTION_BMP, align 4
  store i32 %114, i32* %13, align 4
  br label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @QPRESS_BMP, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %115, %113
  br label %131

118:                                              ; preds = %97
  %119 = load i32, i32* @FLAG_BMP, align 4
  store i32 %119, i32* %13, align 4
  br label %131

120:                                              ; preds = %97
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @BOX_BMP, align 4
  store i32 %124, i32* %13, align 4
  br label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @MPRESS_BMP, align 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %125, %123
  br label %131

128:                                              ; preds = %97
  br label %131

129:                                              ; preds = %97
  %130 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %128, %127, %118, %117
  br label %132

132:                                              ; preds = %131, %96
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %135, i64 %137
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 131
  br i1 %145, label %146, label %174

146:                                              ; preds = %132
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %149, i64 %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %146
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %163, i64 %165
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %160, %146, %132
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %10, align 4
  %177 = sub i32 %176, 1
  %178 = load i32, i32* @MINE_WIDTH, align 4
  %179 = mul i32 %177, %178
  %180 = zext i32 %179 to i64
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %180, %184
  %186 = load i32, i32* %11, align 4
  %187 = sub i32 %186, 1
  %188 = load i32, i32* @MINE_HEIGHT, align 4
  %189 = mul i32 %187, %188
  %190 = zext i32 %189 to i64
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %190, %194
  %196 = load i32, i32* @MINE_WIDTH, align 4
  %197 = load i32, i32* @MINE_HEIGHT, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @MINE_HEIGHT, align 4
  %201 = mul i32 %199, %200
  %202 = load i32, i32* @SRCCOPY, align 4
  %203 = call i32 @BitBlt(i32 %175, i64 %185, i64 %195, i32 %196, i32 %197, i32 %198, i32 0, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %174, %32
  ret void
}

declare dso_local i32 @WINE_TRACE(i8*) #1

declare dso_local i32 @BitBlt(i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
