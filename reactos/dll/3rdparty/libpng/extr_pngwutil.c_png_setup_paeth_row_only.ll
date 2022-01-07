; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_paeth_row_only.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_paeth_row_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@PNG_FILTER_VALUE_PAETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64)* @png_setup_paeth_row_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_setup_paeth_row_only(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load i32, i32* @PNG_FILTER_VALUE_PAETH, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  store i64 0, i64* %12, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32* %36, i32** %9, align 8
  br label %37

37:                                               ; preds = %55, %3
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* %42, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %9, align 8
  %47 = load i32, i32* %45, align 4
  %48 = sub nsw i32 %44, %47
  %49 = and i32 %48, 255
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %37

58:                                               ; preds = %37
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32* %62, i32** %11, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32* %66, i32** %10, align 8
  br label %67

67:                                               ; preds = %152, %58
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %155

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %9, align 8
  %74 = load i32, i32* %72, align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %10, align 8
  %77 = load i32, i32* %75, align 4
  store i32 %77, i32* %15, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* %78, align 4
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %71
  %90 = load i32, i32* %19, align 4
  %91 = sub nsw i32 0, %90
  br label %94

92:                                               ; preds = %71
  %93 = load i32, i32* %19, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %18, align 4
  %100 = sub nsw i32 0, %99
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %18, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi i32 [ %100, %98 ], [ %102, %101 ]
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %105, %106
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %110, %111
  %113 = sub nsw i32 0, %112
  br label %118

114:                                              ; preds = %103
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %115, %116
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ %113, %109 ], [ %117, %114 ]
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %13, align 4
  br label %139

129:                                              ; preds = %123, %118
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* %14, align 4
  br label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %15, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  br label %139

139:                                              ; preds = %137, %127
  %140 = phi i32 [ %128, %127 ], [ %138, %137 ]
  store i32 %140, i32* %19, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %7, align 8
  %143 = load i32, i32* %141, align 4
  %144 = load i32, i32* %19, align 4
  %145 = sub nsw i32 %143, %144
  %146 = and i32 %145, 255
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = ptrtoint i8* %148 to i32
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %8, align 8
  store i32 %149, i32* %150, align 4
  br label %152

152:                                              ; preds = %139
  %153 = load i64, i64* %12, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %12, align 8
  br label %67

155:                                              ; preds = %67
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
