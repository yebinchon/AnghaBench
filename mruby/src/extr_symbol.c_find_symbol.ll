; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_symbol.c_find_symbol.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_symbol.c_find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SYMBOL_NORMAL_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i32, i64*)* @find_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_symbol(%struct.TYPE_5__* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @sym_inline_pack(i8* %13, i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %5, align 8
  br label %124

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @symhash(i8* %21, i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* %12, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %124

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %118, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %11, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %40
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @memcmp(i32 %54, i8* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @SYMBOL_NORMAL_SHIFT, align 8
  %62 = shl i64 %60, %61
  store i64 %62, i64* %5, align 8
  br label %124

63:                                               ; preds = %51, %40
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %111

68:                                               ; preds = %63
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %69, 255
  store i64 %70, i64* %10, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %11, align 8
  br label %76

76:                                               ; preds = %107, %68
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %81 = icmp ult %struct.TYPE_4__* %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %76
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @memcmp(i32 %91, i8* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = ptrtoint %struct.TYPE_4__* %97 to i64
  %102 = ptrtoint %struct.TYPE_4__* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 12
  %105 = load i64, i64* @SYMBOL_NORMAL_SHIFT, align 8
  %106 = shl i64 %104, %105
  store i64 %106, i64* %5, align 8
  br label %124

107:                                              ; preds = %88, %82
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 -1
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %11, align 8
  br label %76

110:                                              ; preds = %76
  store i64 0, i64* %5, align 8
  br label %124

111:                                              ; preds = %63
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %10, align 8
  %117 = sub i64 %116, %115
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %40, label %123

123:                                              ; preds = %118
  store i64 0, i64* %5, align 8
  br label %124

124:                                              ; preds = %123, %110, %96, %59, %38, %18
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i64 @sym_inline_pack(i8*, i32) #1

declare dso_local i64 @symhash(i8*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
