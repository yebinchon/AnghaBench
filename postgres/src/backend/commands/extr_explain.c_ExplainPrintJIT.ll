; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainPrintJIT.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainPrintJIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"JIT\00", align 1
@EXPLAIN_FORMAT_TEXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"JIT for worker %u:\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"JIT:\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Functions\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Options: %s %s, %s %s, %s %s, %s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Inlining\00", align 1
@PGJIT_INLINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Optimization\00", align 1
@PGJIT_OPT3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"Expressions\00", align 1
@PGJIT_EXPR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Deforming\00", align 1
@PGJIT_DEFORM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [68 x i8] c"Timing: %s %.3f ms, %s %.3f ms, %s %.3f ms, %s %.3f ms, %s %.3f ms\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Generation\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Emission\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Worker Number\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Timing\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExplainPrintJIT(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %4
  br label %254

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @INSTR_TIME_SET_ZERO(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @INSTR_TIME_ADD(i32 %25, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @INSTR_TIME_ADD(i32 %30, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @INSTR_TIME_ADD(i32 %35, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @INSTR_TIME_ADD(i32 %40, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, %struct.TYPE_11__* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %170

52:                                               ; preds = %22
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  %60 = call i32 @appendStringInfoSpaces(i32 %55, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i8*, ...) @appendStringInfo(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %74

69:                                               ; preds = %52
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @appendStringInfoString(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %81, %struct.TYPE_11__* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 2
  %91 = call i32 @appendStringInfoSpaces(i32 %86, i32 %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PGJIT_INLINE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @PGJIT_OPT3, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @PGJIT_EXPR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @PGJIT_DEFORM, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %119 = call i32 (i32, i8*, ...) @appendStringInfo(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %74
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %165

129:                                              ; preds = %124
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %135, 2
  %137 = call i32 @appendStringInfoSpaces(i32 %132, i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call double @INSTR_TIME_GET_DOUBLE(i32 %143)
  %145 = fmul double 1.000000e+03, %144
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call double @INSTR_TIME_GET_DOUBLE(i32 %148)
  %150 = fmul double 1.000000e+03, %149
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call double @INSTR_TIME_GET_DOUBLE(i32 %153)
  %155 = fmul double 1.000000e+03, %154
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call double @INSTR_TIME_GET_DOUBLE(i32 %158)
  %160 = fmul double 1.000000e+03, %159
  %161 = load i32, i32* %9, align 4
  %162 = call double @INSTR_TIME_GET_DOUBLE(i32 %161)
  %163 = fmul double 1.000000e+03, %162
  %164 = call i32 (i32, i8*, ...) @appendStringInfo(i32 %140, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), double %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), double %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), double %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), double %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), double %163)
  br label %165

165:                                              ; preds = %129, %124, %74
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  br label %251

170:                                              ; preds = %22
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %173 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 %171, %struct.TYPE_11__* %172)
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %176, %struct.TYPE_11__* %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 1, %struct.TYPE_11__* %179)
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @PGJIT_INLINE, align 4
  %183 = and i32 %181, %182
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %185 = call i32 @ExplainPropertyBool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %183, %struct.TYPE_11__* %184)
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @PGJIT_OPT3, align 4
  %188 = and i32 %186, %187
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %190 = call i32 @ExplainPropertyBool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %188, %struct.TYPE_11__* %189)
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @PGJIT_EXPR, align 4
  %193 = and i32 %191, %192
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = call i32 @ExplainPropertyBool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %193, %struct.TYPE_11__* %194)
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @PGJIT_DEFORM, align 4
  %198 = and i32 %196, %197
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %200 = call i32 @ExplainPropertyBool(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %198, %struct.TYPE_11__* %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %202 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 1, %struct.TYPE_11__* %201)
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %250

207:                                              ; preds = %170
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %250

212:                                              ; preds = %207
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 1, %struct.TYPE_11__* %213)
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call double @INSTR_TIME_GET_DOUBLE(i32 %217)
  %219 = fmul double 1.000000e+03, %218
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %221 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), double %219, i32 3, %struct.TYPE_11__* %220)
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call double @INSTR_TIME_GET_DOUBLE(i32 %224)
  %226 = fmul double 1.000000e+03, %225
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %228 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), double %226, i32 3, %struct.TYPE_11__* %227)
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call double @INSTR_TIME_GET_DOUBLE(i32 %231)
  %233 = fmul double 1.000000e+03, %232
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), double %233, i32 3, %struct.TYPE_11__* %234)
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call double @INSTR_TIME_GET_DOUBLE(i32 %238)
  %240 = fmul double 1.000000e+03, %239
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %242 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), double %240, i32 3, %struct.TYPE_11__* %241)
  %243 = load i32, i32* %9, align 4
  %244 = call double @INSTR_TIME_GET_DOUBLE(i32 %243)
  %245 = fmul double 1.000000e+03, %244
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %247 = call i32 @ExplainPropertyFloat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), double %245, i32 3, %struct.TYPE_11__* %246)
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %249 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 1, %struct.TYPE_11__* %248)
  br label %250

250:                                              ; preds = %212, %207, %170
  br label %251

251:                                              ; preds = %250, %165
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %253 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, %struct.TYPE_11__* %252)
  br label %254

254:                                              ; preds = %251, %21
  ret void
}

declare dso_local i32 @INSTR_TIME_SET_ZERO(i32) #1

declare dso_local i32 @INSTR_TIME_ADD(i32, i32) #1

declare dso_local i32 @ExplainOpenGroup(i8*, i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, ...) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @ExplainPropertyInteger(i8*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local double @INSTR_TIME_GET_DOUBLE(i32) #1

declare dso_local i32 @ExplainPropertyBool(i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ExplainCloseGroup(i8*, i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ExplainPropertyFloat(i8*, i8*, double, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
