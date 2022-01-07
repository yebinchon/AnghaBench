; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_cea708.c_cea708_parse_h264.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_cea708.c_cea708_parse_h264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32 }

@t35_provider_atsc = common dso_local global i64 0, align 8
@t35_provider_direct_tv = common dso_local global i64 0, align 8
@LIBCAPTION_OK = common dso_local global i32 0, align 4
@LIBCAPTION_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cea708_parse_h264(i32* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ugt i64 3, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %168

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32* %34, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 3
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @t35_provider_atsc, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %11
  %43 = load i64, i64* %6, align 8
  %44 = icmp ugt i64 4, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %168

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 24
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 %50, %54
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %55, %59
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub i64 %69, 4
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %46, %11
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 0, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 0, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i64, i64* %6, align 8
  %83 = icmp ugt i64 1, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %168

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32* %87, i32** %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %117

90:                                               ; preds = %76, %71
  %91 = load i64, i64* @t35_provider_atsc, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i64, i64* @t35_provider_direct_tv, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96, %90
  %103 = load i64, i64* %6, align 8
  %104 = icmp ugt i64 1, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %168

106:                                              ; preds = %102
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32* %113, i32** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = sub i64 %114, 1
  store i64 %115, i64* %6, align 8
  br label %116

116:                                              ; preds = %106, %96
  br label %117

117:                                              ; preds = %116, %85
  %118 = load i64, i64* @t35_provider_direct_tv, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i64, i64* %6, align 8
  %125 = icmp ugt i64 1, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %168

127:                                              ; preds = %123
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32* %134, i32** %5, align 8
  %135 = load i64, i64* %6, align 8
  %136 = sub i64 %135, 1
  store i64 %136, i64* %6, align 8
  br label %137

137:                                              ; preds = %127, %117
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 3, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load i64, i64* %6, align 8
  %144 = icmp ule i64 2, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32*, i32** %5, align 8
  %147 = load i64, i64* %6, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  %150 = call i32 @cea708_parse_user_data_type_strcture(i32* %146, i64 %147, i32* %149)
  br label %166

151:                                              ; preds = %142, %137
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 4, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %165

157:                                              ; preds = %151
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 5, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %164

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %162
  br label %165

165:                                              ; preds = %164, %156
  br label %166

166:                                              ; preds = %165, %145
  %167 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %167, i32* %4, align 4
  br label %170

168:                                              ; preds = %126, %105, %84, %45, %10
  %169 = load i32, i32* @LIBCAPTION_ERROR, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @cea708_parse_user_data_type_strcture(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
