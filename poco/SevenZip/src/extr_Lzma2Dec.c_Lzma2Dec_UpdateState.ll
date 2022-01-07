; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Lzma2Dec.c_Lzma2Dec_UpdateState.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Lzma2Dec.c_Lzma2Dec_UpdateState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"\0A %4X \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %2X\00", align 1
@LZMA2_STATE_FINISHED = common dso_local global i32 0, align 4
@LZMA2_STATE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" %8d\00", align 1
@LZMA2_STATE_DATA = common dso_local global i32 0, align 4
@LZMA2_LCLP_MAX = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @Lzma2Dec_UpdateState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lzma2Dec_UpdateState(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %162 [
    i32 133, label %11
    i32 129, label %54
    i32 128, label %61
    i32 132, label %84
    i32 131, label %89
    i32 130, label %122
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @PRF(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32 @PRF(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = load i32, i32* @LZMA2_STATE_FINISHED, align 4
  store i32 %29, i32* %3, align 4
  br label %164

30:                                               ; preds = %11
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i32 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_9__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 127
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %164

42:                                               ; preds = %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store i32 0, i32* %44, align 4
  br label %53

45:                                               ; preds = %30
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 31
  %50 = shl i32 %49, 16
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %42
  store i32 129, i32* %3, align 4
  br label %164

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 %55, 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 128, i32* %3, align 4
  br label %164

61:                                               ; preds = %2
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = call i32 @PRF(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = call i32 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_9__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load i32, i32* @LZMA2_STATE_DATA, align 4
  br label %82

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 132, %81 ]
  store i32 %83, i32* %3, align 4
  br label %164

84:                                               ; preds = %2
  %85 = load i32, i32* %5, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  store i32 131, i32* %3, align 4
  br label %164

89:                                               ; preds = %2
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = call i32 @PRF(i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = call i32 @LZMA2_GET_LZMA_MODE(%struct.TYPE_9__* %104)
  %106 = call i32 @LZMA2_IS_THERE_PROP(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  br label %120

109:                                              ; preds = %89
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @LZMA2_STATE_DATA, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  br label %120

120:                                              ; preds = %118, %108
  %121 = phi i32 [ 130, %108 ], [ %119, %118 ]
  store i32 %121, i32* %3, align 4
  br label %164

122:                                              ; preds = %2
  %123 = load i32, i32* %5, align 4
  %124 = icmp sge i32 %123, 225
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %126, i32* %3, align 4
  br label %164

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = srem i32 %128, 9
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sdiv i32 %130, 9
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = sdiv i32 %132, 5
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %5, align 4
  %139 = srem i32 %138, 5
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @LZMA2_LCLP_MAX, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %127
  %146 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %146, i32* %3, align 4
  br label %164

147:                                              ; preds = %127
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* @False, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @LZMA2_STATE_DATA, align 4
  store i32 %161, i32* %3, align 4
  br label %164

162:                                              ; preds = %2
  %163 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %147, %145, %125, %120, %84, %82, %54, %53, %40, %28
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @PRF(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_9__*) #1

declare dso_local i32 @LZMA2_IS_THERE_PROP(i32) #1

declare dso_local i32 @LZMA2_GET_LZMA_MODE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
