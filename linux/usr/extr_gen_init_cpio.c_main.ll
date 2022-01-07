; ModuleID = '/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 (i8*)* }

@LINE_SIZE = common dso_local global i32 0, align 4
@default_mtime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"t:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid timestamp: %s\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ERROR: unable to open '%s': %s\0A\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"ERROR: incorrect format, could not locate file type line %d: '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"ERROR: incorrect format, newline required line %d: '%s'\0A\00", align 1
@file_handler_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c" line %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"unknown file type line %d: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @LINE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = call i32 @time(i32* null)
  store i32 %23, i32* @default_mtime, align 4
  br label %24

24:                                               ; preds = %65, %2
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %66

32:                                               ; preds = %25
  %33 = load i32, i32* %14, align 4
  switch i32 %33, label %65 [
    i32 116, label %34
    i32 104, label %55
    i32 63, label %55
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 @strtol(i8* %35, i8** %15, i32 10)
  store i32 %36, i32* @default_mtime, align 4
  %37 = load i8*, i8** @optarg, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %15, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40, %34
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @usage(i8* %51)
  %53 = call i32 @exit(i32 1) #4
  unreachable

54:                                               ; preds = %40
  br label %65

55:                                               ; preds = %32, %32
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @usage(i8* %58)
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 104
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 1
  %64 = call i32 @exit(i32 %63) #4
  unreachable

65:                                               ; preds = %32, %54
  br label %24

66:                                               ; preds = %31
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @optind, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @usage(i8* %74)
  %76 = call i32 @exit(i32 1) #4
  unreachable

77:                                               ; preds = %66
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* @optind, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = load i32*, i32** @stdin, align 8
  store i32* %87, i32** %6, align 8
  br label %104

88:                                               ; preds = %77
  %89 = load i8*, i8** %13, align 8
  %90 = call i32* @fopen(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %90, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i8* @strerror(i32 %95)
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %94, i8* %96)
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @usage(i8* %100)
  %102 = call i32 @exit(i32 1) #4
  unreachable

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %86
  br label %105

105:                                              ; preds = %194, %136, %130, %117, %104
  %106 = load i32, i32* @LINE_SIZE, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = call i64 @fgets(i8* %22, i32 %106, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %195

110:                                              ; preds = %105
  %111 = call i64 @strlen(i8* %22)
  store i64 %111, i64* %17, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = load i8, i8* %22, align 16
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 35, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %105

118:                                              ; preds = %110
  %119 = call i8* @strtok(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %119, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %123, i8* %22)
  store i32 -1, i32* %11, align 4
  br label %195

125:                                              ; preds = %118
  %126 = load i8*, i8** %10, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 10, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %105

131:                                              ; preds = %125
  %132 = load i64, i64* %17, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i64 @strlen(i8* %133)
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %105

137:                                              ; preds = %131
  %138 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %138, i8** %9, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @stderr, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %142, i8* %22)
  store i32 -1, i32* %11, align 4
  br label %144

144:                                              ; preds = %140, %137
  store i32 0, i32* %16, align 4
  br label %145

145:                                              ; preds = %179, %144
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %182

153:                                              ; preds = %145
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strcmp(i8* %22, i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %153
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32 (i8*)*, i32 (i8*)** %167, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 %168(i8* %169)
  store i32 %170, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* @stderr, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %172, %162
  br label %182

178:                                              ; preds = %153
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %145

182:                                              ; preds = %177, %145
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_handler_table, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp eq i8* null, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %182
  %191 = load i32, i32* @stderr, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %192, i8* %22)
  br label %194

194:                                              ; preds = %190, %182
  br label %105

195:                                              ; preds = %121, %105
  %196 = load i32, i32* %11, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = call i32 (...) @cpio_trailer()
  br label %200

200:                                              ; preds = %198, %195
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @exit(i32 %201) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @cpio_trailer(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
