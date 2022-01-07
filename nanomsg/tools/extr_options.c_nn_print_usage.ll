; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_print_usage.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i8**, i32, %struct.nn_option* }
%struct.nn_option = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"    %s \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"{--%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"|--%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[-%c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[-%c %s] \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"[options] \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*, i32*)* @nn_print_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_print_usage(%struct.nn_parse_context* %0, i32* %1) #0 {
  %3 = alloca %struct.nn_parse_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_option*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %10 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %53, %2
  %16 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %17 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %16, i32 0, i32 2
  %18 = load %struct.nn_option*, %struct.nn_option** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %18, i64 %20
  store %struct.nn_option* %21, %struct.nn_option** %7, align 8
  %22 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %23 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %56

27:                                               ; preds = %15
  %28 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %29 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %32 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %42 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %51

45:                                               ; preds = %36
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %48 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %15

56:                                               ; preds = %26
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  store i32 1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %111, %62
  %64 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %65 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %64, i32 0, i32 2
  %66 = load %struct.nn_option*, %struct.nn_option** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %66, i64 %68
  store %struct.nn_option* %69, %struct.nn_option** %7, align 8
  %70 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %71 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %63
  br label %114

75:                                               ; preds = %63
  %76 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %77 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %80 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %111

85:                                               ; preds = %75
  %86 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %87 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %92 = call i64 @nn_has_arg(%struct.nn_option* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  store i32 0, i32* %6, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %100 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %109

103:                                              ; preds = %94
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %106 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %109, %90, %85
  br label %111

111:                                              ; preds = %110, %84
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %63

114:                                              ; preds = %74
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %167, %120
  %122 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %123 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %122, i32 0, i32 2
  %124 = load %struct.nn_option*, %struct.nn_option** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %124, i64 %126
  store %struct.nn_option* %127, %struct.nn_option** %7, align 8
  %128 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %129 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %121
  br label %170

133:                                              ; preds = %121
  %134 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %135 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.nn_parse_context*, %struct.nn_parse_context** %3, align 8
  %138 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %167

143:                                              ; preds = %133
  %144 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %145 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %143
  %149 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %150 = call i64 @nn_has_arg(%struct.nn_option* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %154 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i32*, i32** %4, align 8
  %159 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %160 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %163 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %161, i8* %164)
  br label %166

166:                                              ; preds = %157, %152, %148, %143
  br label %167

167:                                              ; preds = %166, %142
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %121

170:                                              ; preds = %132
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @nn_has_arg(%struct.nn_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
