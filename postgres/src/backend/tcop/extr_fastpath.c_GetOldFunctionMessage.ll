; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_GetOldFunctionMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_GetOldFunctionMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@EOF = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"invalid argument size %d in function call message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetOldFunctionMessage(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i64 @pq_getstring(%struct.TYPE_6__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EOF, align 4
  store i32 %11, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = bitcast i32* %4 to i8*
  %14 = call i64 @pq_getbytes(i8* %13, i32 4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @EOF, align 4
  store i32 %17, i32* %2, align 4
  br label %94

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = bitcast i32* %4 to i8*
  %21 = call i32 @appendBinaryStringInfo(%struct.TYPE_6__* %19, i8* %20, i32 4)
  %22 = bitcast i32* %4 to i8*
  %23 = call i64 @pq_getbytes(i8* %22, i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @EOF, align 4
  store i32 %26, i32* %2, align 4
  br label %94

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = bitcast i32* %4 to i8*
  %30 = call i32 @appendBinaryStringInfo(%struct.TYPE_6__* %28, i8* %29, i32 4)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pg_ntoh32(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %92, %27
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = bitcast i32* %4 to i8*
  %39 = call i64 @pq_getbytes(i8* %38, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EOF, align 4
  store i32 %42, i32* %2, align 4
  br label %94

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = bitcast i32* %4 to i8*
  %46 = call i32 @appendBinaryStringInfo(%struct.TYPE_6__* %44, i8* %45, i32 4)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pg_ntoh32(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i32, i32* @FATAL, align 4
  %53 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %43
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @enlargeStringInfo(%struct.TYPE_6__* %62, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @pq_getbytes(i8* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* @EOF, align 4
  store i32 %77, i32* %2, align 4
  br label %94

78:                                               ; preds = %61
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %78, %58
  br label %33

93:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %76, %41, %25, %16, %10
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @pq_getstring(%struct.TYPE_6__*) #1

declare dso_local i64 @pq_getbytes(i8*, i32) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @pg_ntoh32(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
