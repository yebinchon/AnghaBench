; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_shutdown.c_ParseArguments.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_shutdown.c_ParseArguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandLineOptions = type { i32, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@IDS_ERROR_MAX_COMMENT_LENGTH = common dso_local global i32 0, align 4
@ERROR_BAD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CommandLineOptions*, i32, i32**)* @ParseArguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseArguments(%struct.CommandLineOptions* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.CommandLineOptions*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store %struct.CommandLineOptions* %0, %struct.CommandLineOptions** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %10 = icmp ne %struct.CommandLineOptions* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %12, i32* %4, align 4
  br label %239

13:                                               ; preds = %3
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %16 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %15, i32 0, i32 11
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %19 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @FALSE, align 8
  %21 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %22 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @FALSE, align 8
  %24 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %25 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %28 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @FALSE, align 8
  %30 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %31 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %30, i32 0, i32 9
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %34 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %36 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %35, i32 0, i32 0
  store i32 30, i32* %36, align 8
  %37 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %38 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = call i8* @ParseReasonCode(i32* null)
  %40 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %41 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %43 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %46 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %234, %13
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %237

51:                                               ; preds = %47
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %69, label %60

60:                                               ; preds = %51
  %61 = load i32**, i32*** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %233

69:                                               ; preds = %60, %51
  %70 = load i32**, i32*** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @towlower(i32 %76)
  switch i32 %77, label %227 [
    i32 63, label %78
    i32 97, label %83
    i32 99, label %87
    i32 100, label %128
    i32 101, label %147
    i32 102, label %151
    i32 104, label %155
    i32 105, label %159
    i32 108, label %163
    i32 109, label %167
    i32 112, label %185
    i32 114, label %191
    i32 115, label %195
    i32 116, label %199
  ]

78:                                               ; preds = %69
  %79 = load i32, i32* @StdOut, align 4
  %80 = load i32, i32* @IDS_USAGE, align 4
  %81 = call i32 @ConResPuts(i32 %79, i32 %80)
  %82 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %239

83:                                               ; preds = %69
  %84 = load i8*, i8** @TRUE, align 8
  %85 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %86 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %85, i32 0, i32 11
  store i8* %84, i8** %86, align 8
  br label %232

87:                                               ; preds = %69
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %6, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %93, i32* %4, align 4
  br label %239

94:                                               ; preds = %87
  %95 = load i32**, i32*** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load i32**, i32*** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %103, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @wcslen(i32* %108)
  %110 = icmp sle i32 %109, 512
  br i1 %110, label %111, label %122

111:                                              ; preds = %102, %94
  %112 = load i32**, i32*** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %112, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %119 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %118, i32 0, i32 2
  store i32* %117, i32** %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %127

122:                                              ; preds = %102
  %123 = load i32, i32* @StdErr, align 4
  %124 = load i32, i32* @IDS_ERROR_MAX_COMMENT_LENGTH, align 4
  %125 = call i32 @ConResPuts(i32 %123, i32 %124)
  %126 = load i32, i32* @ERROR_BAD_LENGTH, align 4
  store i32 %126, i32* %4, align 4
  br label %239

127:                                              ; preds = %111
  br label %232

128:                                              ; preds = %69
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %6, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %134, i32* %4, align 4
  br label %239

135:                                              ; preds = %128
  %136 = load i32**, i32*** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = call i8* @ParseReasonCode(i32* %141)
  %143 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %144 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %143, i32 0, i32 10
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %232

147:                                              ; preds = %69
  %148 = load i8*, i8** @TRUE, align 8
  %149 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %150 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %149, i32 0, i32 9
  store i8* %148, i8** %150, align 8
  br label %232

151:                                              ; preds = %69
  %152 = load i8*, i8** @TRUE, align 8
  %153 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %154 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  br label %232

155:                                              ; preds = %69
  %156 = load i8*, i8** @TRUE, align 8
  %157 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %158 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %157, i32 0, i32 8
  store i8* %156, i8** %158, align 8
  br label %232

159:                                              ; preds = %69
  %160 = load i8*, i8** @TRUE, align 8
  %161 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %162 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %161, i32 0, i32 7
  store i8* %160, i8** %162, align 8
  br label %232

163:                                              ; preds = %69
  %164 = load i8*, i8** @TRUE, align 8
  %165 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %166 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  br label %232

167:                                              ; preds = %69
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32, i32* %6, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %173, i32* %4, align 4
  br label %239

174:                                              ; preds = %167
  %175 = load i32**, i32*** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %175, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %182 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %181, i32 0, i32 1
  store i32* %180, i32** %182, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %232

185:                                              ; preds = %69
  %186 = load i8*, i8** @TRUE, align 8
  %187 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %188 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  %189 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %190 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %189, i32 0, i32 0
  store i32 0, i32* %190, align 8
  br label %232

191:                                              ; preds = %69
  %192 = load i8*, i8** @TRUE, align 8
  %193 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %194 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %193, i32 0, i32 5
  store i8* %192, i8** %194, align 8
  br label %232

195:                                              ; preds = %69
  %196 = load i8*, i8** @TRUE, align 8
  %197 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %198 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  br label %232

199:                                              ; preds = %69
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  %202 = load i32, i32* %6, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %205, i32* %4, align 4
  br label %239

206:                                              ; preds = %199
  %207 = load i32**, i32*** %7, align 8
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %207, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @_wtoi(i32* %212)
  %214 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %215 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %217 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %206
  %221 = load i8*, i8** @TRUE, align 8
  %222 = load %struct.CommandLineOptions*, %struct.CommandLineOptions** %5, align 8
  %223 = getelementptr inbounds %struct.CommandLineOptions, %struct.CommandLineOptions* %222, i32 0, i32 3
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %220, %206
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %232

227:                                              ; preds = %69
  %228 = load i32, i32* @StdOut, align 4
  %229 = load i32, i32* @IDS_USAGE, align 4
  %230 = call i32 @ConResPuts(i32 %228, i32 %229)
  %231 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %231, i32* %4, align 4
  br label %239

232:                                              ; preds = %224, %195, %191, %185, %174, %163, %159, %155, %151, %147, %135, %127, %83
  br label %233

233:                                              ; preds = %232, %60
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %47

237:                                              ; preds = %47
  %238 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %237, %227, %204, %172, %133, %122, %92, %78, %11
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i8* @ParseReasonCode(i32*) #1

declare dso_local i32 @towlower(i32) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @_wtoi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
