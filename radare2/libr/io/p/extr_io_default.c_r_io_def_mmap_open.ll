; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_default.c_r_io_def_mmap_open.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_default.c_r_io_def_mmap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32 }

@r_io_plugin_default = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i8*, i32, i32)* @r_io_def_mmap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @r_io_def_mmap_open(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @r_return_val_if_fail(i32 %20, i32* null)
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_7__* @r_io_def_mmap_create_new_file(i32* %22, i8* %23, i32 %24, i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %10, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %69

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = call %struct.TYPE_8__* @r_io_desc_new(i32* %31, i32* @r_io_plugin_default, i32 %34, i32 %35, i32 %36, %struct.TYPE_7__* %37)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %11, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @strdup(i8* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @r_str_startswith(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i8* @strdup(i8* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %54, %48
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %5, align 8
  br label %69

69:                                               ; preds = %67, %29
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %70
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @r_io_def_mmap_create_new_file(i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @r_io_desc_new(i32*, i32*, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
