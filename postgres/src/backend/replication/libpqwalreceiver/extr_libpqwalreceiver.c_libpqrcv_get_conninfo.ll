; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_get_conninfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_get_conninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i8*, i32*, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not parse connection string: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%s=%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"********\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*)* @libpqrcv_get_conninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @libpqrcv_get_conninfo(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %5)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call %struct.TYPE_12__* @PQconninfo(i32* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %3, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = icmp eq %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %4, align 8
  br label %28

28:                                               ; preds = %78, %26
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %81

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @strchr(i32 %36, i8 signext 68)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %39, %33
  br label %78

53:                                               ; preds = %44
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32* @strchr(i32 %56, i8 signext 42)
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %75

71:                                               ; preds = %53
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  br label %75

75:                                               ; preds = %71, %70
  %76 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %70 ], [ %74, %71 ]
  %77 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32* %67, i8* %76)
  br label %78

78:                                               ; preds = %75, %52
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 1
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %4, align 8
  br label %28

81:                                               ; preds = %28
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = call i32 @PQconninfoFree(%struct.TYPE_12__* %82)
  %84 = bitcast %struct.TYPE_13__* %5 to { i64, i32 }*
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %84, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @PQExpBufferDataBroken(i64 %86, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %96

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @pstrdup(i32 %94)
  br label %96

96:                                               ; preds = %92, %91
  %97 = phi i8* [ null, %91 ], [ %95, %92 ]
  store i8* %97, i8** %6, align 8
  %98 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %5)
  %99 = load i8*, i8** %6, align 8
  ret i8* %99
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @PQconninfo(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @PQconninfoFree(%struct.TYPE_12__*) #1

declare dso_local i64 @PQExpBufferDataBroken(i64, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
