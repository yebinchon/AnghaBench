; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_prepare_logging.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_prepare_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.stat = type { i64, i32 }

@logging = common dso_local global i32 0, align 4
@TMON_LOG_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@tmon_log = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to open log file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to stat log file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Log file is a symlink.  Will not log\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"We don't own the log file.  Not logging\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"#----------- THERMAL SYSTEM CONFIG -------------\0A\00", align 1
@ptdata = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"#thermal zone %s%02d cdevs binding: %32s\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"#\09TP%02d type:%s, temp:%lu\0A\00", align 1
@trip_type_name = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"#cooling devices%02d: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"#---------- THERMAL DATA LOG STARTED -----------\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Samples TargetTemp \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s%d    \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s%d \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_logging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_logging() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 8
  %3 = alloca [33 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load i32, i32* @logging, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %212

8:                                                ; preds = %0
  %9 = load i32, i32* @TMON_LOG_FILE, align 4
  %10 = call i32* @fopen(i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** @tmon_log, align 8
  %11 = load i32*, i32** @tmon_log, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load i32, i32* @TMON_LOG_FILE, align 4
  %16 = call i32 (i32, i8*, ...) @syslog(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %212

17:                                               ; preds = %8
  %18 = load i32, i32* @TMON_LOG_FILE, align 4
  %19 = call i64 @lstat(i32 %18, %struct.stat* %2)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = load i32, i32* @TMON_LOG_FILE, align 4
  %24 = call i32 (i32, i8*, ...) @syslog(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** @tmon_log, align 8
  %26 = call i32 @fclose(i32* %25)
  store i32* null, i32** @tmon_log, align 8
  br label %212

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @S_ISLNK(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = call i32 (i32, i8*, ...) @syslog(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** @tmon_log, align 8
  %36 = call i32 @fclose(i32* %35)
  store i32* null, i32** @tmon_log, align 8
  br label %212

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 (...) @getuid()
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = call i32 (i32, i8*, ...) @syslog(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** @tmon_log, align 8
  %46 = call i32 @fclose(i32* %45)
  store i32* null, i32** @tmon_log, align 8
  br label %212

47:                                               ; preds = %37
  %48 = load i32*, i32** @tmon_log, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %138, %47
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 0), align 8
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %141

54:                                               ; preds = %50
  %55 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 0
  %56 = call i32 @memset(i8* %55, i32 0, i32 33)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %77, %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 32
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 49, i32 48
  %73 = trunc i32 %72 to i8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 %75
  store i8 %73, i8* %76, align 1
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %57

80:                                               ; preds = %57
  %81 = load i32*, i32** @tmon_log, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 0
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %87, i8* %93, i8* %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %134, %80
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %97, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %96
  %106 = load i32*, i32** @tmon_log, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i8**, i8*** @trip_type_name, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i8*, i8** %108, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %107, i8* %121, i32 %132)
  br label %134

134:                                              ; preds = %105
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %96

137:                                              ; preds = %96
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %1, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %1, align 4
  br label %50

141:                                              ; preds = %50
  store i32 0, i32* %1, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %1, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 1), align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load i32*, i32** @tmon_log, align 8
  %148 = load i32, i32* %1, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 2), align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %148, i8* %154)
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %1, align 4
  br label %142

159:                                              ; preds = %142
  %160 = load i32*, i32** @tmon_log, align 8
  %161 = call i32 (i32*, i8*, ...) @fprintf(i32* %160, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %162 = load i32*, i32** @tmon_log, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %164

164:                                              ; preds = %183, %159
  %165 = load i32, i32* %1, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 0), align 8
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %164
  %169 = load i32*, i32** @tmon_log, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %171 = load i32, i32* %1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 3), align 8
  %177 = load i32, i32* %1, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %175, i8* %181)
  br label %183

183:                                              ; preds = %168
  %184 = load i32, i32* %1, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %1, align 4
  br label %164

186:                                              ; preds = %164
  store i32 0, i32* %1, align 4
  br label %187

187:                                              ; preds = %206, %186
  %188 = load i32, i32* %1, align 4
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 1), align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load i32*, i32** @tmon_log, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 2), align 8
  %194 = load i32, i32* %1, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ptdata, i32 0, i32 2), align 8
  %200 = load i32, i32* %1, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %198, i32 %204)
  br label %206

206:                                              ; preds = %191
  %207 = load i32, i32* %1, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %1, align 4
  br label %187

209:                                              ; preds = %187
  %210 = load i32*, i32** @tmon_log, align 8
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %42, %32, %21, %13, %7
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
