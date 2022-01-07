; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_XzDec.c_XzBlock_Parse.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_XzDec.c_XzBlock_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32* }

@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@XZ_FILTER_PROPS_SIZE_MAX = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XzBlock_Parse(%struct.TYPE_8__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 2
  store i32 %16, i32* %9, align 4
  %17 = load i64*, i64** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @CrcCalc(i64* %17, i32 %18)
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = call i64 @GetUi32(i64* %23)
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %27, i32* %3, align 4
  br label %154

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %33, i32* %3, align 4
  br label %154

34:                                               ; preds = %28
  %35 = load i64*, i64** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i64 @XzBlock_HasPackSize(%struct.TYPE_8__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %34
  %47 = load i64*, i64** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = call i32 @READ_VARINT_AND_CHECK(i64* %47, i32 %48, i32 %49, i64* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = icmp sge i64 %63, -9223372036854775808
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %46
  %66 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %66, i32* %3, align 4
  br label %154

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %34
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = call i64 @XzBlock_HasUnpackSize(%struct.TYPE_8__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i64*, i64** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = call i32 @READ_VARINT_AND_CHECK(i64* %73, i32 %74, i32 %75, i64* %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = call i32 @XzBlock_GetNumFilters(%struct.TYPE_8__* %80)
  store i32 %81, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %133, %79
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %136

86:                                               ; preds = %82
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %10, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @READ_VARINT_AND_CHECK(i64* %93, i32 %94, i32 %95, i64* %97)
  %99 = load i64*, i64** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @READ_VARINT_AND_CHECK(i64* %99, i32 %100, i32 %101, i64* %11)
  %103 = load i64, i64* %11, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub i32 %104, %105
  %107 = zext i32 %106 to i64
  %108 = icmp sgt i64 %103, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %86
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @XZ_FILTER_PROPS_SIZE_MAX, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %86
  %114 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %114, i32* %3, align 4
  br label %154

115:                                              ; preds = %109
  %116 = load i64, i64* %11, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i64*, i64** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @memcpy(i32* %122, i64* %126, i64 %127)
  %129 = load i64, i64* %11, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* %6, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %115
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %82

136:                                              ; preds = %82
  br label %137

137:                                              ; preds = %151, %136
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %137
  %142 = load i64*, i64** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %6, align 4
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %150, i32* %3, align 4
  br label %154

151:                                              ; preds = %141
  br label %137

152:                                              ; preds = %137
  %153 = load i32, i32* @SZ_OK, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %149, %113, %65, %32, %26
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @CrcCalc(i64*, i32) #1

declare dso_local i64 @GetUi32(i64*) #1

declare dso_local i64 @XzBlock_HasPackSize(%struct.TYPE_8__*) #1

declare dso_local i32 @READ_VARINT_AND_CHECK(i64*, i32, i32, i64*) #1

declare dso_local i64 @XzBlock_HasUnpackSize(%struct.TYPE_8__*) #1

declare dso_local i32 @XzBlock_GetNumFilters(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
