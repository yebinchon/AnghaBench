; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReleaseBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReleaseBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad buffer ID: %d\00", align 1
@CurrentResourceOwner = common dso_local global i32 0, align 4
@LocalRefCount = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReleaseBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @BufferIsValid(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ERROR, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @elog(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @BufferIsLocal(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i32, i32* @CurrentResourceOwner, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ResourceOwnerForgetBuffer(i32 %15, i32 %16)
  %18 = load i64*, i64** @LocalRefCount, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 0, %19
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i64*, i64** @LocalRefCount, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 0, %29
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  br label %41

36:                                               ; preds = %10
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @GetBufferDescriptor(i32 %38)
  %40 = call i32 @UnpinBuffer(i32 %39, i32 1)
  br label %41

41:                                               ; preds = %36, %14
  ret void
}

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @BufferIsLocal(i32) #1

declare dso_local i32 @ResourceOwnerForgetBuffer(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @UnpinBuffer(i32, i32) #1

declare dso_local i32 @GetBufferDescriptor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
