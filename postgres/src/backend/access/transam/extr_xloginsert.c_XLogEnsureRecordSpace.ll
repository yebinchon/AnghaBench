; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogEnsureRecordSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_XLogEnsureRecordSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CritSectionCount = common dso_local global i64 0, align 8
@XLR_NORMAL_MAX_BLOCK_ID = common dso_local global i32 0, align 4
@XLR_NORMAL_RDATAS = common dso_local global i32 0, align 4
@XLR_MAX_BLOCK_ID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"maximum number of WAL record block references exceeded\00", align 1
@max_registered_buffers = common dso_local global i32 0, align 4
@registered_buffers = common dso_local global i32* null, align 8
@max_rdatas = common dso_local global i32 0, align 4
@rdatas = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XLogEnsureRecordSpace(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @CritSectionCount, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @XLR_NORMAL_MAX_BLOCK_ID, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @XLR_NORMAL_MAX_BLOCK_ID, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @XLR_NORMAL_RDATAS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @XLR_NORMAL_RDATAS, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @XLR_MAX_BLOCK_ID, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @max_registered_buffers, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load i32*, i32** @registered_buffers, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @repalloc(i32* %35, i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** @registered_buffers, align 8
  %42 = load i32*, i32** @registered_buffers, align 8
  %43 = load i32, i32* @max_registered_buffers, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @max_registered_buffers, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @MemSet(i32* %45, i32 0, i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* @max_registered_buffers, align 4
  br label %54

54:                                               ; preds = %34, %28
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @max_rdatas, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32*, i32** @rdatas, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i64 @repalloc(i32* %59, i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** @rdatas, align 8
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* @max_rdatas, align 4
  br label %67

67:                                               ; preds = %58, %54
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @MemSet(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
