; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_source_file_new.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_source_file_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, i32*, i8*)* @source_file_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @source_file_new(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @mrb_malloc(i32* %9, i32 24)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = call i32 @memset(%struct.TYPE_5__* %12, i8 signext 0, i32 24)
  %14 = load i8*, i8** %7, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = call i32 @source_file_free(i32* %23, %struct.TYPE_5__* %24)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %43

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 1
  %33 = call i64 @mrb_malloc(i32* %29, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %4, align 8
  br label %43

43:                                               ; preds = %26, %22
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %44
}

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i8 signext, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @source_file_free(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
