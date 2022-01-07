; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_iCCP.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_iCCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32*, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"in png_write_iCCP\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Empty keyword in iCCP chunk\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unknown compression type in iCCP chunk\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Embedded profile length too large in iCCP chunk\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Truncating profile to actual length in iCCP chunk\00", align 1
@png_iCCP = common dso_local global i32 0, align 4
@PNG_iCCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_iCCP(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %15 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @png_check_keyword(i32 %24, i32* %25, i32** %12)
  store i32 %26, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %5
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @png_warning(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %118

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @png_warning(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32*, i32** %9, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 24
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %48, %52
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %53, %57
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %45, %42
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @png_warning(i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %118

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @png_warning(i32 %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %86 = call i32 @png_text_compress(i32 %82, i32* %83, i32 %84, i32 %85, %struct.TYPE_4__* %13)
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @png_iCCP, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = add nsw i64 %94, 2
  %96 = call i32 @png_write_chunk_start(i32 %88, i32 %89, i64 %95)
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 2
  %106 = call i32 @png_write_chunk_data(i32 %102, i32* %103, i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %87
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @png_write_compressed_data_out(i32 %110, %struct.TYPE_4__* %13)
  br label %112

112:                                              ; preds = %109, %87
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @png_write_chunk_end(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @png_free(i32 %115, i32* %116)
  br label %118

118:                                              ; preds = %112, %67, %28
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_check_keyword(i32, i32*, i32**) #1

declare dso_local i32 @png_warning(i32, i8*) #1

declare dso_local i32 @png_text_compress(i32, i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @png_write_chunk_start(i32, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(i32, i32*, i32) #1

declare dso_local i32 @png_write_compressed_data_out(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @png_write_chunk_end(i32) #1

declare dso_local i32 @png_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
