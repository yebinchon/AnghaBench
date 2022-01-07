; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__match_continue.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__match_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.jsonsl_jpr_component_st = type { i64 }

@JSONSL_MATCH_COMPLETE = common dso_local global i32 0, align 4
@JSONSL_MATCH_TYPE_MISMATCH = common dso_local global i32 0, align 4
@JSONSL_T_LIST = common dso_local global i32 0, align 4
@JSONSL_PATH_NUMERIC = common dso_local global i64 0, align 8
@JSONSL_MATCH_POSSIBLE = common dso_local global i32 0, align 4
@JSONSL_T_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.jsonsl_jpr_component_st*, i32, i32)* @jsonsl__match_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__match_continue(%struct.TYPE_3__* %0, %struct.jsonsl_jpr_component_st* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.jsonsl_jpr_component_st*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jsonsl_jpr_component_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.jsonsl_jpr_component_st* %1, %struct.jsonsl_jpr_component_st** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %7, align 8
  %12 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %11, i64 1
  store %struct.jsonsl_jpr_component_st* %12, %struct.jsonsl_jpr_component_st** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %19
  %32 = load i32, i32* @JSONSL_MATCH_COMPLETE, align 4
  store i32 %32, i32* %5, align 4
  br label %65

33:                                               ; preds = %24
  %34 = load i32, i32* @JSONSL_MATCH_TYPE_MISMATCH, align 4
  store i32 %34, i32* %5, align 4
  br label %65

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @JSONSL_T_LIST, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %10, align 8
  %41 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @JSONSL_PATH_NUMERIC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @JSONSL_MATCH_POSSIBLE, align 4
  store i32 %46, i32* %5, align 4
  br label %65

47:                                               ; preds = %39
  %48 = load i32, i32* @JSONSL_MATCH_TYPE_MISMATCH, align 4
  store i32 %48, i32* %5, align 4
  br label %65

49:                                               ; preds = %35
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @JSONSL_T_OBJECT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %10, align 8
  %55 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @JSONSL_PATH_NUMERIC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @JSONSL_MATCH_TYPE_MISMATCH, align 4
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @JSONSL_MATCH_POSSIBLE, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @JSONSL_MATCH_TYPE_MISMATCH, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %61, %59, %47, %45, %33, %31
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
