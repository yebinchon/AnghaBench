; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_sBIT.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_sBIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_sBIT\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before sBIT\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid sBIT after IDAT\00", align 1
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Out of place sBIT chunk\00", align 1
@PNG_INFO_sBIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplicate sBIT chunk\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Incorrect sBIT chunk length\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_sBIT(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8*], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 3
  store i8* null, i8** %10, align 8
  %11 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 2
  store i8* null, i8** %11, align 16
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 1
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  store i8* null, i8** %13, align 16
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = call i32 @png_error(%struct.TYPE_12__* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %48

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i32 @png_warning(%struct.TYPE_12__* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @png_crc_finish(%struct.TYPE_12__* %33, i32 %34)
  br label %158

36:                                               ; preds = %23
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = call i32 @png_warning(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %20
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PNG_INFO_sBIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = call i32 @png_warning(%struct.TYPE_12__* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @png_crc_finish(%struct.TYPE_12__* %61, i32 %62)
  br label %158

64:                                               ; preds = %51, %48
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 3, i32* %7, align 4
  br label %76

71:                                               ; preds = %64
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 4
  br i1 %82, label %83, label %89

83:                                               ; preds = %80, %76
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = call i32 @png_warning(%struct.TYPE_12__* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @png_crc_finish(%struct.TYPE_12__* %86, i32 %87)
  br label %158

89:                                               ; preds = %80
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @png_crc_read(%struct.TYPE_12__* %90, i8** %91, i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = call i64 @png_crc_finish(%struct.TYPE_12__* %94, i32 0)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %158

98:                                               ; preds = %89
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %98
  %106 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %107 = load i8*, i8** %106, align 16
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  store i8* %107, i8** %110, align 8
  %111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  store i8* %112, i8** %115, align 8
  %116 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 2
  %117 = load i8*, i8** %116, align 16
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  %121 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 3
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %152

126:                                              ; preds = %98
  %127 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %128 = load i8*, i8** %127, align 16
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 4
  store i8* %128, i8** %131, align 8
  %132 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %133 = load i8*, i8** %132, align 16
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  store i8* %133, i8** %136, align 8
  %137 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %138 = load i8*, i8** %137, align 16
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  store i8* %138, i8** %141, align 8
  %142 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %143 = load i8*, i8** %142, align 16
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  %147 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  br label %152

152:                                              ; preds = %126, %105
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = call i32 @png_set_sBIT(%struct.TYPE_12__* %153, %struct.TYPE_13__* %154, %struct.TYPE_14__* %156)
  br label %158

158:                                              ; preds = %152, %97, %83, %58, %30
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_12__*, i8**, i32) #1

declare dso_local i32 @png_set_sBIT(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
