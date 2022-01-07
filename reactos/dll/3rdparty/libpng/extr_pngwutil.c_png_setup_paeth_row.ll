; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_paeth_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_paeth_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@PNG_FILTER_VALUE_PAETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64, i64)* @png_setup_paeth_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @png_setup_paeth_row(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %15, align 8
  %24 = load i32, i32* @PNG_FILTER_VALUE_PAETH, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  store i64 0, i64* %14, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %9, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %11, align 8
  br label %41

41:                                               ; preds = %71, %4
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  %51 = load i32, i32* %49, align 4
  %52 = sub nsw i32 %48, %51
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  store i32 %56, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ult i32 %59, 128
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %16, align 4
  br label %66

63:                                               ; preds = %45
  %64 = load i32, i32* %16, align 4
  %65 = sub i32 256, %64
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %62, %61 ], [ %65, %63 ]
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %14, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %14, align 8
  br label %41

74:                                               ; preds = %41
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32* %78, i32** %13, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32* %82, i32** %12, align 8
  br label %83

83:                                               ; preds = %185, %74
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %188

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %11, align 8
  %90 = load i32, i32* %88, align 4
  store i32 %90, i32* %18, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* %91, align 4
  store i32 %93, i32* %19, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %13, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %19, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %22, align 4
  %103 = load i32, i32* %23, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %87
  %106 = load i32, i32* %23, align 4
  %107 = sub nsw i32 0, %106
  br label %110

108:                                              ; preds = %87
  %109 = load i32, i32* %23, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i32 [ %107, %105 ], [ %109, %108 ]
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %22, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %22, align 4
  %116 = sub nsw i32 0, %115
  br label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %22, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i32 [ %116, %114 ], [ %118, %117 ]
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %22, align 4
  %123 = add nsw i32 %121, %122
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %126, %127
  %129 = sub nsw i32 0, %128
  br label %134

130:                                              ; preds = %119
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 %131, %132
  br label %134

134:                                              ; preds = %130, %125
  %135 = phi i32 [ %129, %125 ], [ %133, %130 ]
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %21, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %22, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %17, align 4
  br label %155

145:                                              ; preds = %139, %134
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %22, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* %18, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %19, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  br label %155

155:                                              ; preds = %153, %143
  %156 = phi i32 [ %144, %143 ], [ %154, %153 ]
  store i32 %156, i32* %23, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %9, align 8
  %159 = load i32, i32* %157, align 4
  %160 = load i32, i32* %23, align 4
  %161 = sub nsw i32 %159, %160
  %162 = and i32 %161, 255
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  store i32 %165, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp ult i32 %168, 128
  br i1 %169, label %170, label %172

170:                                              ; preds = %155
  %171 = load i32, i32* %16, align 4
  br label %175

172:                                              ; preds = %155
  %173 = load i32, i32* %16, align 4
  %174 = sub i32 256, %173
  br label %175

175:                                              ; preds = %172, %170
  %176 = phi i32 [ %171, %170 ], [ %174, %172 ]
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %15, align 8
  %179 = add i64 %178, %177
  store i64 %179, i64* %15, align 8
  %180 = load i64, i64* %15, align 8
  %181 = load i64, i64* %8, align 8
  %182 = icmp ugt i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %188

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %14, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %14, align 8
  br label %83

188:                                              ; preds = %183, %83
  %189 = load i64, i64* %15, align 8
  ret i64 %189
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
