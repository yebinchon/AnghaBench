; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_fpo.c_parse_fpo_new_stream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_fpo.c_parse_fpo_new_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_fpo_new_stream(i8* %0, i32* %1) #0 {
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
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %65

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @stream_file_get_data(i32* %21, i8* %22)
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %11, align 8
  %26 = call i32 (...) @r_list_new()
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %56, %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = call i64 @malloc(i32 1)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free(i8* %40)
  br label %65

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @parse_fpo_data_v2(i8* %43, i32 %44, i32* %9, i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @free(i8* %54)
  br label %62

56:                                               ; preds = %42
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @r_list_append(i32 %59, i8* %60)
  br label %30

62:                                               ; preds = %53, %30
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62, %39, %19
  ret void
}

declare dso_local i32 @stream_file_get_size(i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stream_file_get_data(i32*, i8*) #1

declare dso_local i32 @r_list_new(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_fpo_data_v2(i8*, i32, i32*, i8*) #1

declare dso_local i32 @r_list_append(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
