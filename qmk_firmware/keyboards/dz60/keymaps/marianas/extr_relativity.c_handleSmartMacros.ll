; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_handleSmartMacros.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_handleSmartMacros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@relativityActive = common dso_local global i32 0, align 4
@tempOff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Id = \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".Id\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ON \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handleSmartMacros(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* @relativityActive, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %62

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %60 [
    i32 155, label %17
    i32 157, label %26
    i32 156, label %26
    i32 154, label %26
    i32 153, label %26
    i32 152, label %26
    i32 150, label %26
    i32 149, label %26
    i32 148, label %26
    i32 147, label %26
    i32 146, label %26
    i32 145, label %26
    i32 144, label %26
    i32 143, label %26
    i32 142, label %26
    i32 141, label %26
    i32 140, label %26
    i32 139, label %26
    i32 138, label %26
    i32 137, label %26
    i32 135, label %26
    i32 134, label %26
    i32 133, label %26
    i32 132, label %26
    i32 131, label %26
    i32 130, label %26
    i32 129, label %26
    i32 128, label %29
    i32 136, label %44
    i32 158, label %47
    i32 151, label %58
  ]

17:                                               ; preds = %15
  %18 = call i32 (...) @isShifted()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (...) @deletePrev()
  br label %25

22:                                               ; preds = %17
  %23 = call i32 @register_code(i32 155)
  %24 = call i32 @unregister_code(i32 155)
  br label %25

25:                                               ; preds = %22, %20
  store i32 0, i32* %3, align 4
  br label %62

26:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @processSmartMacroTap(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %15
  %30 = load i32, i32* @tempOff, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = call i32 @SEND_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @printTableAbbreviationLimited()
  %35 = call i32 @SEND_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (...) @deactivateRelativity()
  store i32 %36, i32* %3, align 4
  br label %62

37:                                               ; preds = %29
  %38 = call i32 (...) @printTableAbbreviation()
  %39 = call i32 @SEND_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (...) @printTableAbbreviationLimited()
  %41 = call i32 (...) @eraseKeyCodes()
  %42 = call i32 (...) @eraseTableAbbreviation()
  %43 = call i32 (...) @eraseCharCounts()
  store i32 1, i32* @tempOff, align 4
  store i32 1, i32* %3, align 4
  br label %62

44:                                               ; preds = %15
  %45 = call i32 (...) @printTableAbbreviation()
  %46 = call i32 (...) @deactivateRelativity()
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %15
  %48 = load i32, i32* @tempOff, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = call i32 @SEND_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (...) @printTableAbbreviationLimited()
  %53 = call i32 @SEND_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 (...) @deactivateRelativity()
  store i32 1, i32* %3, align 4
  br label %62

55:                                               ; preds = %47
  %56 = call i32 (...) @printTableAbbreviation()
  %57 = call i32 (...) @deactivateRelativity()
  store i32 1, i32* %3, align 4
  br label %62

58:                                               ; preds = %15
  %59 = call i32 (...) @deactivateRelativity()
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %60, %9
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %55, %50, %44, %37, %32, %26, %25, %8
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @isShifted(...) #1

declare dso_local i32 @deletePrev(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @processSmartMacroTap(i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @printTableAbbreviationLimited(...) #1

declare dso_local i32 @deactivateRelativity(...) #1

declare dso_local i32 @printTableAbbreviation(...) #1

declare dso_local i32 @eraseKeyCodes(...) #1

declare dso_local i32 @eraseTableAbbreviation(...) #1

declare dso_local i32 @eraseCharCounts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
