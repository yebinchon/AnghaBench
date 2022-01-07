; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_runShellCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_runShellCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHELL_COMMAND_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: undefined variable \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: shell command is too long\0A\00", align 1
@timer_exceeded = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: could not launch shell command\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%s: could not read result of shell command\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: could not close shell command\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: shell command must return an integer (not \22%s\22)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"setshell\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**, i32)* @runShellCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runShellCommand(i32* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* @SHELL_COMMAND_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %123, %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %126

29:                                               ; preds = %25
  %30 = load i8**, i8*** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 58
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %18, align 8
  br label %85

45:                                               ; preds = %29
  %46 = load i8**, i8*** %8, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load i8**, i8*** %8, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %18, align 8
  br label %84

62:                                               ; preds = %45
  %63 = load i32*, i32** %6, align 8
  %64 = load i8**, i8*** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i8* @getVariable(i32* %63, i8* %69)
  store i8* %70, i8** %18, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8**, i8*** %8, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %76, i8* %81)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84, %39
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @strlen(i8* %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = add nsw i32 %90, %94
  %96 = load i32, i32* @SHELL_COMMAND_SIZE, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp sge i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %85
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8**, i8*** %8, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

105:                                              ; preds = %85
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %24, i64 %111
  store i8 32, i8* %112, align 1
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %24, i64 %115
  %117 = load i8*, i8** %18, align 8
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @memcpy(i8* %116, i8* %117, i32 %118)
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %25

126:                                              ; preds = %25
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %24, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %7, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = call i64 @system(i8* %24)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* @timer_exceeded, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @stderr, align 4
  %140 = load i8**, i8*** %8, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %138, %135
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

145:                                              ; preds = %132
  store i32 1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

146:                                              ; preds = %126
  %147 = call i32* @popen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %147, i32** %14, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32, i32* @stderr, align 4
  %151 = load i8**, i8*** %8, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %153)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

155:                                              ; preds = %146
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %157 = load i32*, i32** %14, align 8
  %158 = call i32* @fgets(i8* %156, i32 64, i32* %157)
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i32, i32* @timer_exceeded, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* @stderr, align 4
  %165 = load i8**, i8*** %8, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %163, %160
  %170 = load i32*, i32** %14, align 8
  %171 = call i64 @pclose(i32* %170)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

172:                                              ; preds = %155
  %173 = load i32*, i32** %14, align 8
  %174 = call i64 @pclose(i32* %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i32, i32* @stderr, align 4
  %178 = load i8**, i8*** %8, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %180)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

182:                                              ; preds = %172
  %183 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %184 = call i64 @strtol(i8* %183, i8** %16, i32 10)
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %198, %182
  %187 = load i8*, i8** %16, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i8*, i8** %16, align 8
  %193 = load i8, i8* %192, align 1
  %194 = call i64 @isspace(i8 zeroext %193)
  %195 = icmp ne i64 %194, 0
  br label %196

196:                                              ; preds = %191, %186
  %197 = phi i1 [ false, %186 ], [ %195, %191 ]
  br i1 %197, label %198, label %201

198:                                              ; preds = %196
  %199 = load i8*, i8** %16, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %16, align 8
  br label %186

201:                                              ; preds = %196
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %203 = load i8, i8* %202, align 16
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load i8*, i8** %16, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206, %201
  %212 = load i32, i32* @stderr, align 4
  %213 = load i8**, i8*** %8, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %217 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %215, i8* %216)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

218:                                              ; preds = %206
  %219 = load i32*, i32** %6, align 8
  %220 = load i8*, i8** %7, align 8
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @putVariableInt(i32* %219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

225:                                              ; preds = %218
  store i32 1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %226

226:                                              ; preds = %225, %224, %211, %176, %169, %149, %145, %144, %99, %72
  %227 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getVariable(i32*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @system(i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @pclose(i32*) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @putVariableInt(i32*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
