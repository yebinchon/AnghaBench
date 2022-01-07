; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl_path_match.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl_path_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.jsonsl_jpr_component_st* }
%struct.jsonsl_jpr_component_st = type { i64, i32, i32 }
%struct.jsonsl_state_st = type { i64, i32, i32 }

@JSONSL_T_OBJECT = common dso_local global i64 0, align 8
@JSONSL_MATCH_NOMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsonsl_path_match(%struct.TYPE_4__* %0, %struct.jsonsl_state_st* %1, %struct.jsonsl_state_st* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.jsonsl_state_st*, align 8
  %9 = alloca %struct.jsonsl_state_st*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.jsonsl_jpr_component_st*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.jsonsl_state_st* %1, %struct.jsonsl_state_st** %8, align 8
  store %struct.jsonsl_state_st* %2, %struct.jsonsl_state_st** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %8, align 8
  %14 = icmp ne %struct.jsonsl_state_st* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %18, align 8
  %20 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %9, align 8
  %21 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @jsonsl__match_continue(%struct.TYPE_4__* %16, %struct.jsonsl_jpr_component_st* %19, i32 0, i64 %22)
  store i32 %23, i32* %6, align 4
  br label %77

24:                                               ; preds = %5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %26, align 8
  %28 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %8, align 8
  %29 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %27, i64 %31
  store %struct.jsonsl_jpr_component_st* %32, %struct.jsonsl_jpr_component_st** %12, align 8
  %33 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %8, align 8
  %34 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @JSONSL_T_OBJECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %24
  %39 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %12, align 8
  %40 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %12, align 8
  %47 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @strncmp(i8* %45, i32 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44, %38
  %53 = load i32, i32* @JSONSL_MATCH_NOMATCH, align 4
  store i32 %53, i32* %6, align 4
  br label %77

54:                                               ; preds = %44
  br label %67

55:                                               ; preds = %24
  %56 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %12, align 8
  %57 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %8, align 8
  %60 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @JSONSL_MATCH_NOMATCH, align 4
  store i32 %65, i32* %6, align 4
  br label %77

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %12, align 8
  %70 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %8, align 8
  %71 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.jsonsl_state_st*, %struct.jsonsl_state_st** %9, align 8
  %74 = getelementptr inbounds %struct.jsonsl_state_st, %struct.jsonsl_state_st* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @jsonsl__match_continue(%struct.TYPE_4__* %68, %struct.jsonsl_jpr_component_st* %69, i32 %72, i64 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %67, %64, %52, %15
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @jsonsl__match_continue(%struct.TYPE_4__*, %struct.jsonsl_jpr_component_st*, i32, i64) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
