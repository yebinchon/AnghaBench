; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_Timer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_Timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@TIMERID1 = common dso_local global i64 0, align 8
@PGF_HOT = common dso_local global i64 0, align 8
@PGS_HORZ = common dso_local global i32 0, align 4
@PGF_SCROLLLEFT = common dso_local global i64 0, align 8
@PGF_SCROLLUP = common dso_local global i64 0, align 8
@PGF_SCROLLRIGHT = common dso_local global i64 0, align 8
@PGF_SCROLLDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"[%p] TIMERID1: style=%08x, dir=%d\0A\00", align 1
@REPEAT_DELAY = common dso_local global i32 0, align 4
@PGS_AUTOSCROLL = common dso_local global i32 0, align 4
@SWP_FRAMECHANGED = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"[%p] TIMERID2: dir=%d\0A\00", align 1
@TIMERID2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @PAGER_Timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PAGER_Timer(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @TIMERID1, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %87

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PGF_HOT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PGS_HORZ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* @PGF_SCROLLLEFT, align 8
  br label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @PGF_SCROLLUP, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %6, align 8
  br label %42

29:                                               ; preds = %10
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PGS_HORZ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @PGF_SCROLLRIGHT, align 8
  br label %40

38:                                               ; preds = %29
  %39 = load i64, i64* @PGF_SCROLLDOWN, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %27
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %49, i64 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @TIMERID1, align 8
  %56 = call i32 @KillTimer(i32 %54, i64 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @TIMERID1, align 8
  %61 = load i32, i32* @REPEAT_DELAY, align 4
  %62 = call i32 @SetTimer(i32 %59, i64 %60, i32 %61, i32 0)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PGS_AUTOSCROLL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %42
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @PAGER_Scroll(%struct.TYPE_4__* %70, i64 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %77 = load i32, i32* @SWP_NOSIZE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SWP_NOMOVE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SWP_NOZORDER, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SWP_NOACTIVATE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @SetWindowPos(i32 %75, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %69, %42
  store i32 0, i32* %3, align 4
  br label %117

87:                                               ; preds = %2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* @TIMERID2, align 8
  %99 = call i32 @KillTimer(i32 %97, i64 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %87
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @PAGER_Scroll(%struct.TYPE_4__* %105, i64 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* @TIMERID2, align 8
  %114 = load i32, i32* @REPEAT_DELAY, align 4
  %115 = call i32 @SetTimer(i32 %112, i64 %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %104, %87
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @TRACE(i8*, i32, i64, ...) #1

declare dso_local i32 @KillTimer(i32, i64) #1

declare dso_local i32 @SetTimer(i32, i64, i32, i32) #1

declare dso_local i32 @PAGER_Scroll(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
