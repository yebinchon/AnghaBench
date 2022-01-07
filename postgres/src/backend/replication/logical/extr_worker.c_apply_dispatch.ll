; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_dispatch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"invalid logical replication message type \22%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @apply_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_dispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call signext i8 @pq_getmsgbyte(i32 %4)
  store i8 %5, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %35 [
    i32 66, label %8
    i32 67, label %11
    i32 73, label %14
    i32 85, label %17
    i32 68, label %20
    i32 84, label %23
    i32 82, label %26
    i32 89, label %29
    i32 79, label %32
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @apply_handle_begin(i32 %9)
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @apply_handle_commit(i32 %12)
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @apply_handle_insert(i32 %15)
  br label %42

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @apply_handle_update(i32 %18)
  br label %42

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @apply_handle_delete(i32 %21)
  br label %42

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @apply_handle_truncate(i32 %24)
  br label %42

26:                                               ; preds = %1
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @apply_handle_relation(i32 %27)
  br label %42

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @apply_handle_type(i32 %30)
  br label %42

32:                                               ; preds = %1
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @apply_handle_origin(i32 %33)
  br label %42

35:                                               ; preds = %1
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = load i8, i8* %3, align 1
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8 signext %39)
  %41 = call i32 @ereport(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %32, %29, %26, %23, %20, %17, %14, %11, %8
  ret void
}

declare dso_local signext i8 @pq_getmsgbyte(i32) #1

declare dso_local i32 @apply_handle_begin(i32) #1

declare dso_local i32 @apply_handle_commit(i32) #1

declare dso_local i32 @apply_handle_insert(i32) #1

declare dso_local i32 @apply_handle_update(i32) #1

declare dso_local i32 @apply_handle_delete(i32) #1

declare dso_local i32 @apply_handle_truncate(i32) #1

declare dso_local i32 @apply_handle_relation(i32) #1

declare dso_local i32 @apply_handle_type(i32) #1

declare dso_local i32 @apply_handle_origin(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
