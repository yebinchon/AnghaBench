; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_match_operands_constraint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_match_operands_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@AARCH64_OPDE_UNTIED_OPERAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"FAIL on operand qualifier matching\00", align 1
@AARCH64_OPDE_INVALID_VARIANT = common dso_local global i32 0, align 4
@AARCH64_MAX_OPND_NUM = common dso_local global i32 0, align 4
@AARCH64_OPND_NIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"skip the incomplete operand %d\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"FAIL on operand %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarch64_match_operands_constraint(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %23, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %16
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* @AARCH64_OPDE_UNTIED_OPERAND, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %37, %34
  store i32 0, i32* %3, align 4
  br label %118

47:                                               ; preds = %16, %2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i64 @match_operands_qualifier(%struct.TYPE_12__* %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* @AARCH64_OPDE_INVALID_VARIANT, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %56, %52
  store i32 0, i32* %3, align 4
  br label %118

65:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %113, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @AARCH64_MAX_OPND_NUM, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @AARCH64_OPND_NIL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %116

84:                                               ; preds = %70
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %113

97:                                               ; preds = %84
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = call i64 @operand_general_constraint_met_p(%struct.TYPE_13__* %100, i32 %101, i32 %102, %struct.TYPE_14__* %105, %struct.TYPE_11__* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* %6, align 4
  %111 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  store i32 0, i32* %3, align 4
  br label %118

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %94
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %66

116:                                              ; preds = %83, %66
  %117 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %109, %64, %46
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i64 @match_operands_qualifier(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @operand_general_constraint_met_p(%struct.TYPE_13__*, i32, i32, %struct.TYPE_14__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
