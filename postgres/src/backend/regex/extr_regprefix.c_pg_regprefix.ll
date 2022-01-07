; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regprefix.c_pg_regprefix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regprefix.c_pg_regprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32 }
%struct.guts = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cnfa }
%struct.cnfa = type { i32 }

@REG_INVARG = common dso_local global i32 0, align 4
@REMAGIC = common dso_local global i64 0, align 8
@REG_MIXED = common dso_local global i32 0, align 4
@REG_UIMPOSSIBLE = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@REG_PREFIX = common dso_local global i32 0, align 4
@REG_EXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_regprefix(%struct.TYPE_5__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.guts*, align 8
  %9 = alloca %struct.cnfa*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = icmp eq i32** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64*, i64** %7, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @REG_INVARG, align 4
  store i32 %17, i32* %4, align 4
  br label %113

18:                                               ; preds = %13
  %19 = load i32**, i32*** %6, align 8
  store i32* null, i32** %19, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REMAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %18
  %30 = load i32, i32* @REG_INVARG, align 4
  store i32 %30, i32* %4, align 4
  br label %113

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @REG_MIXED, align 4
  store i32 %38, i32* %4, align 4
  br label %113

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pg_set_regex_collation(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.guts*
  store %struct.guts* %47, %struct.guts** %8, align 8
  %48 = load %struct.guts*, %struct.guts** %8, align 8
  %49 = getelementptr inbounds %struct.guts, %struct.guts* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @REG_UIMPOSSIBLE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %55, i32* %4, align 4
  br label %113

56:                                               ; preds = %39
  %57 = load %struct.guts*, %struct.guts** %8, align 8
  %58 = getelementptr inbounds %struct.guts, %struct.guts* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.guts*, %struct.guts** %8, align 8
  %64 = getelementptr inbounds %struct.guts, %struct.guts* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store %struct.cnfa* %66, %struct.cnfa** %9, align 8
  %67 = load %struct.cnfa*, %struct.cnfa** %9, align 8
  %68 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i64 @MALLOC(i32 %72)
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32**, i32*** %6, align 8
  store i32* %74, i32** %75, align 8
  %76 = load i32**, i32*** %6, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %56
  %80 = load i32, i32* @REG_ESPACE, align 4
  store i32 %80, i32* %4, align 4
  br label %113

81:                                               ; preds = %56
  %82 = load %struct.cnfa*, %struct.cnfa** %9, align 8
  %83 = load %struct.guts*, %struct.guts** %8, align 8
  %84 = getelementptr inbounds %struct.guts, %struct.guts* %83, i32 0, i32 1
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = call i32 @findprefix(%struct.cnfa* %82, i32* %84, i32* %86, i64* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cnfa*, %struct.cnfa** %9, align 8
  %92 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ule i64 %90, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @REG_PREFIX, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %81
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @REG_EXACT, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32**, i32*** %6, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @FREE(i32* %107)
  %109 = load i32**, i32*** %6, align 8
  store i32* null, i32** %109, align 8
  %110 = load i64*, i64** %7, align 8
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %101, %81
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %79, %54, %37, %29, %16
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @pg_set_regex_collation(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @findprefix(%struct.cnfa*, i32*, i32*, i64*) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
