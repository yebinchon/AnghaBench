; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_parame_new.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_parame_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i64)* @mbedtls_parame_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @mbedtls_parame_new(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 @os_zalloc(i32 4)
  %5 = inttoptr i64 %4 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i64 @os_zalloc(i32 %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  br label %32

29:                                               ; preds = %11
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = call i32 @os_free(%struct.TYPE_4__* %30)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %32

32:                                               ; preds = %29, %28
  br label %33

33:                                               ; preds = %32, %8, %1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %34
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
