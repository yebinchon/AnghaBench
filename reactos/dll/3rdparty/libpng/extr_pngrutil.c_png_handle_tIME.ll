; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_tIME.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_tIME.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_tIME\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_INFO_tIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_tIME(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i8*], align 16
  %8 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = call i32 @png_chunk_error(%struct.TYPE_14__* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PNG_INFO_tIME, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @png_crc_finish(%struct.TYPE_14__* %30, i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = call i32 @png_chunk_benign_error(%struct.TYPE_14__* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %88

35:                                               ; preds = %22, %19
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 7
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @png_crc_finish(%struct.TYPE_14__* %53, i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = call i32 @png_chunk_benign_error(%struct.TYPE_14__* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %88

58:                                               ; preds = %49
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %61 = call i32 @png_crc_read(%struct.TYPE_14__* %59, i8** %60, i32 7)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = call i64 @png_crc_finish(%struct.TYPE_14__* %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %88

66:                                               ; preds = %58
  %67 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 6
  %68 = load i8*, i8** %67, align 16
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 5
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 5
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 4
  %74 = load i8*, i8** %73, align 16
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 3
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 2
  %80 = load i8*, i8** %79, align 16
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %83 = call i32 @png_get_uint_16(i8** %82)
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = call i32 @png_set_tIME(%struct.TYPE_14__* %85, %struct.TYPE_15__* %86, %struct.TYPE_13__* %8)
  br label %88

88:                                               ; preds = %66, %65, %52, %29
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_14__*, i8**, i32) #1

declare dso_local i32 @png_get_uint_16(i8**) #1

declare dso_local i32 @png_set_tIME(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
