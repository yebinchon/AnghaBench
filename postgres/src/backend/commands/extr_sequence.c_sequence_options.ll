; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_sequence_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_sequence_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@SEQRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for sequence %u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@INT64_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"maxvalue\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"minvalue\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"start\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sequence_options(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32*, i32** @NIL, align 8
  store i32* %6, i32** %5, align 8
  %7 = load i32, i32* @SEQRELID, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @SearchSysCache1(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @HeapTupleIsValid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @GETSTRUCT(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @INT64_FORMAT, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @psprintf(i32 %22, i32 %25)
  %27 = call i64 @makeFloat(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @makeDefElem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %28, i32 -1)
  %30 = call i32* @lappend(i32* %21, i32 %29)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @makeInteger(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @makeDefElem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %36, i32 -1)
  %38 = call i32* @lappend(i32* %31, i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @INT64_FORMAT, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @psprintf(i32 %40, i32 %43)
  %45 = call i64 @makeFloat(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @makeDefElem(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %46, i32 -1)
  %48 = call i32* @lappend(i32* %39, i32 %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @INT64_FORMAT, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @psprintf(i32 %50, i32 %53)
  %55 = call i64 @makeFloat(i32 %54)
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @makeDefElem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %56, i32 -1)
  %58 = call i32* @lappend(i32* %49, i32 %57)
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @INT64_FORMAT, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @psprintf(i32 %60, i32 %63)
  %65 = call i64 @makeFloat(i32 %64)
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @makeDefElem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %66, i32 -1)
  %68 = call i32* @lappend(i32* %59, i32 %67)
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @INT64_FORMAT, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @psprintf(i32 %70, i32 %73)
  %75 = call i64 @makeFloat(i32 %74)
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 @makeDefElem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %76, i32 -1)
  %78 = call i32* @lappend(i32* %69, i32 %77)
  store i32* %78, i32** %5, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @ReleaseSysCache(i32 %79)
  %81 = load i32*, i32** %5, align 8
  ret i32* %81
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @makeDefElem(i8*, i32*, i32) #1

declare dso_local i64 @makeFloat(i32) #1

declare dso_local i32 @psprintf(i32, i32) #1

declare dso_local i64 @makeInteger(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
