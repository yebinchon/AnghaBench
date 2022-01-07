; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_complete_nread_binary.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_complete_nread_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }

@PROTOCOL_BINARY_CMD_APPEND = common dso_local global i64 0, align 8
@PROTOCOL_BINARY_CMD_PREPEND = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Not handling substate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @complete_nread_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_nread_binary(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = icmp ne %struct.TYPE_13__* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %59 [
    i32 130, label %16
    i32 136, label %35
    i32 134, label %38
    i32 128, label %38
    i32 129, label %41
    i32 135, label %44
    i32 133, label %47
    i32 137, label %50
    i32 132, label %53
    i32 131, label %56
  ]

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PROTOCOL_BINARY_CMD_APPEND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PROTOCOL_BINARY_CMD_PREPEND, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = call i32 @process_bin_append_prepend(%struct.TYPE_13__* %29)
  br label %34

31:                                               ; preds = %22
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = call i32 @process_bin_update(%struct.TYPE_13__* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %66

35:                                               ; preds = %1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = call i32 @complete_update_bin(%struct.TYPE_13__* %36)
  br label %66

38:                                               ; preds = %1, %1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = call i32 @process_bin_get_or_touch(%struct.TYPE_13__* %39)
  br label %66

41:                                               ; preds = %1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i32 @process_bin_stat(%struct.TYPE_13__* %42)
  br label %66

44:                                               ; preds = %1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = call i32 @process_bin_delete(%struct.TYPE_13__* %45)
  br label %66

47:                                               ; preds = %1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = call i32 @complete_incr_bin(%struct.TYPE_13__* %48)
  br label %66

50:                                               ; preds = %1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = call i32 @process_bin_flush(%struct.TYPE_13__* %51)
  br label %66

53:                                               ; preds = %1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = call i32 @process_bin_sasl_auth(%struct.TYPE_13__* %54)
  br label %66

56:                                               ; preds = %1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = call i32 @process_bin_complete_sasl_auth(%struct.TYPE_13__* %57)
  br label %66

59:                                               ; preds = %1
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = call i32 @assert(i32 0)
  br label %66

66:                                               ; preds = %59, %56, %53, %50, %47, %44, %41, %38, %35, %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @process_bin_append_prepend(%struct.TYPE_13__*) #1

declare dso_local i32 @process_bin_update(%struct.TYPE_13__*) #1

declare dso_local i32 @complete_update_bin(%struct.TYPE_13__*) #1

declare dso_local i32 @process_bin_get_or_touch(%struct.TYPE_13__*) #1

declare dso_local i32 @process_bin_stat(%struct.TYPE_13__*) #1

declare dso_local i32 @process_bin_delete(%struct.TYPE_13__*) #1

declare dso_local i32 @complete_incr_bin(%struct.TYPE_13__*) #1

declare dso_local i32 @process_bin_flush(%struct.TYPE_13__*) #1

declare dso_local i32 @process_bin_sasl_auth(%struct.TYPE_13__*) #1

declare dso_local i32 @process_bin_complete_sasl_auth(%struct.TYPE_13__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
