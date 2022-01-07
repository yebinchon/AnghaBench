; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_gdata.c_parse_gdata_stream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_gdata.c_parse_gdata_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gdata_stream(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i16 0, i16* %5, align 2
  store i16 0, i16* %6, align 2
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %12 = call i32 (...) @r_list_new()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %2, %68
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i16* %5 to i8*
  %18 = call i32 @stream_file_read(i32* %16, i16 zeroext 2, i8* %17)
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %71

23:                                               ; preds = %15
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  %26 = call i64 @malloc(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %71

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i16, i16* %5, align 2
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @stream_file_read(i32* %32, i16 zeroext %33, i8* %34)
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to i16*
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %6, align 2
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %40, 4366
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %44, 4105
  br i1 %45, label %46, label %68

46:                                               ; preds = %42, %31
  %47 = call i64 @malloc(i32 2)
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @free(i8* %52)
  br label %71

54:                                               ; preds = %46
  %55 = load i16, i16* %6, align 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i16 %55, i16* %57, align 2
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i16, i16* %5, align 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = call i32 @parse_global(i8* %59, i16 zeroext %60, %struct.TYPE_5__* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = call i32 @r_list_append(i32 %65, %struct.TYPE_5__* %66)
  br label %68

68:                                               ; preds = %54, %42
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @free(i8* %69)
  br label %15

71:                                               ; preds = %30, %51, %22
  ret void
}

declare dso_local i32 @r_list_new(...) #1

declare dso_local i32 @stream_file_read(i32*, i16 zeroext, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_global(i8*, i16 zeroext, %struct.TYPE_5__*) #1

declare dso_local i32 @r_list_append(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
