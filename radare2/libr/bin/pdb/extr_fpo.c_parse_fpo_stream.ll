; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_fpo.c_parse_fpo_stream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_fpo.c_parse_fpo_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_fpo_stream(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @stream_file_get_size(i32* %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @stream_file_get_data(i32* %17, i8* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %11, align 8
  %22 = call i32 (...) @r_list_new()
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %46, %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = call i64 @malloc(i32 1)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @parse_fpo_data(i8* %33, i32 %34, i32* %9, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @free(i8* %44)
  br label %52

46:                                               ; preds = %30
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @r_list_append(i32 %49, i8* %50)
  br label %26

52:                                               ; preds = %43, %26
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  ret void
}

declare dso_local i32 @stream_file_get_size(i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stream_file_get_data(i32*, i8*) #1

declare dso_local i32 @r_list_new(...) #1

declare dso_local i32 @parse_fpo_data(i8*, i32, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_list_append(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
