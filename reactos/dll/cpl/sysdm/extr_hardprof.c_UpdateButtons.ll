; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_hardprof.c_UpdateButtons.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_hardprof.c_UpdateButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@IDC_HRDPROFPROP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_HRDPROFCOPY = common dso_local global i32 0, align 4
@IDC_HRDPROFRENAME = common dso_local global i32 0, align 4
@IDC_HRDPROFDEL = common dso_local global i32 0, align 4
@IDC_HRDPROFUP = common dso_local global i32 0, align 4
@IDC_HRDPROFDWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @UpdateButtons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateButtons(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IDC_HRDPROFPROP, align 4
  %8 = call i32 @GetDlgItem(i32 %6, i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = call i32 @EnableWindow(i32 %8, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IDC_HRDPROFCOPY, align 4
  %22 = call i32 @GetDlgItem(i32 %20, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @TRUE, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @FALSE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @EnableWindow(i32 %22, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IDC_HRDPROFRENAME, align 4
  %36 = call i32 @GetDlgItem(i32 %34, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @TRUE, align 4
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @FALSE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @EnableWindow(i32 %36, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @IDC_HRDPROFDEL, align 4
  %50 = call i32 @GetDlgItem(i32 %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @TRUE, align 4
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @FALSE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @EnableWindow(i32 %50, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IDC_HRDPROFUP, align 4
  %69 = call i32 @GetDlgItem(i32 %67, i32 %68)
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @EnableWindow(i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @IDC_HRDPROFDWN, align 4
  %74 = call i32 @GetDlgItem(i32 %72, i32 %73)
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @EnableWindow(i32 %74, i32 %75)
  br label %111

77:                                               ; preds = %59
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @IDC_HRDPROFUP, align 4
  %80 = call i32 @GetDlgItem(i32 %78, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @TRUE, align 4
  br label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @FALSE, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @EnableWindow(i32 %80, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @IDC_HRDPROFDWN, align 4
  %94 = call i32 @GetDlgItem(i32 %92, i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %97, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* @TRUE, align 4
  br label %108

106:                                              ; preds = %89
  %107 = load i32, i32* @FALSE, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @EnableWindow(i32 %94, i32 %109)
  br label %111

111:                                              ; preds = %108, %66
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
