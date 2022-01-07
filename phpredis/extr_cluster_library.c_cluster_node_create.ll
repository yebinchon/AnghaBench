; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_node_create.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i16, i16, %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_8__*, i8*, i64, i16, i16, i16)* @cluster_node_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @cluster_node_create(%struct.TYPE_8__* %0, i8* %1, i64 %2, i16 zeroext %3, i16 zeroext %4, i16 signext %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  store i16 %5, i16* %12, align 2
  %14 = call %struct.TYPE_7__* @emalloc(i32 32)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %13, align 8
  %15 = load i16, i16* %11, align 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i16 %15, i16* %17, align 8
  %18 = load i16, i16* %12, align 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i16 %18, i16* %20, align 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = call i32 @zend_llist_init(i32* %24, i32 4, i32* null, i32 0)
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i16, i16* %10, align 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_9__* @redis_sock_create(i8* %26, i64 %27, i16 zeroext %28, i32 %31, i32 %34, i32 %37, i32* null, i32 0)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %6
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @zend_string_copy(i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %6
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  ret %struct.TYPE_7__* %55
}

declare dso_local %struct.TYPE_7__* @emalloc(i32) #1

declare dso_local i32 @zend_llist_init(i32*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @redis_sock_create(i8*, i64, i16 zeroext, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @zend_string_copy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
