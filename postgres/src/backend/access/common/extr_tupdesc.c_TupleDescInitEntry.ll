; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupdesc.c_TupleDescInitEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupdesc.c_TupleDescInitEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TupleDescInitEntry(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = call i32 @PointerIsValid(%struct.TYPE_8__* %16)
  %18 = call i32 @AssertArg(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @AssertArg(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @AssertArg(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_8__* %30, i32 %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %15, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 20
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %6
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 19
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @NameStr(i32 %41)
  %43 = load i32, i32* @NAMEDATALEN, align 4
  %44 = call i32 @MemSet(i8* %42, i32 0, i32 %43)
  br label %58

45:                                               ; preds = %6
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 19
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @NameStr(i32 %49)
  %51 = icmp ne i8* %46, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 19
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @namestrcpy(i32* %54, i8* %55)
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 18
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  store i32 0, i32* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  store i32 0, i32* %75, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 7
  store i8 0, i8* %79, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 8
  store i8 0, i8* %81, align 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 9
  store i32 0, i32* %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 10
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 17
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @TYPEOID, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ObjectIdGetDatum(i32 %89)
  %91 = call i32 @SearchSysCache1(i32 %88, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @HeapTupleIsValid(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %58
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %58
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @GETSTRUCT(i32 %100)
  %102 = inttoptr i64 %101 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %14, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 16
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 15
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 14
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 13
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 12
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @ReleaseSysCache(i32 %131)
  ret void
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @PointerIsValid(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
