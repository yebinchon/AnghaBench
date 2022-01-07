; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_delete_range.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_delete_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_10__*, i32, i32)* @ngx_stream_geo_delete_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_geo_delete_range(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %14, align 8
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %126, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %130

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 16
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 65535
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  br label %34

33:                                               ; preds = %22
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, 65535
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 65535
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %13, align 8
  br label %44

43:                                               ; preds = %34
  store i64 65535, i64* %13, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %15, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %54 = icmp eq %struct.TYPE_11__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %44
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %44
  store i64 1, i64* %14, align 8
  br label %121

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %16, align 8
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %117, %61
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %65
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %71
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %80, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %97, 1
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %98, %99
  %101 = mul i64 %100, 16
  %102 = trunc i64 %101 to i32
  %103 = call i32 @ngx_memmove(%struct.TYPE_9__* %90, %struct.TYPE_9__* %94, i32 %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %105, align 8
  br label %120

108:                                              ; preds = %79, %71
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub i64 %112, 1
  %114 = icmp eq i64 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i64 1, i64* %14, align 8
  br label %116

116:                                              ; preds = %115, %108
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %11, align 8
  br label %65

120:                                              ; preds = %87, %65
  br label %121

121:                                              ; preds = %120, %60
  %122 = load i64, i64* %10, align 8
  %123 = icmp eq i64 %122, 65535
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %130

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 65536
  %129 = and i32 %128, -65536
  store i32 %129, i32* %9, align 4
  br label %18

130:                                              ; preds = %124, %18
  %131 = load i64, i64* %14, align 8
  ret i64 %131
}

declare dso_local i32 @ngx_memmove(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
