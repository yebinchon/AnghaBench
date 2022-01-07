; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecBuildSlotPartitionKeyDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecBuildSlotPartitionKeyDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@InvalidOid = common dso_local global i32 0, align 4
@RLS_ENABLED = common dso_local global i64 0, align 8
@ACL_SELECT = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@InvalidAttrNumber = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"(%s) = (\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i32*, i32)* @ExecBuildSlotPartitionKeyDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ExecBuildSlotPartitionKeyDescription(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @RelationGetPartitionKey(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @get_partition_natts(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @RelationGetRelid(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @InvalidOid, align 4
  %29 = call i64 @check_enable_rls(i32 %27, i32 %28, i32 1)
  %30 = load i64, i64* @RLS_ENABLED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %128

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 (...) @GetUserId()
  %36 = load i32, i32* @ACL_SELECT, align 4
  %37 = call i64 @pg_class_aclcheck(i32 %34, i32 %35, i32 %36)
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @ACLCHECK_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @get_partition_col_attnum(i32 %47, i32 %48)
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @InvalidAttrNumber, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  %55 = load i64, i64* %16, align 8
  %56 = call i32 (...) @GetUserId()
  %57 = load i32, i32* @ACL_SELECT, align 4
  %58 = call i64 @pg_attribute_aclcheck(i32 %54, i64 %55, i32 %56, i32 %57)
  %59 = load i64, i64* @ACLCHECK_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53, %46
  store i8* null, i8** %5, align 8
  br label %128

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %42

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %33
  %68 = call i32 @initStringInfo(%struct.TYPE_7__* %10)
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @pg_get_partkeydef_columns(i32 %69, i32 1)
  %71 = call i32 @appendStringInfo(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %121, %67
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %124

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %96

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @get_partition_col_typid(i32 %85, i32 %86)
  %88 = call i32 @getTypeOutputInfo(i32 %87, i32* %19, i32* %20)
  %89 = load i32, i32* %19, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @OidOutputFunctionCall(i32 %89, i32 %94)
  store i8* %95, i8** %17, align 8
  br label %96

96:                                               ; preds = %84, %83
  %97 = load i32, i32* %13, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @appendStringInfoString(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i8*, i8** %17, align 8
  %103 = call i32 @strlen(i8* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** %17, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @appendBinaryStringInfo(%struct.TYPE_7__* %10, i8* %108, i32 %109)
  br label %120

111:                                              ; preds = %101
  %112 = load i8*, i8** %17, align 8
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @pg_mbcliplen(i8* %112, i32 %113, i32 %114)
  store i32 %115, i32* %18, align 4
  %116 = load i8*, i8** %17, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @appendBinaryStringInfo(%struct.TYPE_7__* %10, i8* %116, i32 %117)
  %119 = call i32 @appendStringInfoString(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %111, %107
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %72

124:                                              ; preds = %72
  %125 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %10, i8 signext 41)
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %5, align 8
  br label %128

128:                                              ; preds = %124, %61, %32
  %129 = load i8*, i8** %5, align 8
  ret i8* %129
}

declare dso_local i32 @RelationGetPartitionKey(i32) #1

declare dso_local i32 @get_partition_natts(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @check_enable_rls(i32, i32, i32) #1

declare dso_local i64 @pg_class_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @get_partition_col_attnum(i32, i32) #1

declare dso_local i64 @pg_attribute_aclcheck(i32, i64, i32, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_7__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @pg_get_partkeydef_columns(i32, i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i32 @get_partition_col_typid(i32, i32) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @pg_mbcliplen(i8*, i32, i32) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_7__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
