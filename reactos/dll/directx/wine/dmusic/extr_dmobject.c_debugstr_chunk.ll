; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.c_debugstr_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.c_debugstr_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk_entry = type { i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@FOURCC_RIFF = common dso_local global i64 0, align 8
@FOURCC_LIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"type %s, \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s chunk, %ssize %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debugstr_chunk(%struct.chunk_entry* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.chunk_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.chunk_entry* %0, %struct.chunk_entry** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load %struct.chunk_entry*, %struct.chunk_entry** %3, align 8
  %6 = icmp ne %struct.chunk_entry* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.chunk_entry*, %struct.chunk_entry** %3, align 8
  %10 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FOURCC_RIFF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.chunk_entry*, %struct.chunk_entry** %3, align 8
  %16 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FOURCC_LIST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14, %8
  %21 = load %struct.chunk_entry*, %struct.chunk_entry** %3, align 8
  %22 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @debugstr_fourcc(i64 %23)
  %25 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.chunk_entry*, %struct.chunk_entry** %3, align 8
  %28 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @debugstr_fourcc(i64 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.chunk_entry*, %struct.chunk_entry** %3, align 8
  %33 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %30, i8* %31, i32 %34)
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %26, %7
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i32, ...) #1

declare dso_local i32 @debugstr_fourcc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
