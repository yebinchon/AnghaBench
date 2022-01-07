; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_append_prepend.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_append_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_17__*, %struct.TYPE_16__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32 }

@settings = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Value len is %d\0A\00", align 1
@PROTOCOL_BINARY_RESPONSE_E2BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"SERVER_ERROR Out of memory allocating item\00", align 1
@conn_swallow = common dso_local global i32 0, align 4
@NREAD_APPEND = common dso_local global i32 0, align 4
@NREAD_PREPEND = common dso_local global i32 0, align 4
@conn_nread = common dso_local global i32 0, align 4
@bin_read_set_value = common dso_local global i32 0, align 4
@ITEM_CHUNKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @process_bin_append_prepend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bin_append_prepend(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = icmp ne %struct.TYPE_18__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = call i8* @binary_get_key(%struct.TYPE_18__* %11)
  store i8* %12, i8** %3, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @settings, i32 0, i32 0), align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @settings, i32 0, i32 1), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @stats_prefix_record_set(i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 2
  %43 = call %struct.TYPE_17__* @item_alloc(i8* %39, i32 %40, i32 0, i32 0, i32 %42)
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %6, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = icmp eq %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 2
  %50 = call i32 @item_size_ok(i32 %47, i32 0, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %54 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_E2BIG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @write_bin_error(%struct.TYPE_18__* %53, i32 %54, i32* null, i32 %55)
  br label %63

57:                                               ; preds = %46
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = call i32 @out_of_memory(%struct.TYPE_18__* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* @conn_swallow, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  br label %105

67:                                               ; preds = %38
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ITEM_set_cas(%struct.TYPE_17__* %68, i32 %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %86 [
    i32 129, label %78
    i32 128, label %82
  ]

78:                                               ; preds = %67
  %79 = load i32, i32* @NREAD_APPEND, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %88

82:                                               ; preds = %67
  %83 = load i32, i32* @NREAD_PREPEND, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %88

86:                                               ; preds = %67
  %87 = call i32 @assert(i32 0)
  br label %88

88:                                               ; preds = %86, %82, %78
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 5
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = call i8* @ITEM_data(%struct.TYPE_17__* %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %100 = load i32, i32* @conn_nread, align 4
  %101 = call i32 @conn_set_state(%struct.TYPE_18__* %99, i32 %100)
  %102 = load i32, i32* @bin_read_set_value, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %88, %63
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @binary_get_key(%struct.TYPE_18__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @stats_prefix_record_set(i8*, i32) #1

declare dso_local %struct.TYPE_17__* @item_alloc(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @item_size_ok(i32, i32, i32) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_18__*, i32, i32*, i32) #1

declare dso_local i32 @out_of_memory(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @ITEM_set_cas(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @ITEM_data(%struct.TYPE_17__*) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
