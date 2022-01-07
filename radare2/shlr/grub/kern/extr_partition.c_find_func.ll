; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_partition.c_find_func.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_partition.c_find_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.find_func_closure = type { i64, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i8*)* @find_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_func(i32 %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.find_func_closure*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.find_func_closure*
  store %struct.find_func_closure* %10, %struct.find_func_closure** %8, align 8
  %11 = load %struct.find_func_closure*, %struct.find_func_closure** %8, align 8
  %12 = getelementptr inbounds %struct.find_func_closure, %struct.find_func_closure* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = call i64 @grub_malloc(i32 8)
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  %21 = load %struct.find_func_closure*, %struct.find_func_closure** %8, align 8
  %22 = getelementptr inbounds %struct.find_func_closure, %struct.find_func_closure* %21, i32 0, i32 1
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.find_func_closure*, %struct.find_func_closure** %8, align 8
  %24 = getelementptr inbounds %struct.find_func_closure, %struct.find_func_closure* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.find_func_closure*, %struct.find_func_closure** %8, align 8
  %30 = getelementptr inbounds %struct.find_func_closure, %struct.find_func_closure* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = call i32 @grub_memcpy(%struct.TYPE_5__* %31, %struct.TYPE_5__* %32, i32 8)
  store i32 1, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %28, %27
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @grub_malloc(i32) #1

declare dso_local i32 @grub_memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
