; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_relmap_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_relmap_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@XLOG_RELMAP_UPDATE = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"relmap_redo: wrong size %u in relmap update record\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"relmap_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @relmap_redo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @XLogRecGetInfo(i32* %7)
  %9 = load i32, i32* @XLR_INFO_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @XLogRecHasAnyBlockRefs(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @XLOG_RELMAP_UPDATE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @XLogRecGetData(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 4
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32, i32* @PANIC, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %21
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %5, i32 %39, i32 4)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @GetDatabasePath(i64 %43, i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @InvalidOid, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @write_relmap_file(i32 %53, i32* %5, i32 0, i32 1, i32 0, i64 %56, i32 %59, i8* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @pfree(i8* %62)
  br label %68

64:                                               ; preds = %1
  %65 = load i32, i32* @PANIC, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @elog(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %36
  ret void
}

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecHasAnyBlockRefs(i32*) #1

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @GetDatabasePath(i64, i32) #1

declare dso_local i32 @write_relmap_file(i32, i32*, i32, i32, i32, i64, i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
