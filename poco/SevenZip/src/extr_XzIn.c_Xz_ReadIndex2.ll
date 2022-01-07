; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_XzIn.c_Xz_ReadIndex2.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_XzIn.c_Xz_ReadIndex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* (%struct.TYPE_10__*, i32)* }

@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i64, %struct.TYPE_10__*)* @Xz_ReadIndex2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Xz_ReadIndex2(%struct.TYPE_11__* %0, i64* %1, i64 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i64 1, i64* %13, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 5
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %4
  %25 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %25, i32* %5, align 4
  br label %145

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, 4
  store i64 %28, i64* %8, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @CrcCalc(i64* %29, i64 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = call i64 @GetUi32(i64* %35)
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %39, i32* %5, align 4
  br label %145

40:                                               ; preds = %26
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @READ_VARINT_AND_CHECK(i64* %41, i64 %42, i64 %43, i64* %15)
  %45 = load i64, i64* %15, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %11, align 8
  %51 = mul i64 %50, 2
  %52 = load i64, i64* %8, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %40
  %55 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %55, i32* %5, align 4
  br label %145

56:                                               ; preds = %49
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %12, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = call i32 @Xz_Free(%struct.TYPE_11__* %58, %struct.TYPE_10__* %59)
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %120

63:                                               ; preds = %56
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__* (%struct.TYPE_10__*, i32)*, %struct.TYPE_12__* (%struct.TYPE_10__*, i32)** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = mul i64 16, %74
  %76 = trunc i64 %75 to i32
  %77 = call %struct.TYPE_12__* %72(%struct.TYPE_10__* %73, i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = icmp eq %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %63
  %85 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %85, i32* %5, align 4
  br label %145

86:                                               ; preds = %63
  store i64 0, i64* %10, align 8
  br label %87

87:                                               ; preds = %116, %86
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %95
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %16, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = call i32 @READ_VARINT_AND_CHECK(i64* %97, i64 %98, i64 %99, i64* %101)
  %103 = load i64*, i64** %7, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = call i32 @READ_VARINT_AND_CHECK(i64* %103, i64 %104, i64 %105, i64* %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %91
  %114 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %114, i32* %5, align 4
  br label %145

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %10, align 8
  br label %87

119:                                              ; preds = %87
  br label %120

120:                                              ; preds = %119, %56
  br label %121

121:                                              ; preds = %134, %120
  %122 = load i64, i64* %13, align 8
  %123 = and i64 %122, 3
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i64*, i64** %7, align 8
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %13, align 8
  %129 = getelementptr inbounds i64, i64* %126, i64 %127
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %133, i32* %5, align 4
  br label %145

134:                                              ; preds = %125
  br label %121

135:                                              ; preds = %121
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %8, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @SZ_OK, align 4
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %132, %113, %84, %54, %38, %24
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @CrcCalc(i64*, i64) #1

declare dso_local i64 @GetUi32(i64*) #1

declare dso_local i32 @READ_VARINT_AND_CHECK(i64*, i64, i64, i64*) #1

declare dso_local i32 @Xz_Free(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
