; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_security.c_update_security_level.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_security.c_update_security_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"(%p, lv_index: %u, tb_index: %u)\0A\00", align 1
@SW_NORMAL = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@hcpl = common dso_local global i32 0, align 4
@IDS_SEC_LEVEL0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"new level #%d: %s\0A\00", align 1
@IDC_SEC_LEVEL = common dso_local global i32 0, align 4
@IDS_SEC_LEVEL0_INFO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"new level info: %s\0A\00", align 1
@IDC_SEC_LEVEL_INFO = common dso_local global i32 0, align 4
@TBM_SETPOS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NUM_TRACKBAR_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64)* @update_security_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_security_level(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [512 x i64], align 16
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %9, i64 %10, i64 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %135

26:                                               ; preds = %23, %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %34, %26
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @SW_NORMAL, align 4
  br label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @SW_HIDE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @ShowWindow(i32 %42, i32 %55)
  br label %57

57:                                               ; preds = %54, %34
  %58 = load i64, i64* %6, align 8
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  br label %70

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @index_from_urltemplate(i64 %68)
  br label %70

70:                                               ; preds = %62, %60
  %71 = phi i64 [ %61, %60 ], [ %69, %62 ]
  store i64 %71, i64* %8, align 8
  %72 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %72, align 16
  %73 = load i32, i32* @hcpl, align 4
  %74 = load i32, i32* @IDS_SEC_LEVEL0, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  %78 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %79 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %80 = call i32 @ARRAY_SIZE(i64* %79)
  %81 = call i32 @LoadStringW(i32 %73, i64 %77, i64* %78, i32 %80)
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %84 = call i32 @debugstr_w(i64* %83)
  %85 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IDC_SEC_LEVEL, align 4
  %90 = call i32 @GetDlgItem(i32 %88, i32 %89)
  %91 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %92 = call i32 @SetWindowTextW(i32 %90, i64* %91)
  %93 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %93, align 16
  %94 = load i32, i32* @hcpl, align 4
  %95 = load i64, i64* @IDS_SEC_LEVEL0_INFO, align 8
  %96 = load i64, i64* %8, align 8
  %97 = mul i64 %96, 16
  %98 = add i64 %95, %97
  %99 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %100 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %101 = call i32 @ARRAY_SIZE(i64* %100)
  %102 = call i32 @LoadStringW(i32 %94, i64 %98, i64* %99, i32 %101)
  %103 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %104 = call i32 @debugstr_w(i64* %103)
  %105 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IDC_SEC_LEVEL_INFO, align 4
  %110 = call i32 @GetDlgItem(i32 %108, i32 %109)
  %111 = getelementptr inbounds [512 x i64], [512 x i64]* %7, i64 0, i64 0
  %112 = call i32 @SetWindowTextW(i32 %110, i64* %111)
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %70
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @TBM_SETPOS, align 4
  %120 = load i32, i32* @TRUE, align 4
  %121 = load i32, i32* @NUM_TRACKBAR_POS, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %8, align 8
  %124 = sub i64 %122, %123
  %125 = call i32 @SendMessageW(i32 %118, i32 %119, i32 %120, i64 %124)
  br label %126

126:                                              ; preds = %115, %70
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %126, %23
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i64 @index_from_urltemplate(i64) #1

declare dso_local i32 @LoadStringW(i32, i64, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @SetWindowTextW(i32, i64*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
