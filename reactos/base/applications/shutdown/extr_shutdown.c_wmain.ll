; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_shutdown.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_shutdown.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandLineOptions = type { i64, i64, i32, i32, i32, i32*, i64, i64, i64, i64, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SE_SHUTDOWN_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SE_REMOTE_SHUTDOWN_NAME = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@IDS_ERROR_ABORT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDS_ERROR_HIBERNATE = common dso_local global i32 0, align 4
@IDS_ERROR_HIBERNATE_ENABLED = common dso_local global i32 0, align 4
@IDS_ERROR_SHUTDOWN_REBOOT = common dso_local global i32 0, align 4
@MAX_SHUTDOWN_TIMEOUT = common dso_local global i64 0, align 8
@IDS_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@EWX_LOGOFF = common dso_local global i32 0, align 4
@IDS_ERROR_LOGOFF = common dso_local global i32 0, align 4
@IDS_ERROR_RESTART = common dso_local global i32 0, align 4
@IDS_ERROR_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.CommandLineOptions, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %8, i64* %6, align 8
  %9 = call i32 (...) @ConInitStdStreams()
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @StdOut, align 4
  %14 = load i32, i32* @IDS_USAGE, align 4
  %15 = call i32 @ConResPuts(i32 %13, i32 %14)
  %16 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %16, i32* %3, align 4
  br label %218

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32**, i32*** %5, align 8
  %20 = call i64 @ParseArguments(%struct.CommandLineOptions* %7, i32 %18, i32** %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @DisplayError(i64 %25)
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %27, i32* %3, align 4
  br label %218

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 10
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @SE_SHUTDOWN_NAME, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @EnablePrivilege(i32 %37, i32 %38)
  br label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @SE_REMOTE_SHUTDOWN_NAME, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @EnablePrivilege(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @AbortSystemShutdownW(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @StdErr, align 4
  %51 = load i32, i32* @IDS_ERROR_ABORT, align 4
  %52 = call i32 @ConResPuts(i32 %50, i32 %51)
  %53 = call i64 (...) @GetLastError()
  %54 = call i32 @DisplayError(i64 %53)
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %218

56:                                               ; preds = %44
  %57 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %57, i32* %3, align 4
  br label %218

58:                                               ; preds = %28
  %59 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = call i64 (...) @IsPwrHibernateAllowed()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = load i32, i32* @SE_SHUTDOWN_NAME, align 4
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i32 @EnablePrivilege(i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %73, i32* %3, align 4
  br label %218

74:                                               ; preds = %65
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @SetSuspendState(i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @StdErr, align 4
  %82 = load i32, i32* @IDS_ERROR_HIBERNATE, align 4
  %83 = call i32 @ConResPuts(i32 %81, i32 %82)
  %84 = call i64 (...) @GetLastError()
  %85 = call i32 @DisplayError(i64 %84)
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %86, i32* %3, align 4
  br label %218

87:                                               ; preds = %74
  %88 = load i32, i32* @StdOut, align 4
  %89 = load i32, i32* @IDS_ERROR_HIBERNATE_ENABLED, align 4
  %90 = call i32 @ConResPuts(i32 %88, i32 %89)
  %91 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %91, i32* %3, align 4
  br label %218

92:                                               ; preds = %62
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %93, i32* %3, align 4
  br label %218

94:                                               ; preds = %58
  %95 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @StdErr, align 4
  %104 = load i32, i32* @IDS_ERROR_SHUTDOWN_REBOOT, align 4
  %105 = call i32 @ConResPuts(i32 %103, i32 %104)
  %106 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %106, i32* %3, align 4
  br label %218

107:                                              ; preds = %98, %94
  %108 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MAX_SHUTDOWN_TIMEOUT, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i32, i32* @StdErr, align 4
  %114 = load i32, i32* @IDS_ERROR_TIMEOUT, align 4
  %115 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @ConResPrintf(i32 %113, i32 %114, i64 %116)
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %118, i32* %3, align 4
  br label %218

119:                                              ; preds = %107
  %120 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = call i64 @ShutdownGuiMain(%struct.CommandLineOptions* byval(%struct.CommandLineOptions) align 8 %7)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %127, i32* %3, align 4
  br label %218

128:                                              ; preds = %123
  %129 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %129, i32* %3, align 4
  br label %218

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %165

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %164, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @SE_SHUTDOWN_NAME, align 4
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i32 @EnablePrivilege(i32 %147, i32 %148)
  %150 = load i32, i32* @EWX_LOGOFF, align 4
  %151 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @ExitWindowsEx(i32 %150, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %156, i32* %3, align 4
  br label %218

157:                                              ; preds = %146
  %158 = load i32, i32* @StdErr, align 4
  %159 = load i32, i32* @IDS_ERROR_LOGOFF, align 4
  %160 = call i32 @ConResPuts(i32 %158, i32 %159)
  %161 = call i64 (...) @GetLastError()
  %162 = call i32 @DisplayError(i64 %161)
  %163 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %163, i32* %3, align 4
  br label %218

164:                                              ; preds = %142, %138
  br label %165

165:                                              ; preds = %164, %134, %130
  %166 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %216

173:                                              ; preds = %169, %165
  %174 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* @SE_SHUTDOWN_NAME, align 4
  %179 = load i32, i32* @TRUE, align 4
  %180 = call i32 @EnablePrivilege(i32 %178, i32 %179)
  br label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %182, i32* %3, align 4
  br label %218

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @InitiateSystemShutdownExW(i32* %185, i32 %187, i64 %189, i32 %191, i64 %193, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %214, label %198

198:                                              ; preds = %183
  %199 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %7, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* @StdErr, align 4
  %204 = load i32, i32* @IDS_ERROR_RESTART, align 4
  %205 = call i32 @ConResPuts(i32 %203, i32 %204)
  br label %210

206:                                              ; preds = %198
  %207 = load i32, i32* @StdErr, align 4
  %208 = load i32, i32* @IDS_ERROR_SHUTDOWN, align 4
  %209 = call i32 @ConResPuts(i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %202
  %211 = call i64 (...) @GetLastError()
  %212 = call i32 @DisplayError(i64 %211)
  %213 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %213, i32* %3, align 4
  br label %218

214:                                              ; preds = %183
  %215 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %215, i32* %3, align 4
  br label %218

216:                                              ; preds = %169
  %217 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %214, %210, %181, %157, %155, %128, %126, %112, %102, %92, %87, %80, %72, %56, %49, %24, %12
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i64 @ParseArguments(%struct.CommandLineOptions*, i32, i32**) #1

declare dso_local i32 @DisplayError(i64) #1

declare dso_local i32 @EnablePrivilege(i32, i32) #1

declare dso_local i32 @AbortSystemShutdownW(i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @IsPwrHibernateAllowed(...) #1

declare dso_local i32 @SetSuspendState(i32, i32, i32) #1

declare dso_local i32 @ConResPrintf(i32, i32, i64) #1

declare dso_local i64 @ShutdownGuiMain(%struct.CommandLineOptions* byval(%struct.CommandLineOptions) align 8) #1

declare dso_local i64 @ExitWindowsEx(i32, i32) #1

declare dso_local i32 @InitiateSystemShutdownExW(i32*, i32, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
