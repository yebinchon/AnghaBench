; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_append_fortune.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_append_fortune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }
%struct.fortune_array = type { i32 }
%struct.Fortune = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coro*, %struct.fortune_array*, i32, i8*)* @append_fortune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_fortune(%struct.coro* %0, %struct.fortune_array* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.coro*, align 8
  %7 = alloca %struct.fortune_array*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.Fortune*, align 8
  %11 = alloca i8*, align 8
  store %struct.coro* %0, %struct.coro** %6, align 8
  store %struct.fortune_array* %1, %struct.fortune_array** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.coro*, %struct.coro** %6, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i8* @coro_strdup(%struct.coro* %12, i8* %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @UNLIKELY(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.fortune_array*, %struct.fortune_array** %7, align 8
  %24 = call %struct.Fortune* @fortune_array_append(%struct.fortune_array* %23)
  store %struct.Fortune* %24, %struct.Fortune** %10, align 8
  %25 = load %struct.Fortune*, %struct.Fortune** %10, align 8
  %26 = icmp ne %struct.Fortune* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @UNLIKELY(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.Fortune*, %struct.Fortune** %10, align 8
  %35 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.Fortune*, %struct.Fortune** %10, align 8
  %39 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %32, %31, %21
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i8* @coro_strdup(%struct.coro*, i8*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local %struct.Fortune* @fortune_array_append(%struct.fortune_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
