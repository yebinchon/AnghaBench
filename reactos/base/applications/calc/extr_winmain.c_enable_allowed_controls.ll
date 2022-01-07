; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_enable_allowed_controls.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_enable_allowed_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@BITMASK_DEC_MASK = common dso_local global i32 0, align 4
@BITMASK_HEX_MASK = common dso_local global i32 0, align 4
@BITMASK_OCT_MASK = common dso_local global i32 0, align 4
@BITMASK_BIN_MASK = common dso_local global i32 0, align 4
@key2code = common dso_local global %struct.TYPE_4__* null, align 8
@BITMASK_IS_STATS = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @enable_allowed_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_allowed_controls(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %18 [
    i32 130, label %10
    i32 129, label %12
    i32 128, label %14
    i32 131, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @BITMASK_DEC_MASK, align 4
  store i32 %11, i32* %5, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @BITMASK_HEX_MASK, align 4
  store i32 %13, i32* %5, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @BITMASK_OCT_MASK, align 4
  store i32 %15, i32* %5, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @BITMASK_BIN_MASK, align 4
  store i32 %17, i32* %5, align 4
  br label %19

18:                                               ; preds = %2
  br label %91

19:                                               ; preds = %16, %14, %12, %10
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %88, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @key2code, align 8
  %23 = call i32 @SIZEOF(%struct.TYPE_4__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %91

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @key2code, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @key2code, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GetDlgItem(i32 %34, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @key2code, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BITMASK_IS_STATS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %33
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  %53 = call i64 @IsWindow(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @TRUE, align 8
  br label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @FALSE, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  store i64 %60, i64* %8, align 8
  br label %77

61:                                               ; preds = %33
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @key2code, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i64, i64* @TRUE, align 8
  br label %75

73:                                               ; preds = %61
  %74 = load i64, i64* @FALSE, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %75, %59
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @IsWindowEnabled(i32 %78)
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @EnableWindow(i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %77
  br label %87

87:                                               ; preds = %86, %25
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %20

91:                                               ; preds = %18, %20
  ret void
}

declare dso_local i32 @SIZEOF(%struct.TYPE_4__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IsWindow(i32) #1

declare dso_local i64 @IsWindowEnabled(i32) #1

declare dso_local i32 @EnableWindow(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
