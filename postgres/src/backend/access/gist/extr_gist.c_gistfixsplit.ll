; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistfixsplit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistfixsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"fixing incomplete split in index \22%s\22, block %u\00", align 1
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*)* @gistfixsplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistfixsplit(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* @LOG, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @RelationGetRelationName(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GistFollowRight(i32 %26)
  %28 = call i32 @Assert(i64 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @OffsetNumberIsValid(i32 %31)
  %33 = call i32 @Assert(i64 %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %73, %2
  %38 = call %struct.TYPE_12__* @palloc(i32 8)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @BufferGetPage(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = call i32 @gistformdownlink(i32 %43, i32 %44, i32* %45, %struct.TYPE_14__* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = call i32* @lappend(i32* %54, %struct.TYPE_12__* %55)
  store i32* %56, i32** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @GistFollowRight(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %37
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.TYPE_11__* @GistPageGetOpaque(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ReadBuffer(i32 %63, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %71 = call i32 @LockBuffer(i32 %69, i32 %70)
  br label %73

72:                                               ; preds = %37
  br label %74

73:                                               ; preds = %60
  br label %37

74:                                               ; preds = %72
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @gistfinishsplit(%struct.TYPE_13__* %75, %struct.TYPE_14__* %76, i32* %77, i32* %78, i32 0)
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @GistFollowRight(i32) #1

declare dso_local i64 @OffsetNumberIsValid(i32) #1

declare dso_local %struct.TYPE_12__* @palloc(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @gistformdownlink(i32, i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local %struct.TYPE_11__* @GistPageGetOpaque(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @gistfinishsplit(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
