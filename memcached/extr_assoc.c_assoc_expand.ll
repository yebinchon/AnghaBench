; ModuleID = '/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_expand.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@primary_hashtable = common dso_local global i64 0, align 8
@old_hashtable = common dso_local global i64 0, align 8
@hashpower = common dso_local global i64 0, align 8
@settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Hash table expansion starting\0A\00", align 1
@expanding = common dso_local global i32 0, align 4
@expand_bucket = common dso_local global i64 0, align 8
@stats_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @assoc_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assoc_expand() #0 {
  %1 = load i64, i64* @primary_hashtable, align 8
  store i64 %1, i64* @old_hashtable, align 8
  %2 = load i64, i64* @hashpower, align 8
  %3 = add nsw i64 %2, 1
  %4 = call i32 @hashsize(i64 %3)
  %5 = call i64 @calloc(i32 %4, i32 8)
  store i64 %5, i64* @primary_hashtable, align 8
  %6 = load i64, i64* @primary_hashtable, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i64, i64* @hashpower, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @hashpower, align 8
  store i32 1, i32* @expanding, align 4
  store i64 0, i64* @expand_bucket, align 8
  %17 = call i32 (...) @STATS_LOCK()
  %18 = load i64, i64* @hashpower, align 8
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 2), align 8
  %19 = load i64, i64* @hashpower, align 8
  %20 = call i32 @hashsize(i64 %19)
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 0), align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 1), align 4
  %27 = call i32 (...) @STATS_UNLOCK()
  br label %30

28:                                               ; preds = %0
  %29 = load i64, i64* @old_hashtable, align 8
  store i64 %29, i64* @primary_hashtable, align 8
  br label %30

30:                                               ; preds = %28, %14
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @hashsize(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
