; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_wordtype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_wordtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32* }

@plpgsql_Datums = common dso_local global i64* null, align 8
@InvalidOid = common dso_local global i64 0, align 8
@plpgsql_curr_compile = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plpgsql_parse_wordtype(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %3, align 8
  %9 = call i32 (...) @plpgsql_ns_top()
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.TYPE_7__* @plpgsql_ns_lookup(i32 %9, i32 0, i8* %10, i32* null, i32* null, i32* null)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %28 [
    i32 128, label %18
  ]

18:                                               ; preds = %14
  %19 = load i64*, i64** @plpgsql_Datums, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %2, align 8
  br label %65

28:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %65

29:                                               ; preds = %1
  %30 = load i8*, i8** %3, align 8
  %31 = call i32* @makeTypeName(i8* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @LookupTypeName(i32* null, i32* %32, i32* null, i32 0)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @GETSTRUCT(i64 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @InvalidOid, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %36
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ReleaseSysCache(i64 %52)
  store i32* null, i32** %2, align 8
  br label %65

54:                                               ; preds = %45
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @plpgsql_curr_compile, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @build_datatype(i64 %55, i32 -1, i32 %58, i32* %59)
  store i32* %60, i32** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @ReleaseSysCache(i64 %61)
  %63 = load i32*, i32** %4, align 8
  store i32* %63, i32** %2, align 8
  br label %65

64:                                               ; preds = %29
  store i32* null, i32** %2, align 8
  br label %65

65:                                               ; preds = %64, %54, %51, %28, %18
  %66 = load i32*, i32** %2, align 8
  ret i32* %66
}

declare dso_local %struct.TYPE_7__* @plpgsql_ns_lookup(i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @plpgsql_ns_top(...) #1

declare dso_local i32* @makeTypeName(i8*) #1

declare dso_local i64 @LookupTypeName(i32*, i32*, i32*, i32) #1

declare dso_local i32 @GETSTRUCT(i64) #1

declare dso_local i32 @ReleaseSysCache(i64) #1

declare dso_local i32* @build_datatype(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
