; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_clean.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@SizeOfHeapClean = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HEAP2_ID = common dso_local global i32 0, align 4
@XLOG_HEAP2_CLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_heap_clean(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_2__, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @RelationNeedsWAL(i32 %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* %18, align 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %13, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = call i32 (...) @XLogBeginInsert()
  %31 = bitcast %struct.TYPE_2__* %19 to i8*
  %32 = load i32, i32* @SizeOfHeapClean, align 4
  %33 = call i32 @XLogRegisterData(i8* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @REGBUF_STANDARD, align 4
  %36 = call i32 @XLogRegisterBuffer(i32 0, i32 %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %9
  %40 = load i32*, i32** %12, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = mul i64 %44, 2
  %46 = trunc i64 %45 to i32
  %47 = call i32 @XLogRegisterBufData(i32 0, i8* %41, i32 %46)
  br label %48

48:                                               ; preds = %39, %9
  %49 = load i32, i32* %15, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %14, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @XLogRegisterBufData(i32 0, i8* %53, i32 %57)
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %17, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32*, i32** %16, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @XLogRegisterBufData(i32 0, i8* %64, i32 %68)
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i32, i32* @RM_HEAP2_ID, align 4
  %72 = load i32, i32* @XLOG_HEAP2_CLEAN, align 4
  %73 = call i32 @XLogInsert(i32 %71, i32 %72)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  ret i32 %74
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
