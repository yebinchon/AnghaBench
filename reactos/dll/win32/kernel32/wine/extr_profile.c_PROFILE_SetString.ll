; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_SetString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_SetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@CurProfile = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"(%s,%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"(%s,%s,%s):\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"  no change needed\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  replacing %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"  creating key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @PROFILE_SetString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROFILE_SetString(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @debugstr_w(i32* %14)
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurProfile, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @PROFILE_DeleteSection(i32* %18, i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurProfile, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %5, align 4
  br label %123

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @debugstr_w(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @debugstr_w(i32* %32)
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurProfile, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @PROFILE_DeleteKey(i32* %36, i32* %37, i32* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurProfile, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %5, align 4
  br label %123

45:                                               ; preds = %26
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurProfile, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.TYPE_4__* @PROFILE_Find(i32* %47, i32* %48, i32* %49, i32 %50, i32 %51)
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %10, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @debugstr_w(i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @debugstr_w(i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @debugstr_w(i32* %57)
  %59 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %56, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %45
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %5, align 4
  br label %123

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %70, %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @PROFILE_isspaceW(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  br label %65

73:                                               ; preds = %65
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @strcmpW(i32* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %5, align 4
  br label %123

88:                                               ; preds = %78
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @debugstr_w(i32* %91)
  %93 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @HeapFree(i32 %94, i32 0, i32* %97)
  br label %101

99:                                               ; preds = %73
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %88
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @strlenW(i32* %103)
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32* @HeapAlloc(i32 %102, i32 0, i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @strcpyW(i32* %114, i32* %115)
  %117 = load i32, i32* @TRUE, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurProfile, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %85, %62, %29, %13
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @PROFILE_DeleteSection(i32*, i32*) #1

declare dso_local i32 @PROFILE_DeleteKey(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @PROFILE_Find(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @PROFILE_isspaceW(i32) #1

declare dso_local i32 @strcmpW(i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @strcpyW(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
