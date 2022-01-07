; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gdb.c_debug_gdb_write_at.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gdb.c_debug_gdb_write_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UT64_MAX = common dso_local global i64 0, align 8
@desc = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @debug_gdb_write_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_gdb_write_at(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @UT64_MAX, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %14, %3
  store i32 -1, i32* %4, align 4
  br label %76

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %52, %22
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @gdbr_write_memory(%struct.TYPE_3__* %37, i64 %43, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @gdbr_write_memory(%struct.TYPE_3__* %59, i64 %65, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %58, %55
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %21
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @gdbr_write_memory(%struct.TYPE_3__*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
