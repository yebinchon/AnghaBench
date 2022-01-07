; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_IHDR.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_IHDR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_IHDR\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Out of place IHDR\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid IHDR chunk\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bit_depth = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"channels = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"rowbytes = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_IHDR(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [13 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i32 @png_error(%struct.TYPE_8__* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 13
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = call i32 @png_error(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 0
  %39 = call i32 @png_crc_read(%struct.TYPE_8__* %37, i8** %38, i32 13)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @png_crc_finish(%struct.TYPE_8__* %40, i32 0)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 0
  %44 = call i32 @png_get_uint_31(%struct.TYPE_8__* %42, i8** %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 0
  %47 = getelementptr inbounds i8*, i8** %46, i64 4
  %48 = call i32 @png_get_uint_31(%struct.TYPE_8__* %45, i8** %47)
  store i32 %48, i32* %9, align 4
  %49 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 8
  %50 = load i8*, i8** %49, align 16
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 9
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 10
  %56 = load i8*, i8** %55, align 16
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 11
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = getelementptr inbounds [13 x i8*], [13 x i8*]* %7, i64 0, i64 12
  %62 = load i8*, i8** %61, align 16
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 10
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %107 [
    i32 132, label %95
    i32 130, label %95
    i32 129, label %98
    i32 131, label %101
    i32 128, label %104
  ]

95:                                               ; preds = %31, %31
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i32 1, i32* %97, align 4
  br label %107

98:                                               ; preds = %31
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  store i32 3, i32* %100, align 4
  br label %107

101:                                              ; preds = %31
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  store i32 2, i32* %103, align 4
  br label %107

104:                                              ; preds = %31
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  store i32 4, i32* %106, align 4
  br label %107

107:                                              ; preds = %31, %104, %101, %98, %95
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @PNG_ROWBYTES(i8* %121, i32 %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @png_debug1(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @png_debug1(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @png_debug1(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @png_set_IHDR(%struct.TYPE_8__* %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_8__*, i8**, i32) #1

declare dso_local i32 @png_crc_finish(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @png_get_uint_31(%struct.TYPE_8__*, i8**) #1

declare dso_local i32 @PNG_ROWBYTES(i8*, i32) #1

declare dso_local i32 @png_debug1(i32, i8*, i32) #1

declare dso_local i32 @png_set_IHDR(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
