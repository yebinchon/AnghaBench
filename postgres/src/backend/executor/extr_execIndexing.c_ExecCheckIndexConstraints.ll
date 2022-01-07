; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execIndexing.c_ExecCheckIndexConstraints.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execIndexing.c_ExecCheckIndexConstraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_24__**, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_25__ = type { i32* }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"ON CONFLICT does not support deferrable unique constraints/exclusion constraints as arbiters\00", align 1
@CEOUC_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unexpected failure to find arbiter index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecCheckIndexConstraints(i32* %0, %struct.TYPE_26__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__**, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_24__**, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %27 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %17, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %31 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @ItemPointerSetInvalid(i32* %34)
  %36 = call i32 @ItemPointerSetInvalid(i32* %20)
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %10, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %44, align 8
  store %struct.TYPE_23__** %45, %struct.TYPE_23__*** %13, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %47, align 8
  store %struct.TYPE_24__** %48, %struct.TYPE_24__*** %15, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %14, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %53 = call %struct.TYPE_25__* @GetPerTupleExprContext(%struct.TYPE_26__* %52)
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %16, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %167, %4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %170

61:                                               ; preds = %57
  %62 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %13, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %62, i64 %64
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  store %struct.TYPE_23__* %66, %struct.TYPE_23__** %22, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %68 = icmp eq %struct.TYPE_23__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %167

70:                                               ; preds = %61
  %71 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %15, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %71, i64 %73
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  store %struct.TYPE_24__* %75, %struct.TYPE_24__** %23, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %167

86:                                               ; preds = %80, %70
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %167

92:                                               ; preds = %86
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** @NIL, align 8
  %95 = icmp ne i32* %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @list_member_oid(i32* %97, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  br label %167

106:                                              ; preds = %96, %92
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = call i32 @errmsg(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %120 = call i32 @RelationGetRelationName(%struct.TYPE_23__* %119)
  %121 = call i32 @errtableconstraint(%struct.TYPE_23__* %118, i32 %120)
  %122 = call i32 @ereport(i32 %114, i32 %121)
  br label %123

123:                                              ; preds = %113, %106
  store i32 1, i32* %21, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** @NIL, align 8
  %128 = icmp ne i32* %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %123
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %25, align 8
  %133 = load i32*, i32** %25, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %140 = call i32* @ExecPrepareQual(i32* %138, %struct.TYPE_26__* %139)
  store i32* %140, i32** %25, align 8
  %141 = load i32*, i32** %25, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  store i32* %141, i32** %143, align 8
  br label %144

144:                                              ; preds = %135, %129
  %145 = load i32*, i32** %25, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %147 = call i32 @ExecQual(i32* %145, %struct.TYPE_25__* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  br label %167

150:                                              ; preds = %144
  br label %151

151:                                              ; preds = %150, %123
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %155 = call i32 @FormIndexDatum(%struct.TYPE_24__* %152, i32* %153, %struct.TYPE_26__* %154, i32* %30, i32* %33)
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %160 = load i32, i32* @CEOUC_WAIT, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @check_exclusion_or_unique_constraint(%struct.TYPE_23__* %156, %struct.TYPE_23__* %157, %struct.TYPE_24__* %158, i32* %20, i32* %30, i32* %33, %struct.TYPE_26__* %159, i32 0, i32 %160, i32 1, i32* %161)
  store i32 %162, i32* %24, align 4
  %163 = load i32, i32* %24, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %151
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %181

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %166, %149, %105, %91, %85, %69
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %57

170:                                              ; preds = %57
  %171 = load i32*, i32** %9, align 8
  %172 = load i32*, i32** @NIL, align 8
  %173 = icmp ne i32* %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i32, i32* %21, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @ERROR, align 4
  %179 = call i32 @elog(i32 %178, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174, %170
  store i32 1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %181

181:                                              ; preds = %180, %165
  %182 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #2

declare dso_local %struct.TYPE_25__* @GetPerTupleExprContext(%struct.TYPE_26__*) #2

declare dso_local i32 @list_member_oid(i32*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @errtableconstraint(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_23__*) #2

declare dso_local i32* @ExecPrepareQual(i32*, %struct.TYPE_26__*) #2

declare dso_local i32 @ExecQual(i32*, %struct.TYPE_25__*) #2

declare dso_local i32 @FormIndexDatum(%struct.TYPE_24__*, i32*, %struct.TYPE_26__*, i32*, i32*) #2

declare dso_local i32 @check_exclusion_or_unique_constraint(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32*, i32*, %struct.TYPE_26__*, i32, i32, i32, i32*) #2

declare dso_local i32 @elog(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
