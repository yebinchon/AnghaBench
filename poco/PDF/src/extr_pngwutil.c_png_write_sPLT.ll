; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_sPLT.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_sPLT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"in png_write_sPLT\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Empty keyword in sPLT chunk\00", align 1
@png_sPLT = common dso_local global i32 0, align 4
@PNG_sPLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_sPLT(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [10 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 8
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 6, i32 10
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @png_check_keyword(i32 %28, i32* %31, i64* %6)
  store i32 %32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %2
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @png_warning(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %143

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @png_sPLT, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 2
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @png_write_chunk_start(i32 %38, i32 %39, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @png_write_chunk_data(i32 %45, i64* %47, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to i64*
  %55 = call i32 @png_write_chunk_data(i32 %51, i64* %54, i32 1)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %10, align 8
  br label %59

59:                                               ; preds = %134, %37
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %67
  %69 = icmp ult %struct.TYPE_5__* %60, %68
  br i1 %69, label %70, label %137

70:                                               ; preds = %59
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  store i64 %78, i64* %79, align 16
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 1
  store i64 %82, i64* %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 2
  store i64 %86, i64* %87, align 16
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 3
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %93 = getelementptr inbounds i64, i64* %92, i64 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @png_save_uint_16(i64* %93, i64 %96)
  br label %129

98:                                               ; preds = %70
  %99 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @png_save_uint_16(i64* %100, i64 %103)
  %105 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @png_save_uint_16(i64* %106, i64 %109)
  %111 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %112 = getelementptr inbounds i64, i64* %111, i64 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @png_save_uint_16(i64* %112, i64 %115)
  %117 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %118 = getelementptr inbounds i64, i64* %117, i64 6
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @png_save_uint_16(i64* %118, i64 %121)
  %123 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %124 = getelementptr inbounds i64, i64* %123, i64 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @png_save_uint_16(i64* %124, i64 %127)
  br label %129

129:                                              ; preds = %98, %75
  %130 = load i32, i32* %3, align 4
  %131 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @png_write_chunk_data(i32 %130, i64* %131, i32 %132)
  br label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 1
  store %struct.TYPE_5__* %136, %struct.TYPE_5__** %10, align 8
  br label %59

137:                                              ; preds = %59
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @png_write_chunk_end(i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @png_free(i32 %140, i64 %141)
  br label %143

143:                                              ; preds = %137, %34
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_check_keyword(i32, i32*, i64*) #1

declare dso_local i32 @png_warning(i32, i8*) #1

declare dso_local i32 @png_write_chunk_start(i32, i32, i32) #1

declare dso_local i32 @png_write_chunk_data(i32, i64*, i32) #1

declare dso_local i32 @png_save_uint_16(i64*, i64) #1

declare dso_local i32 @png_write_chunk_end(i32) #1

declare dso_local i32 @png_free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
