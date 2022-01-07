; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_qnx.c_lmf_header_load.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_qnx.c_lmf_header_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QNX_HEADER_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"iiiiiiiicccciiiicc\00", align 1
@QNX_HDR_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"qnx.version\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0x%xH\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"qnx.cflags\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"qnx.cpu\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"qnx.fpu\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"qnx.code_index\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"qnx.stack_index\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"qnx.heap_index\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"qnx.argv_index\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"qnx.code_offset\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"qnx.stack_nbytes\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"qnx.heap_nbytes\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"qnx.image_base\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @lmf_header_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmf_header_load(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @r_buf_size(i32* %8)
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 48
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @QNX_HEADER_ADDR, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i32*
  %18 = call i64 @r_buf_fread_at(i32* %14, i32 %15, i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1)
  %19 = load i64, i64* @QNX_HDR_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %95

22:                                               ; preds = %13
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sdb_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 @sdb_set(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 0)
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sdb_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = call i32 @sdb_set(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 0)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sdb_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @sdb_set(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 0)
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sdb_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = call i32 @sdb_set(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %45, i32 0)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = call i32 @sdb_set(i32* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %51, i32 0)
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  %58 = call i32 @sdb_set(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %57, i32 0)
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = call i32 @sdb_set(i32* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %63, i32 0)
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = call i32 @sdb_set(i32* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %69, i32 0)
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = call i32 @sdb_set(i32* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %75, i32 0)
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = call i32 @sdb_set(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %81, i32 0)
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = call i32 @sdb_set(i32* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %87, i32 0)
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = call i32 @sdb_set(i32* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %93, i32 0)
  store i32 1, i32* %4, align 4
  br label %95

95:                                               ; preds = %22, %21, %12
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i64 @r_buf_fread_at(i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @sdb_set(i32*, i8*, i32, i32) #1

declare dso_local i32 @sdb_fmt(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
