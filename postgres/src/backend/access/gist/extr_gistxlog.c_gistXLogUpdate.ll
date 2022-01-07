; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistXLogUpdate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistXLogUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_GIST_ID = common dso_local global i32 0, align 4
@XLOG_GIST_PAGE_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistXLogUpdate(i32 %0, i32* %1, i32 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = call i32 (...) @XLogBeginInsert()
  %21 = bitcast %struct.TYPE_2__* %13 to i8*
  %22 = call i32 @XLogRegisterData(i8* %21, i32 8)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @REGBUF_STANDARD, align 4
  %25 = call i32 @XLogRegisterBuffer(i32 0, i32 %23, i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @XLogRegisterBufData(i32 0, i8* %27, i32 %31)
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %51, %6
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i64*, i64** %10, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64*, i64** %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @IndexTupleSize(i64 %48)
  %50 = call i32 @XLogRegisterBufData(i32 0, i8* %43, i32 %49)
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @BufferIsValid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @REGBUF_STANDARD, align 4
  %61 = call i32 @XLogRegisterBuffer(i32 1, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @RM_GIST_ID, align 4
  %64 = load i32, i32* @XLOG_GIST_PAGE_UPDATE, align 4
  %65 = call i32 @XLogInsert(i32 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  ret i32 %66
}

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
