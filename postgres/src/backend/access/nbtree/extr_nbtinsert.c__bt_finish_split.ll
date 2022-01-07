; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_finish_split.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_finish_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BT_WRITE = common dso_local global i32 0, align 4
@BTREE_METAPAGE = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"finishing incomplete split of %u/%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_finish_split(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @BufferGetPage(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @PageGetSpecialPointer(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = call i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_7__* %22)
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BT_WRITE, align 4
  %30 = call i32 @_bt_getbuf(i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @BufferGetPage(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @PageGetSpecialPointer(i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %11, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BTREE_METAPAGE, align 4
  %41 = load i32, i32* @BT_WRITE, align 4
  %42 = call i32 @_bt_getbuf(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @BufferGetPage(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call %struct.TYPE_8__* @BTPageGetMeta(i32 %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %16, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BufferGetBlockNumber(i32 %50)
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @_bt_relbuf(i32 %54, i32 %55)
  br label %58

57:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = call i64 @P_LEFTMOST(%struct.TYPE_7__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = call i64 @P_RIGHTMOST(%struct.TYPE_7__* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @DEBUG1, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @BufferGetBlockNumber(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @BufferGetBlockNumber(i32 %72)
  %74 = call i32 @elog(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @_bt_insert_parent(i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_7__*) #1

declare dso_local i32 @_bt_getbuf(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @BTPageGetMeta(i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i64 @P_LEFTMOST(%struct.TYPE_7__*) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @_bt_insert_parent(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
