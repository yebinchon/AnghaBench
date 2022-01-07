; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_errdetail_params.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_errdetail_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i8* }

@MessageContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s$%d = \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"parameters: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @errdetail_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @errdetail_params(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %112

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %112

18:                                               ; preds = %13
  %19 = call i32 (...) @IsAbortedTransactionBlockState()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %112, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* @MessageContext, align 4
  %29 = call i32 @MemoryContextSwitchTo(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = call i32 @initStringInfo(%struct.TYPE_9__* %3)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %100, %21
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %103

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %43
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @appendStringInfo(%struct.TYPE_9__* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %38
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @OidIsValid(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56, %38
  %63 = call i32 @appendStringInfoString(%struct.TYPE_9__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %100

64:                                               ; preds = %56
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @getTypeOutputInfo(i32 %67, i32* %7, i32* %8)
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @OidOutputFunctionCall(i32 %69, i32 %72)
  store i8* %73, i8** %9, align 8
  %74 = call i32 @appendStringInfoCharMacro(%struct.TYPE_9__* %3, i8 signext 39)
  %75 = load i8*, i8** %9, align 8
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %93, %64
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 39
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @appendStringInfoCharMacro(%struct.TYPE_9__* %3, i8 signext %87)
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @appendStringInfoCharMacro(%struct.TYPE_9__* %3, i8 signext %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  br label %76

96:                                               ; preds = %76
  %97 = call i32 @appendStringInfoCharMacro(%struct.TYPE_9__* %3, i8 signext 39)
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @pfree(i8* %98)
  br label %100

100:                                              ; preds = %96, %62
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %31

103:                                              ; preds = %31
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @errdetail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @pfree(i8* %108)
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @MemoryContextSwitchTo(i32 %110)
  br label %112

112:                                              ; preds = %103, %18, %13, %1
  ret i32 0
}

declare dso_local i32 @IsAbortedTransactionBlockState(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_9__*, i8*, i8*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @appendStringInfoCharMacro(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
