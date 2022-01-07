; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_get_view_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_get_view_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@RELKIND_VIEW = common dso_local global i64 0, align 8
@CMD_SELECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"invalid _RETURN rule action specification\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to find _RETURN rule for view\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_view_query(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RELKIND_VIEW, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %54, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CMD_SELECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %23
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @list_length(i32 %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @linitial(i32 %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %2, align 8
  br label %60

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %15

57:                                               ; preds = %15
  %58 = load i32, i32* @ERROR, align 4
  %59 = call i32 @elog(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %60

60:                                               ; preds = %57, %47
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @linitial(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
