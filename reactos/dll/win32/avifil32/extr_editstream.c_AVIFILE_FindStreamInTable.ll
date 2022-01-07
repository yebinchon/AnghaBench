; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_editstream.c_AVIFILE_FindStreamInTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_editstream.c_AVIFILE_FindStreamInTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64, i32* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"(%p,%u,%p,%p,%p,%d)\0A\00", align 1
@AVIERR_BADPARAM = common dso_local global i32 0, align 4
@AVIERR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c" -- pos=0 && b=1 -> (%p,%u,%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c" -> ERROR (NULL,0,0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32**, i64*, i64*, i64)* @AVIFILE_FindStreamInTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_FindStreamInTable(%struct.TYPE_8__* %0, i64 %1, i32** %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32** %2, i32*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32**, i32*** %10, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %15, i64 %16, i32** %17, i64* %18, i64* %19, i64 %20)
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @AVIERR_BADPARAM, align 4
  store i32 %29, i32* %7, align 4
  br label %135

30:                                               ; preds = %6
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %9, align 8
  store i64 0, i64* %14, align 8
  br label %37

37:                                               ; preds = %89, %30
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %92

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %44, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %43
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32**, i32*** %10, align 8
  store i32* %60, i32** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64*, i64** %11, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64*, i64** %12, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %53
  %75 = load i64, i64* %14, align 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %53
  %78 = load i32, i32* @AVIERR_OK, align 4
  store i32 %78, i32* %7, align 4
  br label %135

79:                                               ; preds = %43
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %14, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %14, align 8
  br label %37

92:                                               ; preds = %37
  %93 = load i64, i64* %9, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %92
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %95
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32**, i32*** %10, align 8
  store i32* %106, i32** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i64 @EditStreamEnd(%struct.TYPE_8__* %108, i64 %109)
  %111 = load i64*, i64** %11, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load i64, i64* %14, align 8
  %116 = load i64*, i64** %12, align 8
  store i64 %115, i64* %116, align 8
  br label %117

117:                                              ; preds = %114, %98
  %118 = load i32**, i32*** %10, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = load i64*, i64** %11, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %119, i64 %121, i64 %122)
  %124 = load i32, i32* @AVIERR_OK, align 4
  store i32 %124, i32* %7, align 4
  br label %135

125:                                              ; preds = %95, %92
  %126 = load i32**, i32*** %10, align 8
  store i32* null, i32** %126, align 8
  %127 = load i64*, i64** %11, align 8
  store i64 0, i64* %127, align 8
  %128 = load i64*, i64** %12, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i64*, i64** %12, align 8
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %130, %125
  %133 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @AVIERR_BADPARAM, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %132, %117, %77, %28
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @EditStreamEnd(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
