; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_stepright.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_stepright.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@BT_WRITE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fell off the end of index \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i32)* @_bt_stepright to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_stepright(i32 %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BufferGetPage(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @PageGetSpecialPointer(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load i32, i32* @InvalidBuffer, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %56, %36, %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @BT_WRITE, align 4
  %27 = call i32 @_bt_relandgetbuf(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @BufferGetPage(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @PageGetSpecialPointer(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_7__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @_bt_finish_split(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @InvalidBuffer, align 4
  store i32 %41, i32* %9, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = call i32 @P_IGNORE(%struct.TYPE_7__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %60

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = call i64 @P_RIGHTMOST(%struct.TYPE_7__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @RelationGetRelationName(i32 %53)
  %55 = call i32 @elog(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  br label %22

60:                                               ; preds = %46
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @_bt_relbuf(i32 %61, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @_bt_relandgetbuf(i32, i32, i32, i32) #1

declare dso_local i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_7__*) #1

declare dso_local i32 @_bt_finish_split(i32, i32, i32) #1

declare dso_local i32 @P_IGNORE(%struct.TYPE_7__*) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
