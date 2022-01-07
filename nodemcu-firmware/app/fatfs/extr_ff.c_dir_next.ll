; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_dir_next.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_dir_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i64 }

@SZDIRE = common dso_local global i32 0, align 4
@FF_FS_EXFAT = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@MAX_DIR_EX = common dso_local global i64 0, align 8
@MAX_DIR = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_DENIED = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32)* @dir_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dir_next(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SZDIRE, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* @FF_FS_EXFAT, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FS_EXFAT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @MAX_DIR_EX, align 8
  br label %31

29:                                               ; preds = %21, %2
  %30 = load i64, i64* @MAX_DIR, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  %33 = trunc i64 %32 to i32
  %34 = icmp sge i32 %18, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @FR_NO_FILE, align 8
  store i64 %44, i64* %3, align 8
  br label %179

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = call i32 @SS(%struct.TYPE_9__* %47)
  %49 = srem i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %163

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SZDIRE, align 4
  %63 = sdiv i32 %61, %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  %71 = load i64, i64* @FR_NO_FILE, align 8
  store i64 %71, i64* %3, align 8
  br label %179

72:                                               ; preds = %60
  br label %162

73:                                               ; preds = %51
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = call i32 @SS(%struct.TYPE_9__* %75)
  %77 = sdiv i32 %74, %76
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %77, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %161

84:                                               ; preds = %73
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @get_fat(%struct.TYPE_11__* %86, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp sle i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %94, i64* %3, align 8
  br label %179

95:                                               ; preds = %84
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %99, i64* %3, align 8
  br label %179

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %101, %104
  br i1 %105, label %106, label %152

106:                                              ; preds = %100
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  store i32 0, i32* %111, align 8
  %112 = load i64, i64* @FR_NO_FILE, align 8
  store i64 %112, i64* %3, align 8
  br label %179

113:                                              ; preds = %106
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @create_chain(%struct.TYPE_11__* %115, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i64, i64* @FR_DENIED, align 8
  store i64 %123, i64* %3, align 8
  br label %179

124:                                              ; preds = %113
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %128, i64* %3, align 8
  br label %179

129:                                              ; preds = %124
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %133, i64* %3, align 8
  br label %179

134:                                              ; preds = %129
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i64 @dir_clear(%struct.TYPE_9__* %135, i32 %136)
  %138 = load i64, i64* @FR_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %141, i64* %3, align 8
  br label %179

142:                                              ; preds = %134
  %143 = load i64, i64* @FF_FS_EXFAT, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, 4
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %142
  br label %152

152:                                              ; preds = %151, %100
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @clst2sect(%struct.TYPE_9__* %156, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %152, %73
  br label %162

162:                                              ; preds = %161, %72
  br label %163

163:                                              ; preds = %162, %45
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = call i32 @SS(%struct.TYPE_9__* %171)
  %173 = srem i32 %170, %172
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %169, %174
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* @FR_OK, align 8
  store i64 %178, i64* %3, align 8
  br label %179

179:                                              ; preds = %163, %140, %132, %127, %122, %109, %98, %93, %68, %43
  %180 = load i64, i64* %3, align 8
  ret i64 %180
}

declare dso_local i32 @SS(%struct.TYPE_9__*) #1

declare dso_local i32 @get_fat(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @create_chain(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @dir_clear(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @clst2sect(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
