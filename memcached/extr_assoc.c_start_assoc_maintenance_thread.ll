; ModuleID = '/home/carl/AnghaBench/memcached/extr_assoc.c_start_assoc_maintenance_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_assoc.c_start_assoc_maintenance_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"MEMCACHED_HASH_BULK_MOVE\00", align 1
@hash_bulk_move = common dso_local global i64 0, align 8
@DEFAULT_HASH_BULK_MOVE = common dso_local global i64 0, align 8
@maintenance_tid = common dso_local global i32 0, align 4
@assoc_maintenance_thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't create thread: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_assoc_maintenance_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @atoi(i8* %8)
  store i64 %9, i64* @hash_bulk_move, align 8
  %10 = load i64, i64* @hash_bulk_move, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i64, i64* @DEFAULT_HASH_BULK_MOVE, align 8
  store i64 %13, i64* @hash_bulk_move, align 8
  br label %14

14:                                               ; preds = %12, %7
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, i32* @assoc_maintenance_thread, align 4
  %17 = call i32 @pthread_create(i32* @maintenance_tid, i32* null, i32 %16, i32* null)
  store i32 %17, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %1, align 4
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
