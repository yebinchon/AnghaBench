; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_format_aggregate_signature.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_format_aggregate_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"(*)\00", align 1
@zeroAsOpaque = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i32*, i32)* @format_aggregate_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_aggregate_signature(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %7)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @fmtId(i8* %18)
  %20 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %7, i8* %19)
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %7, i8* %26)
  br label %28

28:                                               ; preds = %21, %13
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %70

36:                                               ; preds = %28
  %37 = call i32 @appendPQExpBufferChar(%struct.TYPE_12__* %7, i8 signext 40)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %65, %36
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @zeroAsOpaque, align 4
  %56 = call i8* @getFormattedTypeName(i32* %46, i32 %54, i32 %55)
  store i8* %56, i8** %9, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %38

68:                                               ; preds = %38
  %69 = call i32 @appendPQExpBufferChar(%struct.TYPE_12__* %7, i8 signext 41)
  br label %70

70:                                               ; preds = %68, %34
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  ret i8* %72
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i8* @getFormattedTypeName(i32*, i32, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
