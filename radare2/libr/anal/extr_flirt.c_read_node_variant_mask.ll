; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_read_node_variant_mask.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_read_node_variant_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@buf_eof = common dso_local global i64 0, align 8
@buf_err = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @read_node_variant_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_node_variant_mask(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i8* @read_max_2_bytes(i32* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i64, i64* @buf_eof, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i64, i64* @buf_err, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %10
  store i32 0, i32* %3, align 4
  br label %65

21:                                               ; preds = %17
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 32
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @read_multiple_bytes(i32* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* @buf_eof, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* @buf_err, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %27
  store i32 0, i32* %3, align 4
  br label %65

38:                                               ; preds = %34
  br label %63

39:                                               ; preds = %22
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %42, 64
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @read_multiple_bytes(i32* %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = shl i32 %47, 32
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @read_multiple_bytes(i32* %49)
  %51 = sext i32 %48 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* @buf_eof, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i64, i64* @buf_err, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %44
  store i32 0, i32* %3, align 4
  br label %65

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %21
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %60, %37, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i8* @read_max_2_bytes(i32*) #1

declare dso_local i8* @read_multiple_bytes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
