; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_qnx.c_r_debug_qnx_reg_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_qnx.c_r_debug_qnx_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@desc = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"r_debug_qnx_reg_read: small buffer %d vs %d\0A\00", align 1
@reg_buf = common dso_local global i32* null, align 8
@buf_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*, i32)* @r_debug_qnx_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_qnx_reg_read(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %96

17:                                               ; preds = %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %19 = call i32 @qnxr_read_registers(%struct.TYPE_8__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %96

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @r_reg_get_bytes(i32 %26, i32 %27, i32* %11)
  %29 = call i32 @free(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @R_MIN(i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @R_MAX(i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** @reg_buf, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load i32, i32* @buf_size, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32*, i32** @reg_buf, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32* @realloc(i32* %51, i32 %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %96

57:                                               ; preds = %50
  %58 = load i32*, i32** %13, align 8
  store i32* %58, i32** @reg_buf, align 8
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* @buf_size, align 4
  br label %61

61:                                               ; preds = %57, %46
  br label %70

62:                                               ; preds = %37
  %63 = load i32, i32* %11, align 4
  %64 = call i32* @calloc(i32 %63, i32 1)
  store i32* %64, i32** @reg_buf, align 8
  %65 = load i32*, i32** @reg_buf, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %96

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* @buf_size, align 4
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i32*, i32** %8, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @memset(i8* %72, i32 0, i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @memcpy(i8* %76, i32 %80, i32 %81)
  %83 = load i32*, i32** @reg_buf, align 8
  %84 = bitcast i32* %83 to i8*
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @memset(i8* %84, i32 0, i32 %85)
  %87 = load i32*, i32** @reg_buf, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @memcpy(i8* %88, i32 %92, i32 %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %70, %67, %56, %22, %16
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @qnxr_read_registers(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_reg_get_bytes(i32, i32, i32*) #1

declare dso_local i32 @eprintf(i8*, i32, i32) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
