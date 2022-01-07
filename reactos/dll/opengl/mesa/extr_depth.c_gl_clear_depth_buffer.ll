; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_depth.c_gl_clear_depth_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_depth.c_gl_clear_depth_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i8**, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@DEPTH_SCALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_clear_depth_buffer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DEPTH_SCALE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %1
  br label %170

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %82, %37
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %44, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %43
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i8** @Z_ADDRESS(%struct.TYPE_12__* %52, i64 %57, i64 %58)
  store i8** %59, i8*** %5, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %64, %69
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %78, %51
  %73 = load i8*, i8** %3, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %5, align 8
  store i8* %73, i8** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %72, label %81

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %4, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %4, align 8
  br label %43

85:                                               ; preds = %43
  br label %170

86:                                               ; preds = %31
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  store i8** %91, i8*** %7, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = mul nsw i64 %96, %101
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %106, %86
  %104 = load i64, i64* %8, align 8
  %105 = icmp sge i64 %104, 16
  br i1 %105, label %106, label %159

106:                                              ; preds = %103
  %107 = load i8*, i8** %3, align 8
  %108 = load i8**, i8*** %7, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = load i8**, i8*** %7, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** %3, align 8
  %114 = load i8**, i8*** %7, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 2
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = load i8**, i8*** %7, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 3
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %3, align 8
  %120 = load i8**, i8*** %7, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 4
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = load i8**, i8*** %7, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 5
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = load i8**, i8*** %7, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 6
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** %3, align 8
  %129 = load i8**, i8*** %7, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 7
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %3, align 8
  %132 = load i8**, i8*** %7, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 8
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %3, align 8
  %135 = load i8**, i8*** %7, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 9
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %3, align 8
  %138 = load i8**, i8*** %7, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 10
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** %3, align 8
  %141 = load i8**, i8*** %7, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 11
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** %3, align 8
  %144 = load i8**, i8*** %7, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 12
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** %3, align 8
  %147 = load i8**, i8*** %7, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 13
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** %3, align 8
  %150 = load i8**, i8*** %7, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 14
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** %3, align 8
  %153 = load i8**, i8*** %7, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 15
  store i8* %152, i8** %154, align 8
  %155 = load i8**, i8*** %7, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 16
  store i8** %156, i8*** %7, align 8
  %157 = load i64, i64* %8, align 8
  %158 = sub nsw i64 %157, 16
  store i64 %158, i64* %8, align 8
  br label %103

159:                                              ; preds = %103
  br label %160

160:                                              ; preds = %163, %159
  %161 = load i64, i64* %8, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i8*, i8** %3, align 8
  %165 = load i8**, i8*** %7, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %7, align 8
  store i8* %164, i8** %165, align 8
  %167 = load i64, i64* %8, align 8
  %168 = add nsw i64 %167, -1
  store i64 %168, i64* %8, align 8
  br label %160

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %30, %169, %85
  ret void
}

declare dso_local i8** @Z_ADDRESS(%struct.TYPE_12__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
