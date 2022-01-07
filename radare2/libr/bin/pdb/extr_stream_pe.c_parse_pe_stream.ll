; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_stream_pe.c_parse_pe_stream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_stream_pe.c_parse_pe_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_pe_stream(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @stream_file_get_size(i32* %14, i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %61

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @stream_file_get_data(i32* %23, i8* %24)
  store i32 4, i32* %11, align 4
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %7, align 8
  %27 = call i32 (...) @r_list_new()
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %41, %22
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @malloc(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %58

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @memcpy(i32* %42, i8* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %7, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @r_list_append(i32 %52, i32* %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %30

58:                                               ; preds = %40, %30
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %58, %21
  ret void
}

declare dso_local i32 @stream_file_get_size(i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stream_file_get_data(i32*, i8*) #1

declare dso_local i32 @r_list_new(...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @r_list_append(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
