; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadBinaryAttribute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadBinaryAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_BAD_COPY_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unexpected EOF in COPY data\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid field size\00", align 1
@ERRCODE_INVALID_BINARY_REPRESENTATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"incorrect binary data format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*, i32, i32, i32*)* @CopyReadBinaryAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyReadBinaryAttribute(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = call i32 @CopyGetInt32(%struct.TYPE_8__* %16, i32* %14)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %6
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** %13, align 8
  store i32 1, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @ReceiveFunctionCall(i32* %30, %struct.TYPE_9__* null, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %103

34:                                               ; preds = %25
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @resetStringInfo(%struct.TYPE_9__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @enlargeStringInfo(%struct.TYPE_9__* %48, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @CopyGetData(%struct.TYPE_8__* %51, i8* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %43
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %43
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @ReceiveFunctionCall(i32* %79, %struct.TYPE_9__* %81, i32 %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %88, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %67
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_INVALID_BINARY_REPRESENTATION, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 @ereport(i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %67
  %101 = load i32*, i32** %13, align 8
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %28
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @CopyGetInt32(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ReceiveFunctionCall(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CopyGetData(%struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
