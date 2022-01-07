; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl_jpr_match.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl_jpr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.jsonsl_jpr_component_st* }
%struct.jsonsl_jpr_component_st = type { i64, i64, i64, i32, i64 }

@JSONSL_MATCH_NOMATCH = common dso_local global i32 0, align 4
@JSONSL_MATCH_COMPLETE = common dso_local global i32 0, align 4
@JSONSL_MATCH_POSSIBLE = common dso_local global i32 0, align 4
@JSONSL_PATH_WILDCARD = common dso_local global i64 0, align 8
@JSONSL_PATH_NUMERIC = common dso_local global i64 0, align 8
@JSONSL_T_LIST = common dso_local global i32 0, align 4
@JSONSL_MATCH_TYPE_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsonsl_jpr_match(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.jsonsl_jpr_component_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %16, i64 %18
  store %struct.jsonsl_jpr_component_st* %19, %struct.jsonsl_jpr_component_st** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @JSONSL_MATCH_NOMATCH, align 4
  store i32 %26, i32* %6, align 4
  br label %131

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @JSONSL_MATCH_COMPLETE, align 4
  store i32 %36, i32* %6, align 4
  br label %131

37:                                               ; preds = %30
  %38 = load i32, i32* @JSONSL_MATCH_POSSIBLE, align 4
  store i32 %38, i32* %6, align 4
  br label %131

39:                                               ; preds = %27
  %40 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %13, align 8
  %41 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @JSONSL_PATH_WILDCARD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub i32 %49, 1
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @JSONSL_MATCH_COMPLETE, align 4
  store i32 %53, i32* %6, align 4
  br label %131

54:                                               ; preds = %45
  %55 = load i32, i32* @JSONSL_MATCH_POSSIBLE, align 4
  store i32 %55, i32* %6, align 4
  br label %131

56:                                               ; preds = %39
  %57 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %13, align 8
  %58 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @JSONSL_PATH_NUMERIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @JSONSL_T_LIST, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %13, align 8
  %68 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @JSONSL_MATCH_NOMATCH, align 4
  store i32 %73, i32* %6, align 4
  br label %131

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub i32 %78, 1
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @JSONSL_MATCH_COMPLETE, align 4
  store i32 %82, i32* %6, align 4
  br label %131

83:                                               ; preds = %74
  %84 = load i32, i32* @JSONSL_MATCH_POSSIBLE, align 4
  store i32 %84, i32* %6, align 4
  br label %131

85:                                               ; preds = %62
  %86 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %13, align 8
  %87 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @JSONSL_MATCH_TYPE_MISMATCH, align 4
  store i32 %91, i32* %6, align 4
  br label %131

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  br label %101

94:                                               ; preds = %56
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @JSONSL_T_LIST, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @JSONSL_MATCH_TYPE_MISMATCH, align 4
  store i32 %99, i32* %6, align 4
  br label %131

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %93
  %102 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %13, align 8
  %103 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @JSONSL_MATCH_NOMATCH, align 4
  store i32 %108, i32* %6, align 4
  br label %131

109:                                              ; preds = %101
  %110 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %13, align 8
  %111 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @strncmp(i32 %112, i8* %113, i64 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sub i32 %122, 1
  %124 = icmp eq i32 %119, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @JSONSL_MATCH_COMPLETE, align 4
  store i32 %126, i32* %6, align 4
  br label %131

127:                                              ; preds = %118
  %128 = load i32, i32* @JSONSL_MATCH_POSSIBLE, align 4
  store i32 %128, i32* %6, align 4
  br label %131

129:                                              ; preds = %109
  %130 = load i32, i32* @JSONSL_MATCH_NOMATCH, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %127, %125, %107, %98, %90, %83, %81, %72, %54, %52, %37, %35, %25
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @strncmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
