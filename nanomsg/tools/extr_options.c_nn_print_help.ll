; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_print_help.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { %struct.nn_option*, %struct.TYPE_2__* }
%struct.nn_option = type { i8*, i8*, i32, i8*, i8* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" --%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c",-%c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" ARG\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"                        \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\0A                        \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*, i32*)* @nn_print_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_print_help(%struct.nn_parse_context* %0, i32* %1) #0 {
  %3 = alloca %struct.nn_parse_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nn_option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @nn_print_usage(%struct.nn_parse_context* %12, i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %17 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i8* null, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %145, %2
  %23 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %24 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %23, i32 0, i32 0
  %25 = load %struct.nn_option*, %struct.nn_option** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %25, i64 %27
  store %struct.nn_option* %28, %struct.nn_option** %7, align 8
  %29 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %30 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %148

34:                                               ; preds = %22
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %40 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %38, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %46 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %44, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43, %37, %34
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %55 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %59 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %8, align 8
  br label %61

61:                                               ; preds = %50, %43
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %64 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %68 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = add nsw i32 3, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %6, align 8
  %73 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %74 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %61
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %80 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 3
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %77, %61
  %86 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %87 = call i64 @nn_has_arg(%struct.nn_option* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %91 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %97 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  %100 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %101 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %6, align 8
  br label %113

108:                                              ; preds = %89
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %108, %94
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i64, i64* %6, align 8
  %116 = icmp ult i64 %115, 23
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.8, i64 0, i64 %118
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @fputs(i8* %119, i32* %120)
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %124 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @nn_print_line(i32* %122, i8* %125, i32 56)
  store i8* %126, i8** %9, align 8
  br label %131

127:                                              ; preds = %114
  %128 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %129 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %9, align 8
  br label %131

131:                                              ; preds = %127, %117
  br label %132

132:                                              ; preds = %136, %131
  %133 = load i8*, i8** %9, align 8
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %139 = load i32*, i32** %4, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = call i8* @nn_print_line(i32* %139, i8* %140, i32 56)
  store i8* %141, i8** %9, align 8
  br label %132

142:                                              ; preds = %132
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %22

148:                                              ; preds = %33
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @nn_print_usage(%struct.nn_parse_context*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @nn_has_arg(%struct.nn_option*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @nn_print_line(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
