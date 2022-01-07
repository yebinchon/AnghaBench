; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/pe/extr_pe.c_Pe_r_bin_store_string_table.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/pe/extr_pe.c_Pe_r_bin_store_string_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64 }

@EIGHT_HEX_DIG_UTF_16_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"string%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @Pe_r_bin_store_string_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Pe_r_bin_store_string_table(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = call i32* (...) @sdb_new0()
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32* null, i32** %2, align 8
  br label %60

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i32, i32* @EIGHT_HEX_DIG_UTF_16_LEN, align 4
  %22 = call i8* @sdb_encode(i8* %20, i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @sdb_free(i32* %26)
  store i32* null, i32** %2, align 8
  br label %60

28:                                               ; preds = %16
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sdb_set(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %30, i32 0)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @free(i8* %32)
  br label %34

34:                                               ; preds = %55, %28
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @snprintf(i8* %41, i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Pe_r_bin_store_string(i32 %52)
  %54 = call i32 @sdb_ns_set(i32* %44, i8* %45, i32 %53)
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %2, align 8
  br label %60

60:                                               ; preds = %58, %25, %15, %10
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i32* @sdb_new0(...) #1

declare dso_local i8* @sdb_encode(i8*, i32) #1

declare dso_local i32 @sdb_free(i32*) #1

declare dso_local i32 @sdb_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sdb_ns_set(i32*, i8*, i32) #1

declare dso_local i32 @Pe_r_bin_store_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
