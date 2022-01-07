; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_IsCombInv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_IsCombInv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"(infoPtr=%p)\0A\00", align 1
@HKCOMB_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HKCOMB_S = common dso_local global i32 0, align 4
@HOTKEYF_SHIFT = common dso_local global i32 0, align 4
@HKCOMB_C = common dso_local global i32 0, align 4
@HOTKEYF_CONTROL = common dso_local global i32 0, align 4
@HKCOMB_A = common dso_local global i32 0, align 4
@HOTKEYF_ALT = common dso_local global i32 0, align 4
@HKCOMB_SC = common dso_local global i32 0, align 4
@HKCOMB_SA = common dso_local global i32 0, align 4
@HKCOMB_CA = common dso_local global i32 0, align 4
@HKCOMB_SCA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"() Modifiers are valid\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @HOTKEY_IsCombInv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HOTKEY_IsCombInv(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %4)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HKCOMB_NONE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %2, align 4
  br label %123

19:                                               ; preds = %12, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HKCOMB_S, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @HOTKEYF_SHIFT, align 4
  %28 = call i64 @IsOnlySet(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %123

32:                                               ; preds = %26, %19
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HKCOMB_C, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @HOTKEYF_CONTROL, align 4
  %41 = call i64 @IsOnlySet(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %2, align 4
  br label %123

45:                                               ; preds = %39, %32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HKCOMB_A, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @HOTKEYF_ALT, align 4
  %54 = call i64 @IsOnlySet(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %2, align 4
  br label %123

58:                                               ; preds = %52, %45
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HKCOMB_SC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i32, i32* @HOTKEYF_SHIFT, align 4
  %67 = load i32, i32* @HOTKEYF_CONTROL, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @IsOnlySet(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %2, align 4
  br label %123

73:                                               ; preds = %65, %58
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HKCOMB_SA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load i32, i32* @HOTKEYF_SHIFT, align 4
  %82 = load i32, i32* @HOTKEYF_ALT, align 4
  %83 = or i32 %81, %82
  %84 = call i64 @IsOnlySet(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %2, align 4
  br label %123

88:                                               ; preds = %80, %73
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HKCOMB_CA, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* @HOTKEYF_CONTROL, align 4
  %97 = load i32, i32* @HOTKEYF_ALT, align 4
  %98 = or i32 %96, %97
  %99 = call i64 @IsOnlySet(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %2, align 4
  br label %123

103:                                              ; preds = %95, %88
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @HKCOMB_SCA, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load i32, i32* @HOTKEYF_SHIFT, align 4
  %112 = load i32, i32* @HOTKEYF_CONTROL, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @HOTKEYF_ALT, align 4
  %115 = or i32 %113, %114
  %116 = call i64 @IsOnlySet(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @TRUE, align 4
  store i32 %119, i32* %2, align 4
  br label %123

120:                                              ; preds = %110, %103
  %121 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %120, %118, %101, %86, %71, %56, %43, %30, %17
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @IsOnlySet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
