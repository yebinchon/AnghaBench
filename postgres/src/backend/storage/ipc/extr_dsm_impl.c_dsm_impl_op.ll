; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm_impl.c_dsm_impl_op.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm_impl.c_dsm_impl_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSM_OP_CREATE = common dso_local global i64 0, align 8
@DSM_OP_ATTACH = common dso_local global i64 0, align 8
@dynamic_shared_memory_type = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unexpected dynamic shared memory type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsm_impl_op(i64 %0, i32 %1, i64 %2, i8** %3, i8** %4, i64* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @DSM_OP_CREATE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %18, %7
  %22 = phi i1 [ true, %7 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @DSM_OP_CREATE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @DSM_OP_ATTACH, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %28, %21
  %33 = load i8**, i8*** %12, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64*, i64** %13, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br label %42

42:                                               ; preds = %40, %28
  %43 = phi i1 [ true, %28 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* @dynamic_shared_memory_type, align 4
  switch i32 %46, label %47 [
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @dynamic_shared_memory_type, align 4
  %50 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49)
  ret i32 0
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
