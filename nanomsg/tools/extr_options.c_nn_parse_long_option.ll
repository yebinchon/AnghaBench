; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_long_option.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_parse_long_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i8*, i8**, %struct.nn_option* }
%struct.nn_option = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"does not accept argument\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"requires an argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*)* @nn_parse_long_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_parse_long_option(%struct.nn_parse_context* %0) #0 {
  %2 = alloca %struct.nn_parse_context*, align 8
  %3 = alloca %struct.nn_option*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %2, align 8
  %11 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %12 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %14, i8** %9, align 8
  store i64 0, i64* %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %87, %1
  %16 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %17 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %16, i32 0, i32 2
  %18 = load %struct.nn_option*, %struct.nn_option** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %18, i64 %20
  store %struct.nn_option* %21, %struct.nn_option** %3, align 8
  %22 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %23 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %90

27:                                               ; preds = %15
  %28 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %29 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %9, align 8
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %81, %27
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 61
  br i1 %41, label %42, label %70

42:                                               ; preds = %37, %32
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %45 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %43 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  store i64 %49, i64* %7, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %6, align 8
  br label %91

56:                                               ; preds = %42
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %8, align 4
  br label %69

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %60
  br label %86

70:                                               ; preds = %37
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8*, i8** %4, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %86

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  br label %32

86:                                               ; preds = %78, %69
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %15

90:                                               ; preds = %26
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %159

94:                                               ; preds = %91
  %95 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %96 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %95, i32 0, i32 2
  %97 = load %struct.nn_option*, %struct.nn_option** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %97, i64 %99
  store %struct.nn_option* %100, %struct.nn_option** %3, align 8
  %101 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %102 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %105 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %104, i32 0, i32 1
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  store i8* %103, i8** %109, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 61
  br i1 %115, label %116, label %133

116:                                              ; preds = %94
  %117 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %118 = call i64 @nn_has_arg(%struct.nn_option* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = call i32 @nn_process_option(%struct.nn_parse_context* %121, i32 %122, i8* %126)
  br label %132

128:                                              ; preds = %116
  %129 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @nn_option_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.nn_parse_context* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %120
  br label %158

133:                                              ; preds = %94
  %134 = load %struct.nn_option*, %struct.nn_option** %3, align 8
  %135 = call i64 @nn_has_arg(%struct.nn_option* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %133
  %138 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %139 = call i64 @nn_get_arg(%struct.nn_parse_context* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %145 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @nn_process_option(%struct.nn_parse_context* %142, i32 %143, i8* %146)
  br label %152

148:                                              ; preds = %137
  %149 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @nn_option_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.nn_parse_context* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %141
  br label %157

153:                                              ; preds = %133
  %154 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @nn_process_option(%struct.nn_parse_context* %154, i32 %155, i8* null)
  br label %157

157:                                              ; preds = %153, %152
  br label %158

158:                                              ; preds = %157, %132
  br label %169

159:                                              ; preds = %91
  %160 = load i64, i64* %6, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %164 = call i32 @nn_error_ambiguous_option(%struct.nn_parse_context* %163)
  br label %168

165:                                              ; preds = %159
  %166 = load %struct.nn_parse_context*, %struct.nn_parse_context** %2, align 8
  %167 = call i32 @nn_error_unknown_long_option(%struct.nn_parse_context* %166)
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %158
  ret void
}

declare dso_local i64 @nn_has_arg(%struct.nn_option*) #1

declare dso_local i32 @nn_process_option(%struct.nn_parse_context*, i32, i8*) #1

declare dso_local i32 @nn_option_error(i8*, %struct.nn_parse_context*, i32) #1

declare dso_local i64 @nn_get_arg(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_error_ambiguous_option(%struct.nn_parse_context*) #1

declare dso_local i32 @nn_error_unknown_long_option(%struct.nn_parse_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
