; ModuleID = '/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_create_chain.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_create_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @create_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_chain(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %22
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @get_fat(%struct.TYPE_9__* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %192

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %192

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %192

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %29
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %192

58:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 2, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @get_fat(%struct.TYPE_9__* %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %192

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %91, %85
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %58
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %140, %104
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  store i32 2, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %192

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %106
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @get_fat(%struct.TYPE_9__* %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %141

127:                                              ; preds = %120
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %192

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %192

140:                                              ; preds = %135
  br label %106

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %101
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i64 @put_fat(%struct.TYPE_10__* %143, i32 %144, i32 -1)
  store i64 %145, i64* %9, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* @FR_OK, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i64 @put_fat(%struct.TYPE_10__* %153, i32 %154, i32 %155)
  store i64 %156, i64* %9, align 8
  br label %157

157:                                              ; preds = %152, %149, %142
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @FR_OK, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = icmp sle i64 %167, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %161
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %174, %161
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, 1
  store i32 %183, i32* %181, align 8
  br label %190

184:                                              ; preds = %157
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* @FR_DISK_ERR, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 -1, i32 1
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %184, %179
  %191 = load i32, i32* %7, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %139, %133, %118, %80, %57, %48, %40, %36
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @get_fat(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @put_fat(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
