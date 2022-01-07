; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_word.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@plpgsql_IdentifierLookup = common dso_local global i64 0, align 8
@IDENTIFIER_LOOKUP_NORMAL = common dso_local global i64 0, align 8
@plpgsql_Datums = common dso_local global i32* null, align 8
@NIL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unrecognized plpgsql itemtype: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plpgsql_parse_word(i8* %0, i8* %1, i32 %2, %struct.TYPE_8__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %5
  %16 = load i64, i64* @plpgsql_IdentifierLookup, align 8
  %17 = load i64, i64* @IDENTIFIER_LOOKUP_NORMAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = call i32 (...) @plpgsql_ns_top()
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.TYPE_9__* @plpgsql_ns_lookup(i32 %20, i32 0, i8* %21, i32* null, i32* null, i32* null)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %12, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %52 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %25, %25
  %30 = load i32*, i32** @plpgsql_Datums, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 34
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @NIL, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  store i32 1, i32* %6, align 4
  br label %72

52:                                               ; preds = %25
  %53 = load i32, i32* @ERROR, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %19
  br label %60

60:                                               ; preds = %59, %15, %5
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 34
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %60, %29
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_9__* @plpgsql_ns_lookup(i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @plpgsql_ns_top(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
