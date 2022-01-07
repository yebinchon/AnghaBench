; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupdesc.c_TupleDescInitBuiltinEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_tupdesc.c_TupleDescInitBuiltinEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8*, i64, i32, i32, i64 }

@DEFAULT_COLLATION_OID = common dso_local global i8* null, align 8
@InvalidOid = common dso_local global i8* null, align 8
@FLOAT8PASSBYVAL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unsupported type %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TupleDescInitBuiltinEntry(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = call i32 @PointerIsValid(%struct.TYPE_7__* %14)
  %16 = call i32 @AssertArg(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @AssertArg(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @AssertArg(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %28, i32 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %13, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 20
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 19
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @namestrcpy(i32* %39, i8* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 18
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 7
  store i8 0, i8* %62, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 8
  store i8 0, i8* %64, align 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 9
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 10
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 17
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %124 [
    i32 128, label %75
    i32 129, label %75
    i32 132, label %87
    i32 131, label %99
    i32 130, label %111
  ]

75:                                               ; preds = %6, %6
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 12
  store i32 -1, i32* %77, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 13
  store i32 0, i32* %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 14
  store i8 105, i8* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 15
  store i8 120, i8* %83, align 1
  %84 = load i8*, i8** @DEFAULT_COLLATION_OID, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 16
  store i8* %84, i8** %86, align 8
  br label %128

87:                                               ; preds = %6
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 12
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 13
  store i32 1, i32* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 14
  store i8 99, i8* %93, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 15
  store i8 112, i8* %95, align 1
  %96 = load i8*, i8** @InvalidOid, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 16
  store i8* %96, i8** %98, align 8
  br label %128

99:                                               ; preds = %6
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 12
  store i32 4, i32* %101, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 13
  store i32 1, i32* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 14
  store i8 105, i8* %105, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 15
  store i8 112, i8* %107, align 1
  %108 = load i8*, i8** @InvalidOid, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 16
  store i8* %108, i8** %110, align 8
  br label %128

111:                                              ; preds = %6
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 12
  store i32 8, i32* %113, align 4
  %114 = load i32, i32* @FLOAT8PASSBYVAL, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 13
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 14
  store i8 100, i8* %118, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 15
  store i8 112, i8* %120, align 1
  %121 = load i8*, i8** @InvalidOid, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 16
  store i8* %121, i8** %123, align 8
  br label %128

124:                                              ; preds = %6
  %125 = load i32, i32* @ERROR, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @elog(i32 %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %124, %111, %99, %87, %75
  ret void
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @PointerIsValid(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
