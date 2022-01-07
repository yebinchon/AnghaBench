; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_setup_firstcall.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_setup_firstcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [5 x i8] c"word\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ndoc\00", align 1
@INT4OID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"nentry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, %struct.TYPE_7__*)* @ts_setup_firstcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts_setup_firstcall(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = bitcast %struct.TYPE_7__* %10 to i8*
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @MemoryContextSwitchTo(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_8__** @palloc0(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store %struct.TYPE_8__** %25, %struct.TYPE_8__*** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %9, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 %41
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %42, align 8
  br label %68

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %66, %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 %51
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %9, align 8
  br label %66

65:                                               ; preds = %44
  br label %67

66:                                               ; preds = %57
  br label %44

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %35
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ule i64 %71, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  %79 = call i32 @CreateTemplateTupleDesc(i32 3)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @TEXTOID, align 4
  %82 = call i32 @TupleDescInitEntry(i32 %80, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %81, i32 -1, i32 0)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @INT4OID, align 4
  %85 = call i32 @TupleDescInitEntry(i32 %83, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 -1, i32 0)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @INT4OID, align 4
  %88 = call i32 @TupleDescInitEntry(i32 %86, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 -1, i32 0)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @BlessTupleDesc(i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @TupleDescGetAttInMetadata(i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @MemoryContextSwitchTo(i32 %97)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_8__** @palloc0(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BlessTupleDesc(i32) #1

declare dso_local i32 @TupleDescGetAttInMetadata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
