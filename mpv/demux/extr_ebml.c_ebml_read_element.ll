; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_element.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_ebml.c_ebml_read_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i64 }
%struct.ebml_parse_ctx = type { i32, i32, i64 }
%struct.ebml_elem_desc = type { i32 }

@MSGL_DEBUG = common dso_local global i32 0, align 4
@MSGL_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unexpected end of file - partial or corrupt file?\0A\00", align 1
@EBML_UINT_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"EBML element with unknown length - unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Refusing to read element over 100 MB in size\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error parsing element %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebml_read_element(%struct.stream* %0, %struct.ebml_parse_ctx* %1, i8* %2, %struct.ebml_elem_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream*, align 8
  %7 = alloca %struct.ebml_parse_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ebml_elem_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %6, align 8
  store %struct.ebml_parse_ctx* %1, %struct.ebml_parse_ctx** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.ebml_elem_desc* %3, %struct.ebml_elem_desc** %9, align 8
  %13 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @MSGL_DEBUG, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @MSGL_WARN, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %10, align 4
  %25 = load %struct.stream*, %struct.stream** %6, align 8
  %26 = call i32 @ebml_read_length(%struct.stream* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.stream*, %struct.stream** %6, align 8
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (%struct.ebml_parse_ctx*, i32, i8*, ...) @MP_MSG(%struct.ebml_parse_ctx* %32, i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %89

35:                                               ; preds = %23
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @EBML_UINT_INVALID, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (%struct.ebml_parse_ctx*, i32, i8*, ...) @MP_MSG(%struct.ebml_parse_ctx* %40, i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %89

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 1000000000
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (%struct.ebml_parse_ctx*, i32, i8*, ...) @MP_MSG(%struct.ebml_parse_ctx* %47, i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %89

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @talloc_size(i32* null, i32 %51)
  %53 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.stream*, %struct.stream** %6, align 8
  %56 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @stream_read(%struct.stream* %55, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (%struct.ebml_parse_ctx*, i32, i8*, ...) @MP_MSG(%struct.ebml_parse_ctx* %65, i32 %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %50
  %69 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.ebml_elem_desc*, %struct.ebml_elem_desc** %9, align 8
  %76 = call i32 @ebml_parse_element(%struct.ebml_parse_ctx* %69, i8* %70, i32 %73, i32 %74, %struct.ebml_elem_desc* %75, i32 0)
  %77 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %78 = getelementptr inbounds %struct.ebml_parse_ctx, %struct.ebml_parse_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = load %struct.ebml_parse_ctx*, %struct.ebml_parse_ctx** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.ebml_elem_desc*, %struct.ebml_elem_desc** %9, align 8
  %85 = getelementptr inbounds %struct.ebml_elem_desc, %struct.ebml_elem_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.ebml_parse_ctx*, i32, i8*, ...) @MP_MSG(%struct.ebml_parse_ctx* %82, i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81, %68
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %46, %39, %31
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @ebml_read_length(%struct.stream*) #1

declare dso_local i32 @MP_MSG(%struct.ebml_parse_ctx*, i32, i8*, ...) #1

declare dso_local i32 @talloc_size(i32*, i32) #1

declare dso_local i32 @stream_read(%struct.stream*, i32, i32) #1

declare dso_local i32 @ebml_parse_element(%struct.ebml_parse_ctx*, i8*, i32, i32, %struct.ebml_elem_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
