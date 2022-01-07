; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_search.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@FSM_ROOT_ADDRESS = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FSM_BOTTOM_LEVEL = common dso_local global i64 0, align 8
@FSM_ROOT_LEVEL = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fsm_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsm_search(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_10__* @FSM_ROOT_ADDRESS to i8*), i64 8, i1 false)
  br label %16

16:                                               ; preds = %95, %2
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @fsm_readbuf(i32 %17, i64 %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @BufferIsValid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %27 = call i32 @LockBuffer(i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FSM_BOTTOM_LEVEL, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @fsm_search_avail(i32 %28, i32 %29, i32 %34, i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @BufferGetPage(i32 %39)
  %41 = call i32 @fsm_get_max_avail(i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %24
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @UnlockReleaseBuffer(i32 %43)
  br label %46

45:                                               ; preds = %16
  store i32 -1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FSM_BOTTOM_LEVEL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @fsm_get_heap_blk(i64 %57, i32 %55)
  store i32 %58, i32* %3, align 4
  br label %96

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @fsm_get_child(i64 %62, i32 %60)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = bitcast %struct.TYPE_10__* %7 to i8*
  %66 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  br label %95

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FSM_ROOT_LEVEL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @InvalidBlockNumber, align 4
  store i32 %73, i32* %3, align 4
  br label %96

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @fsm_get_parent(i64 %76, i32* %12)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = bitcast %struct.TYPE_10__* %13 to i8*
  %80 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @fsm_set_and_search(i32 %81, i64 %85, i32 %82, i32 %83, i32 0)
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = icmp sgt i32 %87, 10000
  br i1 %89, label %90, label %92

90:                                               ; preds = %74
  %91 = load i32, i32* @InvalidBlockNumber, align 4
  store i32 %91, i32* %3, align 4
  br label %96

92:                                               ; preds = %74
  %93 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 bitcast (%struct.TYPE_10__* @FSM_ROOT_ADDRESS to i8*), i64 8, i1 false)
  br label %94

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %59
  br label %16

96:                                               ; preds = %90, %72, %54
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fsm_readbuf(i32, i64, i32) #2

declare dso_local i64 @BufferIsValid(i32) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i32 @fsm_search_avail(i32, i32, i32, i32) #2

declare dso_local i32 @fsm_get_max_avail(i32) #2

declare dso_local i32 @BufferGetPage(i32) #2

declare dso_local i32 @UnlockReleaseBuffer(i32) #2

declare dso_local i32 @fsm_get_heap_blk(i64, i32) #2

declare dso_local i64 @fsm_get_child(i64, i32) #2

declare dso_local i64 @fsm_get_parent(i64, i32*) #2

declare dso_local i32 @fsm_set_and_search(i32, i64, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
