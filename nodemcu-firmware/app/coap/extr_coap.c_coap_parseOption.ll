; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_parseOption.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_parseOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i32 }

@COAP_ERR_OPTION_TOO_SHORT_FOR_HEADER = common dso_local global i32 0, align 4
@COAP_ERR_OPTION_DELTA_INVALID = common dso_local global i32 0, align 4
@COAP_ERR_OPTION_LEN_INVALID = common dso_local global i32 0, align 4
@COAP_ERR_OPTION_TOO_BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_parseOption(%struct.TYPE_5__* %0, i32* %1, i64** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64**, i64*** %8, align 8
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %10, align 8
  store i64 1, i64* %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @COAP_ERR_OPTION_TOO_SHORT_FOR_HEADER, align 4
  store i32 %20, i32* %5, align 4
  br label %171

21:                                               ; preds = %4
  %22 = load i64*, i64** %10, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, 240
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i64*, i64** %10, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 15
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 13
  br i1 %34, label %35, label %51

35:                                               ; preds = %21
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @COAP_ERR_OPTION_TOO_SHORT_FOR_HEADER, align 4
  store i32 %42, i32* %5, align 4
  br label %171

43:                                               ; preds = %35
  %44 = load i64*, i64** %10, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 13
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %10, align 8
  br label %82

51:                                               ; preds = %21
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 14
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 2
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @COAP_ERR_OPTION_TOO_SHORT_FOR_HEADER, align 4
  store i32 %61, i32* %5, align 4
  br label %171

62:                                               ; preds = %54
  %63 = load i64*, i64** %10, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = shl i64 %65, 8
  %67 = load i64*, i64** %10, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %66, %69
  %71 = add i64 %70, 269
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i64*, i64** %10, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  store i64* %74, i64** %10, align 8
  br label %81

75:                                               ; preds = %51
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 15
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @COAP_ERR_OPTION_DELTA_INVALID, align 4
  store i32 %79, i32* %5, align 4
  br label %171

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %43
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 13
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @COAP_ERR_OPTION_TOO_SHORT_FOR_HEADER, align 4
  store i32 %92, i32* %5, align 4
  br label %171

93:                                               ; preds = %85
  %94 = load i64*, i64** %10, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 13
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  %99 = load i64*, i64** %10, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %10, align 8
  br label %132

101:                                              ; preds = %82
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 14
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 2
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @COAP_ERR_OPTION_TOO_SHORT_FOR_HEADER, align 4
  store i32 %111, i32* %5, align 4
  br label %171

112:                                              ; preds = %104
  %113 = load i64*, i64** %10, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = shl i64 %115, 8
  %117 = load i64*, i64** %10, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = or i64 %116, %119
  %121 = add i64 %120, 269
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  %123 = load i64*, i64** %10, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  store i64* %124, i64** %10, align 8
  br label %131

125:                                              ; preds = %101
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 15
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @COAP_ERR_OPTION_LEN_INVALID, align 4
  store i32 %129, i32* %5, align 4
  br label %171

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %112
  br label %132

132:                                              ; preds = %131, %93
  %133 = load i64*, i64** %10, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64**, i64*** %8, align 8
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = icmp ugt i64* %137, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i32, i32* @COAP_ERR_OPTION_TOO_BIG, align 4
  store i32 %144, i32* %5, align 4
  br label %171

145:                                              ; preds = %132
  %146 = load i32, i32* %13, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %146, %148
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i64*, i64** %10, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i64* %153, i64** %156, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load i64*, i64** %10, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64**, i64*** %8, align 8
  store i64* %165, i64** %166, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %167
  store i32 %170, i32* %168, align 4
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %145, %143, %128, %110, %91, %78, %60, %41, %19
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
