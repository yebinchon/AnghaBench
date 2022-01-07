; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_GetTextW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_GetTextW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"part %d\0A\00", align 1
@SBT_OWNERDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64)* @STATUSBAR_GetTextW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STATUSBAR_GetTextW(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %82

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %8, align 8
  br label %35

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %8, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SBT_OWNERDRAW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  br label %80

47:                                               ; preds = %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @strlenW(i64 %55)
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %52
  %59 = phi i32 [ %56, %52 ], [ 0, %57 ]
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 16
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @strcpyW(i64 %74, i64 %77)
  br label %79

79:                                               ; preds = %73, %70, %58
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @strlenW(i64) #1

declare dso_local i32 @strcpyW(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
