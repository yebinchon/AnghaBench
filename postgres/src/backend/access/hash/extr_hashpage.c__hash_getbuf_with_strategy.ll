; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getbuf_with_strategy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getbuf_with_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_NEW = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hash AM does not use P_NEW\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@HASH_NOLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_getbuf_with_strategy(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @P_NEW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %5
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAIN_FORKNUM, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @RBM_NORMAL, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @ReadBufferExtended(i32 %19, i32 %20, i64 %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @HASH_NOLOCK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @LockBuffer(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %18
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @_hash_checkpage(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_hash_checkpage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
