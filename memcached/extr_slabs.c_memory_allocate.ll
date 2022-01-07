; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_memory_allocate.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_memory_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem_base = common dso_local global i32* null, align 8
@mem_current = common dso_local global i8* null, align 8
@mem_avail = common dso_local global i64 0, align 8
@CHUNK_ALIGN_BYTES = common dso_local global i64 0, align 8
@mem_malloced = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @memory_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @memory_allocate(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32*, i32** @mem_base, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @malloc(i64 %8)
  store i8* %9, i8** %4, align 8
  br label %42

10:                                               ; preds = %1
  %11 = load i8*, i8** @mem_current, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @mem_avail, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %47

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @CHUNK_ALIGN_BYTES, align 8
  %19 = urem i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i64, i64* @CHUNK_ALIGN_BYTES, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @CHUNK_ALIGN_BYTES, align 8
  %25 = urem i64 %23, %24
  %26 = sub i64 %22, %25
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %21, %16
  %30 = load i8*, i8** @mem_current, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** @mem_current, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @mem_avail, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @mem_avail, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* @mem_avail, align 8
  br label %41

40:                                               ; preds = %29
  store i64 0, i64* @mem_avail, align 8
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @mem_malloced, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* @mem_malloced, align 8
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %42, %15
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
