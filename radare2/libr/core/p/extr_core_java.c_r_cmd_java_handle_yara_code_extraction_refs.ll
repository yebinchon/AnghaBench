; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_yara_code_extraction_refs.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_yara_code_extraction_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [76 x i8] c"Unable to access the current analysis, perform 'af' for function analysis.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @r_cmd_java_handle_yara_code_extraction_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_cmd_java_handle_yara_code_extraction_refs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_4__* @get_anal(i32* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = call i64 @r_cmd_java_get_bin_obj(%struct.TYPE_4__* %19)
  %21 = inttoptr i64 %20 to i32*
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32* [ %21, %18 ], [ null, %22 ]
  store i32* %24, i32** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @r_cmd_java_consumetok(i8* %28, i8 signext 32, i32 -1)
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i8* [ %29, %27 ], [ null, %30 ]
  store i8* %32, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %3, align 4
  br label %168

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @r_list_length(i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %40, %37
  %52 = call i32 @eprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %168

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %3, align 4
  br label %168

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @r_cmd_java_strtok(i8* %65, i8 signext 32, i32 -1)
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i8* [ %66, %64 ], [ null, %67 ]
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = add nsw i64 %84, 2
  %86 = trunc i64 %85 to i32
  %87 = call i8* @malloc(i32 %86)
  br label %89

88:                                               ; preds = %75, %72, %68
  br label %89

89:                                               ; preds = %88, %79
  %90 = phi i8* [ %87, %79 ], [ null, %88 ]
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %3, align 4
  br label %168

95:                                               ; preds = %89
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memset(i8* %96, i32 0, i32 %102)
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memcpy(i8* %104, i8* %105, i32 %111)
  %113 = load i8*, i8** %8, align 8
  %114 = call i8* @r_cmd_java_strtok(i8* %113, i8 signext 32, i32 -1)
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %95
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32*, i32** %4, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = call i64 @r_cmd_java_is_valid_input_num_value(i32* %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @r_cmd_java_get_input_num_value(i32* %128, i8* %129)
  br label %132

131:                                              ; preds = %122, %117, %95
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32 [ %130, %127 ], [ -1, %131 ]
  store i32 %133, i32* %11, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = call i8* @r_cmd_java_strtok(i8* %134, i8 signext 32, i32 -1)
  store i8* %135, i8** %8, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %132
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i32*, i32** %4, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i64 @r_cmd_java_is_valid_input_num_value(i32* %144, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32*, i32** %4, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @r_cmd_java_get_input_num_value(i32* %149, i8* %150)
  br label %153

152:                                              ; preds = %143, %138, %132
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ -1, %152 ]
  store i32 %154, i32* %12, align 4
  %155 = load i8*, i8** %10, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %164

164:                                              ; preds = %163, %160, %157, %153
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %93, %57, %51, %35
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_4__* @get_anal(i32*) #1

declare dso_local i64 @r_cmd_java_get_bin_obj(%struct.TYPE_4__*) #1

declare dso_local i8* @r_cmd_java_consumetok(i8*, i8 signext, i32) #1

declare dso_local i64 @r_list_length(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8* @r_cmd_java_strtok(i8*, i8 signext, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @r_cmd_java_is_valid_input_num_value(i32*, i8*) #1

declare dso_local i32 @r_cmd_java_get_input_num_value(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
