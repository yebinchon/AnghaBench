; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_CheckCombo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_CheckCombo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[%p]: handling msg %x (%x)\0A\00", align 1
@VK_UP = common dso_local global i64 0, align 8
@VK_DOWN = common dso_local global i64 0, align 8
@CB_GETEXTENDEDUI = common dso_local global i32 0, align 4
@CB_GETDROPPEDSTATE = common dso_local global i32 0, align 4
@CB_SETEXTENDEDUI = common dso_local global i32 0, align 4
@VK_F4 = common dso_local global i32 0, align 4
@CB_SHOWDROPDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64)* @EDIT_CheckCombo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_CheckCombo(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %110

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GetParent(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @VK_UP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @VK_DOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34, %19
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CB_GETEXTENDEDUI, align 4
  %41 = call i64 @SendMessageW(i32 %39, i32 %40, i32 0, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CB_GETDROPPEDSTATE, align 4
  %53 = call i64 @SendMessageW(i32 %51, i32 %52, i32 0, i32 0)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %47
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %100 [
    i32 129, label %58
    i32 128, label %84
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @VK_UP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @VK_DOWN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CB_SETEXTENDEDUI, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i64 @SendMessageW(i32 %73, i32 %74, i32 %75, i32 0)
  %77 = load i32, i32* @VK_F4, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %7, align 8
  store i32 2, i32* %11, align 4
  br label %79

79:                                               ; preds = %72, %68, %61, %58
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @SendMessageW(i32 %80, i32 129, i32 %82, i32 0)
  br label %100

84:                                               ; preds = %56
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @CB_SHOWDROPDOWN, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @SendMessageW(i32 %88, i32 %89, i32 %93, i32 0)
  br label %99

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @VK_F4, align 4
  %98 = call i64 @SendMessageW(i32 %96, i32 129, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %95, %87
  br label %100

100:                                              ; preds = %56, %99, %79
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @CB_SETEXTENDEDUI, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i64 @SendMessageW(i32 %104, i32 %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %17
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
