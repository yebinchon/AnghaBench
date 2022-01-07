; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_LButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_LButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"[%p] at (%d,%d)\0A\00", align 1
@PGF_DEPRESSED = common dso_local global i64 0, align 8
@TIMERID1 = common dso_local global i32 0, align 4
@INITIAL_DELAY = common dso_local global i32 0, align 4
@WM_NCPAINT = common dso_local global i32 0, align 4
@PGS_HORZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"[%p] PGF_SCROLLLEFT\0A\00", align 1
@PGF_SCROLLLEFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"[%p] PGF_SCROLLUP\0A\00", align 1
@PGF_SCROLLUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"[%p] PGF_SCROLLRIGHT\0A\00", align 1
@PGF_SCROLLRIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"[%p] PGF_SCROLLDOWN\0A\00", align 1
@PGF_SCROLLDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32)* @PAGER_LButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PAGER_LButtonDown(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call i32 @PAGER_HitTest(%struct.TYPE_8__* %23, %struct.TYPE_7__* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %43

27:                                               ; preds = %4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PGF_DEPRESSED, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* @PGF_DEPRESSED, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TIMERID1, align 4
  %41 = load i32, i32* @INITIAL_DELAY, align 4
  %42 = call i32 @SetTimer(i32 %39, i32 %40, i32 %41, i32 0)
  br label %63

43:                                               ; preds = %4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PGF_DEPRESSED, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* @PGF_DEPRESSED, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TIMERID1, align 4
  %60 = load i32, i32* @INITIAL_DELAY, align 4
  %61 = call i32 @SetTimer(i32 %58, i32 %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %46, %43
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WM_NCPAINT, align 4
  %71 = call i32 @SendMessageW(i32 %69, i32 %70, i32 0, i32 0)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %122 [
    i32 128, label %74
    i32 129, label %98
  ]

74:                                               ; preds = %72
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PGS_HORZ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = load i32, i32* @PGF_SCROLLLEFT, align 4
  %88 = call i32 @PAGER_Scroll(%struct.TYPE_8__* %86, i32 %87)
  br label %97

89:                                               ; preds = %74
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = load i32, i32* @PGF_SCROLLUP, align 4
  %96 = call i32 @PAGER_Scroll(%struct.TYPE_8__* %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %81
  br label %123

98:                                               ; preds = %72
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PGS_HORZ, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = load i32, i32* @PGF_SCROLLRIGHT, align 4
  %112 = call i32 @PAGER_Scroll(%struct.TYPE_8__* %110, i32 %111)
  br label %121

113:                                              ; preds = %98
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = load i32, i32* @PGF_SCROLLDOWN, align 4
  %120 = call i32 @PAGER_Scroll(%struct.TYPE_8__* %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %105
  br label %123

122:                                              ; preds = %72
  br label %123

123:                                              ; preds = %122, %121, %97
  ret i32 0
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @PAGER_HitTest(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @PAGER_Scroll(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
