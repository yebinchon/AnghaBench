; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_my_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_my_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i8*, %struct.pool* }

@pool_head = common dso_local global %struct.pool* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @my_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @my_malloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pool*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i8* @calloc(i32 1, i64 16)
  %6 = bitcast i8* %5 to %struct.pool*
  store %struct.pool* %6, %struct.pool** %4, align 8
  %7 = load %struct.pool*, %struct.pool** %4, align 8
  %8 = icmp ne %struct.pool* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %30

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i8* @calloc(i32 1, i64 %11)
  %13 = load %struct.pool*, %struct.pool** %4, align 8
  %14 = getelementptr inbounds %struct.pool, %struct.pool* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.pool*, %struct.pool** %4, align 8
  %16 = getelementptr inbounds %struct.pool, %struct.pool* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load %struct.pool*, %struct.pool** %4, align 8
  %21 = call i32 @free(%struct.pool* %20)
  store i8* null, i8** %2, align 8
  br label %30

22:                                               ; preds = %10
  %23 = load %struct.pool*, %struct.pool** @pool_head, align 8
  %24 = load %struct.pool*, %struct.pool** %4, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 1
  store %struct.pool* %23, %struct.pool** %25, align 8
  %26 = load %struct.pool*, %struct.pool** %4, align 8
  store %struct.pool* %26, %struct.pool** @pool_head, align 8
  %27 = load %struct.pool*, %struct.pool** %4, align 8
  %28 = getelementptr inbounds %struct.pool, %struct.pool* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %22, %19, %9
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @free(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
