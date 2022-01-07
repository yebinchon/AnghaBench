; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_PerformCheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_PerformCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@RI_MAX_NUMKEYS = common dso_local global i32 0, align 4
@RI_PLAN_LAST_ON_PK = common dso_local global i64 0, align 8
@RI_PLAN_CHECK_LOOKUPPK = common dso_local global i64 0, align 8
@InvalidSnapshot = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SECURITY_LOCAL_USERID_CHANGE = common dso_local global i32 0, align 4
@SECURITY_NOFORCE_RLS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SPI_execute_snapshot returned %s\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"referential integrity query on \22%s\22 from constraint \22%s\22 on \22%s\22 gave unexpected result\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"This is most likely due to a rule having rewritten the query.\00", align 1
@RI_PLAN_CHECK_LOOKUPPK_FROM_PK = common dso_local global i64 0, align 8
@SPI_processed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32, i32*, i32*, i32, i32)* @ri_PerformCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ri_PerformCheck(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %31 = load i32, i32* @RI_MAX_NUMKEYS, align 4
  %32 = mul nsw i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %28, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %29, align 8
  %36 = load i32, i32* @RI_MAX_NUMKEYS, align 4
  %37 = mul nsw i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %30, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RI_PLAN_LAST_ON_PK, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %9
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %19, align 4
  br label %49

47:                                               ; preds = %9
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %19, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RI_PLAN_CHECK_LOOKUPPK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i32*, i32** %16, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load i32, i32* %20, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @ri_ExtractValues(i32 %63, i32* %64, %struct.TYPE_9__* %65, i32 %66, i32* %35, i8* %39)
  %68 = load i32*, i32** %15, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load i32, i32* %20, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = load i32, i32* %21, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %35, i64 %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %39, i64 %83
  %85 = call i32 @ri_ExtractValues(i32 %71, i32* %72, %struct.TYPE_9__* %73, i32 %74, i32* %79, i8* %84)
  br label %86

86:                                               ; preds = %70, %62
  br label %93

87:                                               ; preds = %59
  %88 = load i32, i32* %20, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %91 = load i32, i32* %21, align 4
  %92 = call i32 @ri_ExtractValues(i32 %88, i32* %89, %struct.TYPE_9__* %90, i32 %91, i32* %35, i8* %39)
  br label %93

93:                                               ; preds = %87, %86
  %94 = call i64 (...) @IsolationUsesXactSnapshot()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call i32 (...) @CommandCounterIncrement()
  %101 = call i32 (...) @GetLatestSnapshot()
  store i32 %101, i32* %22, align 4
  %102 = call i32 (...) @GetTransactionSnapshot()
  store i32 %102, i32* %23, align 4
  br label %106

103:                                              ; preds = %96, %93
  %104 = load i32, i32* @InvalidSnapshot, align 4
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* @InvalidSnapshot, align 4
  store i32 %105, i32* %23, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @SPI_OK_SELECT, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  store i32 %111, i32* %24, align 4
  %112 = call i32 @GetUserIdAndSecContext(i32* %26, i32* %27)
  %113 = load i32, i32* %19, align 4
  %114 = call %struct.TYPE_10__* @RelationGetForm(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* @SECURITY_LOCAL_USERID_CHANGE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SECURITY_NOFORCE_RLS, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @SetUserIdAndSecContext(i32 %116, i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %24, align 4
  %127 = call i32 @SPI_execute_snapshot(i32 %123, i32* %35, i8* %39, i32 %124, i32 %125, i32 0, i32 0, i32 %126)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %27, align 4
  %130 = call i32 @SetUserIdAndSecContext(i32 %128, i32 %129)
  %131 = load i32, i32* %25, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %106
  %134 = load i32, i32* @ERROR, align 4
  %135 = load i32, i32* %25, align 4
  %136 = call i32 @SPI_result_code_string(i32 %135)
  %137 = call i32 @elog(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %106
  %139 = load i32, i32* %18, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load i32, i32* %25, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load i32, i32* @ERROR, align 4
  %147 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %148 = call i32 @errcode(i32 %147)
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @RelationGetRelationName(i32 %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @NameStr(i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @RelationGetRelationName(i32 %155)
  %157 = call i32 @errmsg(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %154, i32 %156)
  %158 = call i32 @errhint(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %159 = call i32 @ereport(i32 %146, i32 %158)
  br label %160

160:                                              ; preds = %145, %141, %138
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @RI_PLAN_CHECK_LOOKUPPK_FROM_PK, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %197

166:                                              ; preds = %160
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* @SPI_OK_SELECT, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %166
  %171 = load i64, i64* @SPI_processed, align 8
  %172 = icmp eq i64 %171, 0
  %173 = zext i1 %172 to i32
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @RI_PLAN_CHECK_LOOKUPPK, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = icmp eq i32 %173, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %170
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32*, i32** %16, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32*, i32** %16, align 8
  br label %191

189:                                              ; preds = %181
  %190 = load i32*, i32** %15, align 8
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32* [ %188, %187 ], [ %190, %189 ]
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @ri_ReportViolation(%struct.TYPE_9__* %182, i32 %183, i32 %184, i32* %192, i32* null, i64 %195, i32 0)
  br label %197

197:                                              ; preds = %191, %170, %166, %160
  %198 = load i64, i64* @SPI_processed, align 8
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i32
  %201 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %201)
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ri_ExtractValues(i32, i32*, %struct.TYPE_9__*, i32, i32*, i8*) #2

declare dso_local i64 @IsolationUsesXactSnapshot(...) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @GetLatestSnapshot(...) #2

declare dso_local i32 @GetTransactionSnapshot(...) #2

declare dso_local i32 @GetUserIdAndSecContext(i32*, i32*) #2

declare dso_local i32 @SetUserIdAndSecContext(i32, i32) #2

declare dso_local %struct.TYPE_10__* @RelationGetForm(i32) #2

declare dso_local i32 @SPI_execute_snapshot(i32, i32*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i32 @SPI_result_code_string(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #2

declare dso_local i32 @RelationGetRelationName(i32) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @ri_ReportViolation(%struct.TYPE_9__*, i32, i32, i32*, i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
