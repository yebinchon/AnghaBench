; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btbuildempty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btbuildempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i32 0, align 4
@BTREE_METAPAGE = common dso_local global i32 0, align 4
@INIT_FORKNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btbuildempty(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @BLCKSZ, align 4
  %5 = call i64 @palloc(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @P_NONE, align 4
  %8 = call i32 @_bt_initmetapage(i64 %6, i32 %7, i32 0)
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @BTREE_METAPAGE, align 4
  %11 = call i32 @PageSetChecksumInplace(i64 %9, i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i32, i32* @INIT_FORKNUM, align 4
  %16 = load i32, i32* @BTREE_METAPAGE, align 4
  %17 = load i64, i64* %3, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @smgrwrite(%struct.TYPE_8__* %14, i32 %15, i32 %16, i8* %18, i32 1)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* @INIT_FORKNUM, align 4
  %26 = load i32, i32* @BTREE_METAPAGE, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @log_newpage(i32* %24, i32 %25, i32 %26, i64 %27, i32 1)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* @INIT_FORKNUM, align 4
  %33 = call i32 @smgrimmedsync(%struct.TYPE_8__* %31, i32 %32)
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @_bt_initmetapage(i64, i32, i32) #1

declare dso_local i32 @PageSetChecksumInplace(i64, i32) #1

declare dso_local i32 @smgrwrite(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @log_newpage(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @smgrimmedsync(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
