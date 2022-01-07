; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getbuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_NEW = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hash AM does not use P_NEW\00", align 1
@HASH_NOLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_getbuf(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @P_NEW, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* %5, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @ReadBuffer(i32 %17, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @HASH_NOLOCK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @LockBuffer(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @_hash_checkpage(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_hash_checkpage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
