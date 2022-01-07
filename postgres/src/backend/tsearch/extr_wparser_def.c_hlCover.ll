; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_wparser_def.c_hlCover.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_wparser_def.c_hlCover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }

@INT_MAX = common dso_local global i32 0, align 4
@QI_VAL = common dso_local global i64 0, align 8
@TS_EXEC_EMPTY = common dso_local global i32 0, align 4
@checkcondition_HL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32*)* @hlCover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hlCover(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = call %struct.TYPE_15__* @GETQUERY(%struct.TYPE_14__* %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* @INT_MAX, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %73, %4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %22
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QI_VAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 1
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %12, align 8
  br label %73

37:                                               ; preds = %28
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %67, %37
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = icmp eq i32* %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %70

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %39

70:                                               ; preds = %65, %39
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 1
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %12, align 8
  br label %73

73:                                               ; preds = %70, %34
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %22

76:                                               ; preds = %22
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %176

81:                                               ; preds = %76
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = call %struct.TYPE_15__* @GETQUERY(%struct.TYPE_14__* %82)
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %12, align 8
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %134, %81
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %137

90:                                               ; preds = %84
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @QI_VAL, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 1
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %12, align 8
  br label %134

99:                                               ; preds = %90
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %128, %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = icmp eq i32* %114, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %118
  br label %131

127:                                              ; preds = %106
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %10, align 4
  br label %102

131:                                              ; preds = %126, %102
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 1
  store %struct.TYPE_15__* %133, %struct.TYPE_15__** %12, align 8
  br label %134

134:                                              ; preds = %131, %96
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %84

137:                                              ; preds = %84
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp sle i32 %139, %141
  br i1 %142, label %143, label %175

143:                                              ; preds = %137
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %151, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %153, %155
  %157 = add nsw i32 %156, 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = call %struct.TYPE_15__* @GETQUERY(%struct.TYPE_14__* %159)
  %161 = load i32, i32* @TS_EXEC_EMPTY, align 4
  %162 = load i32, i32* @checkcondition_HL, align 4
  %163 = call i64 @TS_execute(%struct.TYPE_15__* %160, %struct.TYPE_13__* %14, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %143
  store i32 1, i32* %5, align 4
  br label %176

166:                                              ; preds = %143
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @hlCover(%struct.TYPE_16__* %170, %struct.TYPE_14__* %171, i32* %172, i32* %173)
  store i32 %174, i32* %5, align 4
  br label %176

175:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %166, %165, %80
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_15__* @GETQUERY(%struct.TYPE_14__*) #1

declare dso_local i64 @TS_execute(%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
