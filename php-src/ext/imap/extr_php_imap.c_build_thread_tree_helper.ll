; ModuleID = '/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c_build_thread_tree_helper.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c_build_thread_tree_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__*, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [8 x i8] c"%ld.num\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%ld.next\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%ld.branch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64*, i8*)* @build_thread_tree_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_thread_tree_helper(%struct.TYPE_3__* %0, i32* %1, i64* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @snprintf(i8* %12, i32 25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @add_assoc_long(i32* %15, i8* %16, i64 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @snprintf(i8* %21, i32 25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @add_assoc_long(i32* %32, i8* %33, i64 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i8*, i8** %8, align 8
  call void @build_thread_tree_helper(%struct.TYPE_3__* %39, i32* %40, i64* %41, i8* %42)
  br label %47

43:                                               ; preds = %4
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @add_assoc_long(i32* %44, i8* %45, i64 0)
  br label %47

47:                                               ; preds = %43, %28
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @snprintf(i8* %48, i32 25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @add_assoc_long(i32* %59, i8* %60, i64 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i8*, i8** %8, align 8
  call void @build_thread_tree_helper(%struct.TYPE_3__* %66, i32* %67, i64* %68, i8* %69)
  br label %74

70:                                               ; preds = %47
  %71 = load i32*, i32** %6, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @add_assoc_long(i32* %71, i8* %72, i64 0)
  br label %74

74:                                               ; preds = %70, %55
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
