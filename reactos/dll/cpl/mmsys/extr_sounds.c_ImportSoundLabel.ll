; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_ImportSoundLabel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_ImportSoundLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".Current\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ImportSoundLabel(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, %struct.TYPE_13__* %6, %struct.TYPE_10__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_11__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %17, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %19, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %21, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32* @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @_tcsicmp(i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %26, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @_tcsicmp(i32* %42, i32* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %27, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* @KEY_READ, align 4
  %53 = call i64 @RegOpenKeyEx(i32 %50, i32* %51, i32 0, i32 %52, i32* %18)
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %8
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %124

58:                                               ; preds = %8
  %59 = mul nuw i64 4, %30
  store i64 %59, i64* %22, align 8
  %60 = load i32, i32* %18, align 4
  %61 = ptrtoint i32* %32 to i32
  %62 = call i64 @RegQueryValueEx(i32 %60, i32* null, i32* null, i32* null, i32 %61, i64* %22)
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %124

67:                                               ; preds = %58
  %68 = load i32, i32* %26, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @FindSoundProfile(i32 %71, i32* %74)
  store i32 %75, i32* %24, align 4
  br label %80

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @FindSoundProfile(i32 %77, i32* %78)
  store i32 %79, i32* %24, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* %24, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %124

85:                                               ; preds = %80
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %87 = load i32, i32* %24, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_11__* @FindLabelContext(%struct.TYPE_12__* %86, i32 %87, i32 %90, i32 %93)
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %25, align 8
  %95 = call i64 @_countof(i32* %35)
  %96 = call i64 @ExpandEnvironmentStrings(i32* %32, i32* %35, i64 %95)
  store i64 %96, i64* %23, align 8
  %97 = load i64, i64* %23, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %85
  %100 = load i64, i64* %23, align 8
  %101 = call i64 @_countof(i32* %35)
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %85
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %124

105:                                              ; preds = %99
  %106 = load i32, i32* %26, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @_tcscpy(i32 %111, i32* %35)
  br label %122

113:                                              ; preds = %105
  %114 = load i32, i32* %27, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @_tcscpy(i32 %119, i32* %35)
  br label %121

121:                                              ; preds = %116, %113
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %124

124:                                              ; preds = %122, %103, %83, %65, %56
  %125 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_tcsicmp(i32*, i32*) #2

declare dso_local i32* @_T(i8*) #2

declare dso_local i64 @RegOpenKeyEx(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueEx(i32, i32*, i32*, i32*, i32, i64*) #2

declare dso_local i32 @FindSoundProfile(i32, i32*) #2

declare dso_local %struct.TYPE_11__* @FindLabelContext(%struct.TYPE_12__*, i32, i32, i32) #2

declare dso_local i64 @ExpandEnvironmentStrings(i32*, i32*, i64) #2

declare dso_local i64 @_countof(i32*) #2

declare dso_local i32 @_tcscpy(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
