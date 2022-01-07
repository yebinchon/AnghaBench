; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/rssileds/src/extr_rssileds.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/rssileds/src/extr_rssileds.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwinfo_ops = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [61 x i8] c"syntax: %s (ifname) (refresh) (threshold) (rule) [rule] ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"  rule: (sysfs-name) (minq) (maxq) (offset) (factore)\0A\00", align 1
@ifname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rssileds\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"monitoring %s, refresh rate %d, threshold %d\0A\00", align 1
@BACKEND_RETRY_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwinfo_ops*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.iwinfo_ops* null, %struct.iwinfo_ops** %11, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 9
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 4
  %19 = srem i32 %18, 5
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16, %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %187

27:                                               ; preds = %16
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** @ifname, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %187

37:                                               ; preds = %27
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %187

44:                                               ; preds = %37
  %45 = load i32, i32* @LOG_PID, align 4
  %46 = load i32, i32* @LOG_DAEMON, align 4
  %47 = call i32 @openlog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @LOG_INFO, align 4
  %49 = load i8*, i8** @ifname, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @syslog(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %13, align 8
  store i32 4, i32* %6, align 4
  br label %54

54:                                               ; preds = %133, %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %136

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = call i8* @calloc(i32 32, i32 1)
  %63 = bitcast i8* %62 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %13, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %12, align 8
  br label %73

65:                                               ; preds = %58
  %66 = call i8* @calloc(i32 32, i32 1)
  %67 = bitcast i8* %66 to %struct.TYPE_4__*
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %13, align 8
  br label %73

73:                                               ; preds = %65, %61
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @init_led(i32* %75, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %187

84:                                               ; preds = %73
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @sscanf(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %92)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %187

96:                                               ; preds = %84
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = call i32 @sscanf(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %104)
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %187

108:                                              ; preds = %96
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = call i32 @sscanf(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %116)
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %187

120:                                              ; preds = %108
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = call i32 @sscanf(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %128)
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %187

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 5
  store i32 %135, i32* %6, align 4
  br label %54

136:                                              ; preds = %54
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %138 = call i32 @log_rules(%struct.TYPE_4__* %137)
  store i32 -1, i32* %8, align 4
  br label %139

139:                                              ; preds = %184, %136
  %140 = load %struct.iwinfo_ops*, %struct.iwinfo_ops** %11, align 8
  %141 = load i8*, i8** @ifname, align 8
  %142 = call i32 @quality(%struct.iwinfo_ops* %140, i8* %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %150, %151
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %148, %139
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @update_leds(%struct.TYPE_4__* %155, i32 %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %154, %148
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %181

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %181

165:                                              ; preds = %162
  %166 = load %struct.iwinfo_ops*, %struct.iwinfo_ops** %11, align 8
  %167 = icmp ne %struct.iwinfo_ops* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = call i32 (...) @iwinfo_finish()
  store %struct.iwinfo_ops* null, %struct.iwinfo_ops** %11, align 8
  %170 = load i32, i32* @BACKEND_RETRY_DELAY, align 4
  %171 = call i32 @usleep(i32 %170)
  br label %172

172:                                              ; preds = %168, %165
  br label %173

173:                                              ; preds = %177, %172
  %174 = load i8*, i8** @ifname, align 8
  %175 = call i64 @open_backend(%struct.iwinfo_ops** %11, i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @BACKEND_RETRY_DELAY, align 4
  %179 = call i32 @usleep(i32 %178)
  br label %173

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %162, %159
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @usleep(i32 %182)
  br label %184

184:                                              ; preds = %181
  br i1 true, label %139, label %185

185:                                              ; preds = %184
  %186 = call i32 (...) @iwinfo_finish()
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %131, %119, %107, %95, %83, %43, %36, %21
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @init_led(i32*, i8*) #1

declare dso_local i32 @log_rules(%struct.TYPE_4__*) #1

declare dso_local i32 @quality(%struct.iwinfo_ops*, i8*) #1

declare dso_local i32 @update_leds(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @iwinfo_finish(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @open_backend(%struct.iwinfo_ops**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
