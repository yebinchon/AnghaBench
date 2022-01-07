; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_xorimage.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_xorimage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@default_pattern = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"i:o:p:xh\00", align 1
@optarg = common dso_local global i8* null, align 8
@is_hex_pattern = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"illegal arg \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can not open \22%s\22 for reading\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"can not open \22%s\22 for writing\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"pattern cannot be empty\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"provided hex pattern is too long\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"the number of characters (hex) is incorrect\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%2x\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"invalid hex digit around %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"fread error\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"fwrite error\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = load i32*, i32** @stdin, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** @stdout, align 8
  store i32* %23, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %24 = load i8*, i8** @default_pattern, align 8
  store i8* %24, i8** %11, align 8
  store i32 0, i32* %20, align 4
  br label %25

25:                                               ; preds = %42, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %14, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %40 [
    i32 105, label %32
    i32 111, label %34
    i32 112, label %36
    i32 120, label %38
    i32 104, label %39
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** %9, align 8
  br label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %10, align 8
  br label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %11, align 8
  br label %42

38:                                               ; preds = %30
  store i32 1, i32* @is_hex_pattern, align 4
  br label %42

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %30, %39
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %32
  br label %25

43:                                               ; preds = %25
  %44 = load i32, i32* @optind, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @optind, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %47, %43
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* @optind, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %50, %47
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = call i32* @fopen(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %64, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %66, %62, %59
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = call i32* @fopen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %76, i32** %8, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  %82 = call i32 (...) @usage()
  br label %83

83:                                               ; preds = %78, %74, %71
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strlen(i8* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %91 = call i32 (...) @usage()
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* @is_hex_pattern, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %142

95:                                               ; preds = %92
  %96 = load i32, i32* %19, align 4
  %97 = sdiv i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = icmp ugt i64 %98, 128
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 (...) @usage()
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %19, align 4
  %106 = srem i32 %105, 2
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %111 = call i32 (...) @usage()
  br label %112

112:                                              ; preds = %108, %104
  store i32 0, i32* %21, align 4
  br label %113

113:                                              ; preds = %138, %112
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %19, align 4
  %116 = sdiv i32 %115, 2
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %113
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %21, align 4
  %121 = mul nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = call i64 @sscanf(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %13)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load i32, i32* @stderr, align 4
  %128 = load i32, i32* %21, align 4
  %129 = mul nsw i32 %128, 2
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %129)
  %131 = call i32 (...) @usage()
  br label %132

132:                                              ; preds = %126, %118
  %133 = load i32, i32* %13, align 4
  %134 = trunc i32 %133 to i8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 %136
  store i8 %134, i8* %137, align 1
  br label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %21, align 4
  br label %113

141:                                              ; preds = %113
  br label %142

142:                                              ; preds = %141, %92
  br label %143

143:                                              ; preds = %190, %142
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %145 = load i32*, i32** %7, align 8
  %146 = call i64 @fread(i8* %144, i32 1, i32 1024, i32* %145)
  store i64 %146, i64* %18, align 8
  %147 = icmp ugt i64 %146, 0
  br i1 %147, label %148, label %191

148:                                              ; preds = %143
  %149 = load i64, i64* %18, align 8
  %150 = icmp ult i64 %149, 1024
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load i32*, i32** %7, align 8
  %153 = call i64 @ferror(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  br label %156

156:                                              ; preds = %195, %155
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %159 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %159, i32* %3, align 4
  br label %207

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160, %148
  %162 = load i32, i32* @is_hex_pattern, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %166 = load i64, i64* %18, align 8
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %168 = load i32, i32* %19, align 4
  %169 = sdiv i32 %168, 2
  %170 = load i32, i32* %20, align 4
  %171 = call i32 @xor_data(i8* %165, i64 %166, i8* %167, i32 %169, i32 %170)
  store i32 %171, i32* %20, align 4
  br label %179

172:                                              ; preds = %161
  %173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %174 = load i64, i64* %18, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %20, align 4
  %178 = call i32 @xor_data(i8* %173, i64 %174, i8* %175, i32 %176, i32 %177)
  store i32 %178, i32* %20, align 4
  br label %179

179:                                              ; preds = %172, %164
  %180 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %181 = load i64, i64* %18, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @fwrite(i8* %180, i64 %181, i32 1, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %200, %185
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %189 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %189, i32* %3, align 4
  br label %207

190:                                              ; preds = %179
  br label %143

191:                                              ; preds = %143
  %192 = load i32*, i32** %7, align 8
  %193 = call i64 @ferror(i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %156

196:                                              ; preds = %191
  %197 = load i32*, i32** %8, align 8
  %198 = call i64 @fflush(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %186

201:                                              ; preds = %196
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @fclose(i32* %202)
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 @fclose(i32* %204)
  %206 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %201, %186, %156
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @xor_data(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
