; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_tripword.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_tripword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64 }

@plpgsql_IdentifierLookup = common dso_local global i64 0, align 8
@IDENTIFIER_LOOKUP_DECLARE = common dso_local global i64 0, align 8
@plpgsql_Datums = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plpgsql_parse_tripword(i8* %0, i8* %1, i8* %2, %struct.TYPE_7__* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @makeString(i8* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @makeString(i8* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @makeString(i8* %21)
  %23 = call i32* @list_make3(i32 %18, i32 %20, i32 %22)
  store i32* %23, i32** %13, align 8
  %24 = load i64, i64* @plpgsql_IdentifierLookup, align 8
  %25 = load i64, i64* @IDENTIFIER_LOOKUP_DECLARE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %5
  %28 = call i32 (...) @plpgsql_ns_top()
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call %struct.TYPE_8__* @plpgsql_ns_lookup(i32 %28, i32 0, i8* %29, i8* %30, i8* %31, i32* %14)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %27
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %63 [
    i32 128, label %42
  ]

42:                                               ; preds = %38
  %43 = load i64*, i64** @plpgsql_Datums, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32* @plpgsql_build_recfield(i32* %50, i8* %51)
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  store i32 1, i32* %6, align 4
  br label %70

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %35, %27
  br label %66

66:                                               ; preds = %65, %5
  %67 = load i32*, i32** %13, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %42
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32* @list_make3(i32, i32, i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local %struct.TYPE_8__* @plpgsql_ns_lookup(i32, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @plpgsql_ns_top(...) #1

declare dso_local i32* @plpgsql_build_recfield(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
