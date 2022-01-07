; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_find_best_match.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_aarch64_find_best_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"SUCCEED: no operand\00", align 1
@AARCH64_MAX_QLF_SEQ_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"SUCCEED: empty qualifier list\00", align 1
@AARCH64_OPND_QLF_NIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"complete qualifiers using list %d\00", align 1
@AARCH64_MAX_OPND_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@debug_dump = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarch64_find_best_match(%struct.TYPE_5__* %0, i64** %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @aarch64_num_of_operands(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %163

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %27
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %116, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @AARCH64_MAX_QLF_SEQ_NUM, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %35
  %40 = load i64**, i64*** %7, align 8
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %13, align 8
  store i32 1, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i64*, i64** %13, align 8
  %45 = call i64 @empty_qualifier_sequence_p(i64* %44)
  %46 = load i64, i64* @TRUE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @DEBUG_TRACE_IF(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %48
  br label %121

57:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %106, %57
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sle i32 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %111

68:                                               ; preds = %66
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AARCH64_OPND_QLF_NIL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %106

80:                                               ; preds = %68
  %81 = load i64*, i64** %13, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %82, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %80
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = load i64*, i64** %13, align 8
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @operand_also_qualified_p(%struct.TYPE_6__* %98, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %106

104:                                              ; preds = %92
  store i32 0, i32* %10, align 4
  br label %111

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %103, %79
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  %109 = load i64*, i64** %13, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %13, align 8
  br label %58

111:                                              ; preds = %104, %66
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %121

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = load i64**, i64*** %7, align 8
  %120 = getelementptr inbounds i64*, i64** %119, i32 1
  store i64** %120, i64*** %7, align 8
  br label %35

121:                                              ; preds = %114, %56, %35
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %161

124:                                              ; preds = %121
  %125 = load i64**, i64*** %7, align 8
  %126 = load i64*, i64** %125, align 8
  store i64* %126, i64** %13, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %140, %124
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = load i64*, i64** %13, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %9, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  store i64 %135, i64* %139, align 8
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  %143 = load i64*, i64** %13, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %13, align 8
  br label %129

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %156, %145
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @AARCH64_MAX_OPND_NUM, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i64, i64* @AARCH64_OPND_QLF_NIL, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64 %151, i64* %155, align 8
  br label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %146

159:                                              ; preds = %146
  %160 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %163

161:                                              ; preds = %121
  %162 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %159, %22
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @aarch64_num_of_operands(i32) #1

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i64 @empty_qualifier_sequence_p(i64*) #1

declare dso_local i32 @DEBUG_TRACE_IF(i32, i8*) #1

declare dso_local i64 @operand_also_qualified_p(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
