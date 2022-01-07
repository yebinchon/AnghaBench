; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_SaveBoard.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_SaveBoard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MAX_PLAYER_NAME_SIZE = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@registry_key = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@xposW = common dso_local global i32* null, align 8
@REG_DWORD = common dso_local global i32 0, align 4
@yposW = common dso_local global i32* null, align 8
@difficultyW = common dso_local global i32* null, align 8
@heightW = common dso_local global i32* null, align 8
@widthW = common dso_local global i32* null, align 8
@minesW = common dso_local global i32* null, align 8
@markW = common dso_local global i32* null, align 8
@nameW = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@timeW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @SaveBoard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SaveBoard(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load i32, i32* @MAX_PLAYER_NAME_SIZE, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %15 = load i32, i32* @registry_key, align 4
  %16 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %17 = load i32, i32* @KEY_WRITE, align 4
  %18 = call i64 @RegCreateKeyExW(i32 %14, i32 %15, i32 0, i32* null, i32 %16, i32 %17, i32* null, i32* %3, i32* null)
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %134

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32*, i32** @xposW, align 8
  %25 = load i32, i32* @REG_DWORD, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @RegSetValueExW(i32 %23, i32* %24, i32 0, i32 %25, i32 %29, i32 4)
  %31 = load i32, i32* %3, align 4
  %32 = load i32*, i32** @yposW, align 8
  %33 = load i32, i32* @REG_DWORD, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = ptrtoint i32* %36 to i32
  %38 = call i32 @RegSetValueExW(i32 %31, i32* %32, i32 0, i32 %33, i32 %37, i32 4)
  %39 = load i32, i32* %3, align 4
  %40 = load i32*, i32** @difficultyW, align 8
  %41 = load i32, i32* @REG_DWORD, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @RegSetValueExW(i32 %39, i32* %40, i32 0, i32 %41, i32 %44, i32 4)
  %46 = load i32, i32* %3, align 4
  %47 = load i32*, i32** @heightW, align 8
  %48 = load i32, i32* @REG_DWORD, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  %51 = ptrtoint i32* %50 to i32
  %52 = call i32 @RegSetValueExW(i32 %46, i32* %47, i32 0, i32 %48, i32 %51, i32 4)
  %53 = load i32, i32* %3, align 4
  %54 = load i32*, i32** @widthW, align 8
  %55 = load i32, i32* @REG_DWORD, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = ptrtoint i32* %57 to i32
  %59 = call i32 @RegSetValueExW(i32 %53, i32* %54, i32 0, i32 %55, i32 %58, i32 4)
  %60 = load i32, i32* %3, align 4
  %61 = load i32*, i32** @minesW, align 8
  %62 = load i32, i32* @REG_DWORD, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = ptrtoint i32* %64 to i32
  %66 = call i32 @RegSetValueExW(i32 %60, i32* %61, i32 0, i32 %62, i32 %65, i32 4)
  %67 = load i32, i32* %3, align 4
  %68 = load i32*, i32** @markW, align 8
  %69 = load i32, i32* @REG_DWORD, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = ptrtoint i32* %71 to i32
  %73 = call i32 @RegSetValueExW(i32 %67, i32* %68, i32 0, i32 %69, i32 %72, i32 4)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %104, %22
  %75 = load i32, i32* %4, align 4
  %76 = icmp ult i32 %75, 3
  br i1 %76, label %77, label %107

77:                                               ; preds = %74
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %79 = load i32, i32* @nameW, align 4
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  %82 = call i32 @wsprintfW(i32* %78, i32 %79, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = mul nuw i64 4, %11
  %91 = udiv i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @lstrcpynW(i32* %13, i32 %89, i32 %92)
  %94 = load i32, i32* %3, align 4
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %96 = load i32, i32* @REG_SZ, align 4
  %97 = ptrtoint i32* %13 to i32
  %98 = call i32 @lstrlenW(i32* %13)
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32 @RegSetValueExW(i32 %94, i32* %95, i32 0, i32 %96, i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %77
  %105 = load i32, i32* %4, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %74

107:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %128, %107
  %109 = load i32, i32* %4, align 4
  %110 = icmp ult i32 %109, 3
  br i1 %110, label %111, label %131

111:                                              ; preds = %108
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %113 = load i32, i32* @timeW, align 4
  %114 = load i32, i32* %4, align 4
  %115 = add i32 %114, 1
  %116 = call i32 @wsprintfW(i32* %112, i32 %113, i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %119 = load i32, i32* @REG_DWORD, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = ptrtoint i32* %125 to i32
  %127 = call i32 @RegSetValueExW(i32 %117, i32* %118, i32 0, i32 %119, i32 %126, i32 4)
  br label %128

128:                                              ; preds = %111
  %129 = load i32, i32* %4, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %108

131:                                              ; preds = %108
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @RegCloseKey(i32 %132)
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %21
  %135 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %8, align 4
  switch i32 %136, label %138 [
    i32 0, label %137
    i32 1, label %137
  ]

137:                                              ; preds = %134, %134
  ret void

138:                                              ; preds = %134
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RegSetValueExW(i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @wsprintfW(i32*, i32, i32) #2

declare dso_local i32 @lstrcpynW(i32*, i32, i32) #2

declare dso_local i32 @lstrlenW(i32*) #2

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
