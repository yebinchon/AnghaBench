; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistfillbuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistfillbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"failed to add item to GiST index page, item %d out of %d, size %d bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gistfillbuffer(i32 %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @InvalidOffsetNumber, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @PageIsEmpty(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @FirstOffsetNumber, align 8
  br label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @PageGetMaxOffsetNumber(i32 %23)
  %25 = call i64 @OffsetNumberNext(i32 %24)
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i64 [ %21, %20 ], [ %25, %22 ]
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %26, %4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i64*, i64** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @IndexTupleSize(i64 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i64*, i64** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @PageAddItem(i32 %40, i32 %46, i64 %47, i64 %48, i32 0, i32 0)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @InvalidOffsetNumber, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %33
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %53, %33
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %29

66:                                               ; preds = %29
  ret void
}

declare dso_local i64 @PageIsEmpty(i32) #1

declare dso_local i64 @OffsetNumberNext(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @IndexTupleSize(i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
