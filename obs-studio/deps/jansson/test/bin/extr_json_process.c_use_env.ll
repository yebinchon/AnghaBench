; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/bin/extr_json_process.c_use_env.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/bin/extr_json_process.c_use_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"JSON_INDENT\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid value for JSON_INDENT: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"JSON_COMPACT\00", align 1
@JSON_COMPACT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"JSON_ENSURE_ASCII\00", align 1
@JSON_ENSURE_ASCII = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"JSON_PRESERVE_ORDER\00", align 1
@JSON_PRESERVE_ORDER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"JSON_SORT_KEYS\00", align 1
@JSON_SORT_KEYS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"JSON_REAL_PRECISION\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"invalid value for JSON_REAL_PRECISION: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"HASHSEED\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"STRIP\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Unable to allocate %d bytes\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"%d %d %d\0A%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @use_env() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  %12 = call i32 @getenv_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 31
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %0
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 2, i32* %1, align 4
  br label %163

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @JSON_INDENT(i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %25, %22
  %31 = call i32 @getenv_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* @JSON_COMPACT, align 8
  %35 = load i64, i64* %4, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = call i32 @getenv_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* @JSON_ENSURE_ASCII, align 8
  %42 = load i64, i64* %4, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = call i32 @getenv_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* @JSON_PRESERVE_ORDER, align 8
  %49 = load i64, i64* %4, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = call i32 @getenv_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* @JSON_SORT_KEYS, align 8
  %56 = load i64, i64* %4, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = call i32 @getenv_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 31
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %58
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  store i32 2, i32* %1, align 4
  br label %163

69:                                               ; preds = %62
  %70 = call i64 @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = call i32 @getenv_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %74 = call i32 @json_object_seed(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %3, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @JSON_REAL_PRECISION(i32 %79)
  %81 = load i64, i64* %4, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %78, %75
  %84 = call i32 @getenv_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %139

86:                                               ; preds = %83
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  br label %87

87:                                               ; preds = %86, %129
  %88 = load i64, i64* %7, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %94

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = mul i64 %92, 2
  br label %94

94:                                               ; preds = %91, %90
  %95 = phi i64 [ 128, %90 ], [ %93, %91 ]
  store i64 %95, i64* %7, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i8* @realloc(i8* %96, i64 %97)
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @stderr, align 4
  %103 = load i64, i64* %7, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @free(i8* %106)
  store i32 1, i32* %1, align 4
  br label %163

108:                                              ; preds = %94
  %109 = load i8*, i8** %10, align 8
  store i8* %109, i8** %9, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %8, align 8
  %115 = sub i64 %113, %114
  %116 = load i32, i32* @stdin, align 4
  %117 = call i64 @fread(i8* %112, i32 1, i64 %115, i32 %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = sub i64 %119, %120
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %108
  %124 = load i8*, i8** %9, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %125, %126
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 0, i8* %128, align 1
  br label %133

129:                                              ; preds = %108
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %8, align 8
  br label %87

133:                                              ; preds = %123
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @strip(i8* %134)
  %136 = call i32* @json_loads(i32 %135, i32 0, %struct.TYPE_4__* %6)
  store i32* %136, i32** %5, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @free(i8* %137)
  br label %142

139:                                              ; preds = %83
  %140 = load i32, i32* @stdin, align 4
  %141 = call i32* @json_loadf(i32 %140, i32 0, %struct.TYPE_4__* %6)
  store i32* %141, i32** %5, align 8
  br label %142

142:                                              ; preds = %139, %133
  %143 = load i32*, i32** %5, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %156, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @stderr, align 4
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %148, i32 %150, i32 %152, i8* %154)
  store i32 1, i32* %1, align 4
  br label %163

156:                                              ; preds = %142
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* @stdout, align 4
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @json_dumpf(i32* %157, i32 %158, i64 %159)
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @json_decref(i32* %161)
  store i32 0, i32* %1, align 4
  br label %163

163:                                              ; preds = %156, %145, %101, %65, %18
  %164 = load i32, i32* %1, align 4
  ret i32 %164
}

declare dso_local i32 @getenv_int(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @JSON_INDENT(i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @json_object_seed(i32) #1

declare dso_local i64 @JSON_REAL_PRECISION(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32) #1

declare dso_local i32* @json_loads(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @strip(i8*) #1

declare dso_local i32* @json_loadf(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @json_dumpf(i32*, i32, i64) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
