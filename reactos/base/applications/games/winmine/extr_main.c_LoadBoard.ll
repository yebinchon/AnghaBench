; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_LoadBoard.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_LoadBoard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@MAX_PLAYER_NAME_SIZE = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@registry_key = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@xposW = common dso_local global i32* null, align 8
@yposW = common dso_local global i32* null, align 8
@heightW = common dso_local global i32* null, align 8
@BEGINNER_ROWS = common dso_local global i32 0, align 4
@widthW = common dso_local global i32* null, align 8
@BEGINNER_COLS = common dso_local global i32 0, align 4
@minesW = common dso_local global i32* null, align 8
@BEGINNER_MINES = common dso_local global i32 0, align 4
@difficultyW = common dso_local global i32* null, align 8
@BEGINNER = common dso_local global i32 0, align 4
@markW = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@nameW = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@IDS_NOBODY = common dso_local global i32 0, align 4
@timeW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @LoadBoard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadBoard(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load i32, i32* @MAX_PLAYER_NAME_SIZE, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %16 = load i32, i32* @registry_key, align 4
  %17 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %18 = call i32 @RegOpenKeyExW(i32 %15, i32 %16, i32 0, i32 %17, i32* %5)
  store i32 8, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** @xposW, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = bitcast i64* %23 to i32*
  %25 = call i64 @RegQueryValueExW(i32 %19, i32* %20, i32* null, i32* %4, i32* %24, i32* %3)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %1
  store i32 8, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** @yposW, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = bitcast i64* %36 to i32*
  %38 = call i64 @RegQueryValueExW(i32 %32, i32* %33, i32* null, i32* %4, i32* %37, i32* %3)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %31
  store i32 4, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** @heightW, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 7
  %49 = call i64 @RegQueryValueExW(i32 %45, i32* %46, i32* null, i32* %4, i32* %48, i32* %3)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @BEGINNER_ROWS, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %44
  store i32 4, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** @widthW, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 6
  %60 = call i64 @RegQueryValueExW(i32 %56, i32* %57, i32* null, i32* %4, i32* %59, i32* %3)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @BEGINNER_COLS, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %55
  store i32 4, i32* %3, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** @minesW, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = call i64 @RegQueryValueExW(i32 %67, i32* %68, i32* null, i32* %4, i32* %70, i32* %3)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @BEGINNER_MINES, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %66
  store i32 4, i32* %3, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** @difficultyW, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = call i64 @RegQueryValueExW(i32 %78, i32* %79, i32* null, i32* %4, i32* %81, i32* %3)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @BEGINNER, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %77
  store i32 4, i32* %3, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32*, i32** @markW, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = call i64 @RegQueryValueExW(i32 %89, i32* %90, i32* null, i32* %4, i32* %92, i32* %3)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @TRUE, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %88
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %141, %99
  %101 = load i32, i32* %9, align 4
  %102 = icmp ult i32 %101, 3
  br i1 %102, label %103, label %144

103:                                              ; preds = %100
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %105 = load i32, i32* @nameW, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 1
  %108 = call i32 @wsprintfW(i32* %104, i32 %105, i32 %107)
  %109 = mul nuw i64 4, %12
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %5, align 4
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %113 = call i64 @RegQueryValueExW(i32 %111, i32* %112, i32* null, i32* %4, i32* %14, i32* %3)
  %114 = load i64, i64* @ERROR_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %103
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lstrcpynW(i32 %123, i32* %14, i32 1)
  br label %140

125:                                              ; preds = %103
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IDS_NOBODY, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MAX_PLAYER_NAME_SIZE, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i32 @LoadStringW(i32 %128, i32 %129, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %125, %116
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %100

144:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %172, %144
  %146 = load i32, i32* %9, align 4
  %147 = icmp ult i32 %146, 3
  br i1 %147, label %148, label %175

148:                                              ; preds = %145
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %150 = load i32, i32* @timeW, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  %153 = call i32 @wsprintfW(i32* %149, i32 %150, i32 %152)
  store i32 4, i32* %3, align 4
  %154 = load i32, i32* %5, align 4
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = call i64 @RegQueryValueExW(i32 %154, i32* %155, i32* null, i32* %4, i32* %161, i32* %3)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %148
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 999, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %148
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %145

175:                                              ; preds = %145
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @RegCloseKey(i32 %176)
  %178 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @wsprintfW(i32*, i32, i32) #2

declare dso_local i32 @lstrcpynW(i32, i32*, i32) #2

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
