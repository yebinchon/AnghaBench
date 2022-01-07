; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__reconnectToDB.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__reconnectToDB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\\connect -\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*)* @_reconnectToDB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_reconnectToDB(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call i64 @RestoringToDB(%struct.TYPE_12__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @ReconnectToServer(%struct.TYPE_12__* %10, i8* %11, i32* null)
  br label %29

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %5)
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @appendPsqlMetaConnect(%struct.TYPE_11__* %5, i8* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @ahprintf(%struct.TYPE_12__* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %5)
  br label %28

25:                                               ; preds = %13
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call i32 @ahprintf(%struct.TYPE_12__* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28, %9
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @free(i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free(i32* %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @free(i32* %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = call i32 @_doSetFixedOutputState(%struct.TYPE_12__* %66)
  ret void
}

declare dso_local i64 @RestoringToDB(%struct.TYPE_12__*) #1

declare dso_local i32 @ReconnectToServer(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @appendPsqlMetaConnect(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ahprintf(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @_doSetFixedOutputState(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
