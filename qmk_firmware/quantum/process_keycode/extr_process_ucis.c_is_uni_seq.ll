; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_ucis.c_is_uni_seq.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_ucis.c_is_uni_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64* }

@KC_1 = common dso_local global i64 0, align 8
@KC_A = common dso_local global i64 0, align 8
@qk_ucis_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KC_ENT = common dso_local global i64 0, align 8
@KC_SPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_uni_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_uni_seq(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %59, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sle i32 49, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 48
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 49
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @KC_1, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %5, align 8
  br label %46

36:                                               ; preds = %19, %12
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 97
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @KC_A, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %36, %26
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qk_ucis_state, i32 0, i32 0), align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qk_ucis_state, i32 0, i32 1), align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %46
  store i32 0, i32* %2, align 4
  br label %79

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %6

62:                                               ; preds = %6
  %63 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qk_ucis_state, i32 0, i32 1), align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KC_ENT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qk_ucis_state, i32 0, i32 1), align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @KC_SPC, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %69, %62
  %77 = phi i1 [ true, %62 ], [ %75, %69 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %57
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
