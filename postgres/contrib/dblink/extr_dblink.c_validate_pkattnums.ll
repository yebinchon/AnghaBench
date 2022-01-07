; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_validate_pkattnums.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_validate_pkattnums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"number of key attributes must be > 0\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid attribute number %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32**, i32*)* @validate_pkattnums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_pkattnums(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @Min(i32 %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @ereport(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %5
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i64 @palloc(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32**, i32*** %9, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %113, %36
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %116

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %50
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = call i32 @ereport(i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %64, %60
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_9__* %77, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %91

84:                                               ; preds = %76
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %94

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %83
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %72

94:                                               ; preds = %89, %72
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = load i32**, i32*** %9, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %99, i32* %104, align 4
  br label %112

105:                                              ; preds = %94
  %106 = load i32, i32* @ERROR, align 4
  %107 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %108 = call i32 @errcode(i32 %107)
  %109 = load i32, i32* %14, align 4
  %110 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = call i32 @ereport(i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %105, %98
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %46

116:                                              ; preds = %46
  ret void
}

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
