; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_populate_component.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_populate_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsonsl_jpr_component_st = type { i8*, i8*, i64, i8* }

@JSONSL_PATH_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@JSONSL_PATH_WILDCARD_CHAR = common dso_local global i8 0, align 1
@JSONSL_PATH_WILDCARD = common dso_local global i64 0, align 8
@JSONSL_PATH_NUMERIC = common dso_local global i64 0, align 8
@JSONSL_PATH_STRING = common dso_local global i64 0, align 8
@JSONSL_ERROR_PERCENT_BADHEX = common dso_local global i32 0, align 4
@JSONSL_PATH_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.jsonsl_jpr_component_st*, i8**, i32*)* @populate_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @populate_component(i8* %0, %struct.jsonsl_jpr_component_st* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.jsonsl_jpr_component_st*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store %struct.jsonsl_jpr_component_st* %1, %struct.jsonsl_jpr_component_st** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %18 = load i64, i64* @JSONSL_PATH_NONE, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %4
  %29 = load i64, i64* @JSONSL_PATH_NONE, align 8
  store i64 %29, i64* %5, align 8
  br label %187

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @strstr(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load i8**, i8*** %8, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8**, i8*** %8, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  store i64 %45, i64* %14, align 8
  %46 = load i8**, i8*** %8, align 8
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %13, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %48, align 8
  br label %59

51:                                               ; preds = %30
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @strlen(i8* %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %14, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %13, align 8
  br label %59

59:                                               ; preds = %51, %37
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %7, align 8
  %62 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @JSONSL_PATH_WILDCARD_CHAR, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i64, i64* %14, align 8
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* @JSONSL_PATH_WILDCARD, align 8
  store i64 %73, i64* %15, align 8
  br label %171

74:                                               ; preds = %69, %59
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isdigit(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @strtoul(i8* %80, i8** %16, i32 10)
  %82 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %7, align 8
  %83 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i8*, i8** %16, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @JSONSL_PATH_NUMERIC, align 8
  store i64 %92, i64* %15, align 8
  br label %171

93:                                               ; preds = %86, %79
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* @JSONSL_PATH_STRING, align 8
  store i64 %96, i64* %15, align 8
  %97 = load i8*, i8** %6, align 8
  store i8* %97, i8** %12, align 8
  store i8* %97, i8** %11, align 8
  br label %98

98:                                               ; preds = %155, %95
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = icmp ult i8* %99, %100
  br i1 %101, label %102, label %160

102:                                              ; preds = %98
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 37
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %151

108:                                              ; preds = %102
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8*, i8** %13, align 8
  %112 = icmp uge i8* %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @JSONSL_ERROR_PERCENT_BADHEX, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i64, i64* @JSONSL_PATH_INVALID, align 8
  store i64 %116, i64* %5, align 8
  br label %187

117:                                              ; preds = %108
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = call i64 @isxdigit(i8 signext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @isxdigit(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %123, %117
  %130 = load i32, i32* @JSONSL_ERROR_PERCENT_BADHEX, align 4
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i64, i64* @JSONSL_PATH_INVALID, align 8
  store i64 %132, i64* %5, align 8
  br label %187

133:                                              ; preds = %123
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  %136 = load i8, i8* %135, align 1
  store i8 %136, i8* %17, align 1
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = call i8* @strtoul(i8* %140, i8** null, i32 16)
  %142 = ptrtoint i8* %141 to i64
  store i64 %142, i64* %10, align 8
  %143 = load i8, i8* %17, align 1
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  store i8 %143, i8* %145, align 1
  %146 = load i64, i64* %10, align 8
  %147 = trunc i64 %146 to i8
  %148 = load i8*, i8** %12, align 8
  store i8 %147, i8* %148, align 1
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  store i8* %150, i8** %11, align 8
  br label %155

151:                                              ; preds = %107
  %152 = load i8*, i8** %11, align 8
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %12, align 8
  store i8 %153, i8* %154, align 1
  br label %155

155:                                              ; preds = %151, %133
  %156 = load i8*, i8** %11, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %11, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %12, align 8
  br label %98

160:                                              ; preds = %98
  br label %161

161:                                              ; preds = %167, %160
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = icmp ult i8* %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i8*, i8** %12, align 8
  store i8 0, i8* %166, align 1
  br label %167

167:                                              ; preds = %165
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %12, align 8
  br label %161

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %91, %72
  %172 = load i64, i64* %15, align 8
  %173 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %7, align 8
  %174 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %173, i32 0, i32 2
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* @JSONSL_PATH_WILDCARD, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %7, align 8
  %180 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @strlen(i8* %181)
  %183 = load %struct.jsonsl_jpr_component_st*, %struct.jsonsl_jpr_component_st** %7, align 8
  %184 = getelementptr inbounds %struct.jsonsl_jpr_component_st, %struct.jsonsl_jpr_component_st* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %178, %171
  %186 = load i64, i64* %15, align 8
  store i64 %186, i64* %5, align 8
  br label %187

187:                                              ; preds = %185, %129, %113, %28
  %188 = load i64, i64* %5, align 8
  ret i64 %188
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
