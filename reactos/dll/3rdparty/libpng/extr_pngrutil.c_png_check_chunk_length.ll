; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_check_chunk_length.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_check_chunk_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64, i64, i64, i64 }

@PNG_UINT_31_MAX = common dso_local global i64 0, align 8
@png_IDAT = common dso_local global i64 0, align 8
@PNG_UINT_32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c" length = %lu, limit = %lu\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"chunk data is too large\00", align 1
@PNG_USER_CHUNK_MALLOC_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_check_chunk_length(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @PNG_UINT_31_MAX, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @png_IDAT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %89

14:                                               ; preds = %2
  %15 = load i64, i64* @PNG_UINT_31_MAX, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = mul i64 %18, %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 8
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %22, %29
  %31 = add i64 %30, 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 6, i32 0
  %38 = sext i32 %37 to i64
  %39 = add i64 %31, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PNG_UINT_32_MAX, align 8
  %44 = load i64, i64* %7, align 8
  %45 = udiv i64 %43, %44
  %46 = icmp ugt i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %14
  %48 = load i64, i64* @PNG_UINT_31_MAX, align 8
  store i64 %48, i64* %6, align 8
  br label %55

49:                                               ; preds = %14
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = mul i64 %52, %53
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %49, %47
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 32566
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i64 [ 32566, %58 ], [ %60, %59 ]
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = udiv i64 %63, %64
  %66 = add i64 %65, 1
  %67 = mul i64 5, %66
  %68 = add i64 6, %67
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i64, i64* %6, align 8
  br label %78

76:                                               ; preds = %61
  %77 = load i64, i64* @PNG_UINT_31_MAX, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i64 [ %75, %74 ], [ %77, %76 ]
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i64, i64* %6, align 8
  br label %87

85:                                               ; preds = %78
  %86 = load i64, i64* %5, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i64 [ %84, %83 ], [ %86, %85 ]
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %87, %2
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @png_debug2(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %94, i64 %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = call i32 @png_chunk_error(%struct.TYPE_4__* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93, %89
  ret void
}

declare dso_local i32 @png_debug2(i32, i8*, i64, i64) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
