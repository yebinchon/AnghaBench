; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spginsert.c_spgbuildempty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spginsert.c_spgbuildempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@SPGIST_METAPAGE_BLKNO = common dso_local global i32 0, align 4
@INIT_FORKNUM = common dso_local global i32 0, align 4
@SPGIST_LEAF = common dso_local global i32 0, align 4
@SPGIST_ROOT_BLKNO = common dso_local global i32 0, align 4
@SPGIST_NULLS = common dso_local global i32 0, align 4
@SPGIST_NULL_BLKNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spgbuildempty(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @BLCKSZ, align 4
  %5 = call i64 @palloc(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @SpGistInitMetapage(i64 %6)
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @SPGIST_METAPAGE_BLKNO, align 4
  %10 = call i32 @PageSetChecksumInplace(i64 %8, i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load i32, i32* @INIT_FORKNUM, align 4
  %15 = load i32, i32* @SPGIST_METAPAGE_BLKNO, align 4
  %16 = load i64, i64* %3, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @smgrwrite(%struct.TYPE_8__* %13, i32 %14, i32 %15, i8* %17, i32 1)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* @INIT_FORKNUM, align 4
  %25 = load i32, i32* @SPGIST_METAPAGE_BLKNO, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @log_newpage(i32* %23, i32 %24, i32 %25, i64 %26, i32 1)
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @SPGIST_LEAF, align 4
  %30 = call i32 @SpGistInitPage(i64 %28, i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @SPGIST_ROOT_BLKNO, align 4
  %33 = call i32 @PageSetChecksumInplace(i64 %31, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* @INIT_FORKNUM, align 4
  %38 = load i32, i32* @SPGIST_ROOT_BLKNO, align 4
  %39 = load i64, i64* %3, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @smgrwrite(%struct.TYPE_8__* %36, i32 %37, i32 %38, i8* %40, i32 1)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* @INIT_FORKNUM, align 4
  %48 = load i32, i32* @SPGIST_ROOT_BLKNO, align 4
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @log_newpage(i32* %46, i32 %47, i32 %48, i64 %49, i32 1)
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* @SPGIST_LEAF, align 4
  %53 = load i32, i32* @SPGIST_NULLS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @SpGistInitPage(i64 %51, i32 %54)
  %56 = load i64, i64* %3, align 8
  %57 = load i32, i32* @SPGIST_NULL_BLKNO, align 4
  %58 = call i32 @PageSetChecksumInplace(i64 %56, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* @INIT_FORKNUM, align 4
  %63 = load i32, i32* @SPGIST_NULL_BLKNO, align 4
  %64 = load i64, i64* %3, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @smgrwrite(%struct.TYPE_8__* %61, i32 %62, i32 %63, i8* %65, i32 1)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* @INIT_FORKNUM, align 4
  %73 = load i32, i32* @SPGIST_NULL_BLKNO, align 4
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @log_newpage(i32* %71, i32 %72, i32 %73, i64 %74, i32 1)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* @INIT_FORKNUM, align 4
  %80 = call i32 @smgrimmedsync(%struct.TYPE_8__* %78, i32 %79)
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @SpGistInitMetapage(i64) #1

declare dso_local i32 @PageSetChecksumInplace(i64, i32) #1

declare dso_local i32 @smgrwrite(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @log_newpage(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @SpGistInitPage(i64, i32) #1

declare dso_local i32 @smgrimmedsync(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
