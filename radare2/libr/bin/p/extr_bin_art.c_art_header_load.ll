; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_art.c_art_header_load.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_art.c_art_header_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"IIiiiiiiiiiiii\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"img.base\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"img.size\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"art.checksum\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"art.version\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"oat.begin\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"oat.end\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"oat_data.begin\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"oat_data.end\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"patch_delta\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"image_roots\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"compile_pic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @art_header_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @art_header_load(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @r_buf_size(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 56
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = bitcast %struct.TYPE_5__* %20 to i32*
  %22 = call i32 @r_buf_fread_at(i32 %19, i32 0, i32* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 @sdb_set(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 0)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = call i32 @sdb_set(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 0)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @sdb_set(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 0)
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32 %51, i32 %56)
  %58 = call i32 @sdb_set(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %57, i32 0)
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = call i32 @sdb_set(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %63, i32 0)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = call i32 @sdb_set(i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %69, i32 0)
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = call i32 @sdb_set(i32* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %75, i32 0)
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = call i32 @sdb_set(i32* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %81, i32 0)
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = call i32 @sdb_set(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %87, i32 0)
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = call i32 @sdb_set(i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %93, i32 0)
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = call i32 @sdb_set(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %99, i32 0)
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %14, %13
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @r_buf_size(i32) #1

declare dso_local i32 @r_buf_fread_at(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @sdb_set(i32*, i8*, i32, i32) #1

declare dso_local i32 @sdb_fmt(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
