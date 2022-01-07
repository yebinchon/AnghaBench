; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistXLogSplit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistXLogSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_5__, i32, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_GIST_ID = common dso_local global i32 0, align 4
@XLOG_GIST_PAGE_SPLIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistXLogSplit(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %14, align 8
  br label %19

19:                                               ; preds = %25, %6
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %15, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %15, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %14, align 8
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %15, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = call i32 (...) @XLogBeginInsert()
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @BufferIsValid(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @REGBUF_STANDARD, align 4
  %47 = call i32 @XLogRegisterBuffer(i32 0, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %29
  %49 = bitcast %struct.TYPE_6__* %13 to i8*
  %50 = call i32 @XLogRegisterData(i8* %49, i32 20)
  store i32 1, i32* %17, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %14, align 8
  br label %52

52:                                               ; preds = %79, %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %61 = call i32 @XLogRegisterBuffer(i32 %56, i32 %59, i32 %60)
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 @XLogRegisterBufData(i32 %62, i8* %66, i32 4)
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @XLogRegisterBufData(i32 %68, i8* %72, i32 %75)
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %55
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %14, align 8
  br label %52

83:                                               ; preds = %52
  %84 = load i32, i32* @RM_GIST_ID, align 4
  %85 = load i32, i32* @XLOG_GIST_PAGE_SPLIT, align 4
  %86 = call i32 @XLogInsert(i32 %84, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  ret i32 %87
}

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
