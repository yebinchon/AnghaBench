; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_reserveAllocatedDesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_reserveAllocatedDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numAllocatedDescs = common dso_local global i32 0, align 4
@maxAllocatedDescs = common dso_local global i32 0, align 4
@allocatedDescs = common dso_local global i32* null, align 8
@FD_MINFREE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@max_safe_fds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reserveAllocatedDesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserveAllocatedDesc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @numAllocatedDescs, align 4
  %5 = load i32, i32* @maxAllocatedDescs, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %52

8:                                                ; preds = %0
  %9 = load i32*, i32** @allocatedDescs, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, i32* @FD_MINFREE, align 4
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %11
  %29 = load i32*, i32** %2, align 8
  store i32* %29, i32** @allocatedDescs, align 8
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* @maxAllocatedDescs, align 4
  store i32 1, i32* %1, align 4
  br label %52

31:                                               ; preds = %8
  %32 = load i32, i32* @max_safe_fds, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @maxAllocatedDescs, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i32*, i32** @allocatedDescs, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @realloc(i32* %38, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %2, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %52

48:                                               ; preds = %37
  %49 = load i32*, i32** %2, align 8
  store i32* %49, i32** @allocatedDescs, align 8
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* @maxAllocatedDescs, align 4
  store i32 1, i32* %1, align 4
  br label %52

51:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %51, %48, %47, %28, %7
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @realloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
