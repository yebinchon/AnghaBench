; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_frame_from_pixmap.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_frame_from_pixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64* }

@MAX_SEGS_PER_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Font too curvy. Increase MAX_SEGS_PER_LINE and recompile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame* (i8*, i32, i32)* @frame_from_pixmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame* @frame_from_pixmap(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.frame*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.frame* @frame_mk(i32 %19, i32 %20)
  store %struct.frame* %21, %struct.frame** %10, align 8
  %22 = load %struct.frame*, %struct.frame** %10, align 8
  %23 = icmp ne %struct.frame* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store %struct.frame* null, %struct.frame** %4, align 8
  br label %183

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %178, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %181

30:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  %31 = load %struct.frame*, %struct.frame** %10, align 8
  %32 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %11, align 8
  %39 = load %struct.frame*, %struct.frame** %10, align 8
  %40 = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %12, align 8
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %62, %30
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @MAX_SEGS_PER_LINE, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %52, i64* %56, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %47

65:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %122, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @MAX_SEGS_PER_LINE, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %125

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @get_bit(i8* %76, i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %87

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %71

87:                                               ; preds = %82, %71
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %125

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64*, i64** %11, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %112, %92
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @get_bit(i8* %104, i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %115

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %99

115:                                              ; preds = %110, %99
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64*, i64** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %117, i64* %121, align 8
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %66

125:                                              ; preds = %91, %66
  br label %126

126:                                              ; preds = %140, %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @get_bit(i8* %131, i32 %132, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store %struct.frame* null, %struct.frame** %4, align 8
  br label %183

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %126

143:                                              ; preds = %126
  %144 = load i32, i32* %14, align 4
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %177

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %173, %147
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @MAX_SEGS_PER_LINE, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %176

152:                                              ; preds = %148
  %153 = load i64*, i64** %11, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %11, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64 %158, i64* %162, align 8
  %163 = load i64*, i64** %12, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** %12, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  store i64 %168, i64* %172, align 8
  br label %173

173:                                              ; preds = %152
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %148

176:                                              ; preds = %148
  br label %177

177:                                              ; preds = %176, %143
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %26

181:                                              ; preds = %26
  %182 = load %struct.frame*, %struct.frame** %10, align 8
  store %struct.frame* %182, %struct.frame** %4, align 8
  br label %183

183:                                              ; preds = %181, %137, %24
  %184 = load %struct.frame*, %struct.frame** %4, align 8
  ret %struct.frame* %184
}

declare dso_local %struct.frame* @frame_mk(i32, i32) #1

declare dso_local i64 @get_bit(i8*, i32, i32, i32) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
