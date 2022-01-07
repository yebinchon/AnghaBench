; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/pe/extr_pe.c_Pe_r_bin_store_string.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/pe/extr_pe.c_Pe_r_bin_store_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @Pe_r_bin_store_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Pe_r_bin_store_string(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %57

10:                                               ; preds = %1
  %11 = call i32* (...) @sdb_new0()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32* null, i32** %2, align 8
  br label %57

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @sdb_encode(i8* %19, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @sdb_free(i32* %27)
  store i32* null, i32** %2, align 8
  br label %57

29:                                               ; preds = %15
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @sdb_encode(i8* %33, i32 %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @sdb_free(i32* %43)
  store i32* null, i32** %2, align 8
  br label %57

45:                                               ; preds = %29
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @sdb_set(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47, i32 0)
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @sdb_set(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 0)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32*, i32** %4, align 8
  store i32* %56, i32** %2, align 8
  br label %57

57:                                               ; preds = %45, %40, %26, %14, %9
  %58 = load i32*, i32** %2, align 8
  ret i32* %58
}

declare dso_local i32* @sdb_new0(...) #1

declare dso_local i8* @sdb_encode(i8*, i32) #1

declare dso_local i32 @sdb_free(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sdb_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
