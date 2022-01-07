; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_write_bin_miss_response.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_write_bin_miss_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@conn_mwrite = common dso_local global i32 0, align 4
@conn_new_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i64)* @write_bin_miss_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bin_miss_response(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %14, i8** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @add_bin_header(%struct.TYPE_7__* %15, i32 %16, i32 0, i64 %17, i64 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @add_iov(%struct.TYPE_7__* %24, i8* %25, i64 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = load i32, i32* @conn_mwrite, align 4
  %30 = call i32 @conn_set_state(%struct.TYPE_7__* %28, i32 %29)
  %31 = load i32, i32* @conn_new_cmd, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %37 = call i32 @write_bin_error(%struct.TYPE_7__* %35, i32 %36, i32* null, i32 0)
  br label %38

38:                                               ; preds = %34, %10
  ret void
}

declare dso_local i32 @add_bin_header(%struct.TYPE_7__*, i32, i32, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @add_iov(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_7__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
