; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_dblword.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_dblword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64 }

@plpgsql_IdentifierLookup = common dso_local global i64 0, align 8
@IDENTIFIER_LOOKUP_DECLARE = common dso_local global i64 0, align 8
@plpgsql_Datums = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plpgsql_parse_dblword(i8* %0, i8* %1, %struct.TYPE_7__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @makeString(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @makeString(i8* %17)
  %19 = call i32* @list_make2(i32 %16, i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i64, i64* @plpgsql_IdentifierLookup, align 8
  %21 = load i64, i64* @IDENTIFIER_LOOKUP_DECLARE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %4
  %24 = call i32 (...) @plpgsql_ns_top()
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.TYPE_8__* @plpgsql_ns_lookup(i32 %24, i32 0, i8* %25, i8* %26, i32* null, i32* %12)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %10, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %88

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %86 [
    i32 128, label %34
    i32 129, label %51
  ]

34:                                               ; preds = %30
  %35 = load i8**, i8*** @plpgsql_Datums, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  store i32 1, i32* %5, align 4
  br label %93

51:                                               ; preds = %30
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i8**, i8*** @plpgsql_Datums, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32* @plpgsql_build_recfield(i32* %62, i8* %63)
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  br label %78

68:                                               ; preds = %51
  %69 = load i8**, i8*** @plpgsql_Datums, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %68, %54
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  store i32 1, i32* %5, align 4
  br label %93

86:                                               ; preds = %30
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %23
  br label %89

89:                                               ; preds = %88, %4
  %90 = load i32*, i32** %11, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %78, %34
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32* @list_make2(i32, i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local %struct.TYPE_8__* @plpgsql_ns_lookup(i32, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @plpgsql_ns_top(...) #1

declare dso_local i32* @plpgsql_build_recfield(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
