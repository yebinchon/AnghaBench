; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_datum_to_json.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_datum_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"key value must be scalar, not array, composite, or json\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@MAXDATELEN = common dso_local global i32 0, align 4
@DATEOID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@TIMESTAMPOID = common dso_local global i32 0, align 4
@TIMESTAMPTZOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @datum_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datum_to_json(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = call i32 (...) @check_stack_depth()
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %6
  %28 = phi i1 [ false, %6 ], [ %26, %24 ]
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @appendStringInfoString(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %176

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 136
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 133
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 131
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 134
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %46, %43, %40
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %49, %37
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %167 [
    i32 136, label %60
    i32 133, label %64
    i32 135, label %68
    i32 130, label %85
    i32 132, label %108
    i32 129, label %120
    i32 128, label %132
    i32 131, label %144
    i32 134, label %153
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @array_to_json_internal(i32 %61, i32 %62, i32 0)
  br label %176

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @composite_to_json(i32 %65, i32 %66, i32 0)
  br label %176

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @DatumGetBool(i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  store i8* %73, i8** %13, align 8
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @escape_json(i32 %77, i8* %78)
  br label %84

80:                                               ; preds = %68
  %81 = load i32, i32* %9, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @appendStringInfoString(i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %176

85:                                               ; preds = %58
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i8* @OidOutputFunctionCall(i32 %86, i32 %87)
  store i8* %88, i8** %13, align 8
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %13, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = call i32 @IsValidJsonNumber(i8* %92, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @appendStringInfoString(i32 %98, i8* %99)
  br label %105

101:                                              ; preds = %91, %85
  %102 = load i32, i32* %9, align 4
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @escape_json(i32 %102, i8* %103)
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @pfree(i8* %106)
  br label %176

108:                                              ; preds = %58
  %109 = load i32, i32* @MAXDATELEN, align 4
  %110 = add nsw i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %15, align 8
  %113 = alloca i8, i64 %111, align 16
  store i64 %111, i64* %16, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @DATEOID, align 4
  %116 = call i32 @JsonEncodeDateTime(i8* %113, i32 %114, i32 %115, i32* null)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @appendStringInfo(i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  %119 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %119)
  br label %176

120:                                              ; preds = %58
  %121 = load i32, i32* @MAXDATELEN, align 4
  %122 = add nsw i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %17, align 8
  %125 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %18, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @TIMESTAMPOID, align 4
  %128 = call i32 @JsonEncodeDateTime(i8* %125, i32 %126, i32 %127, i32* null)
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @appendStringInfo(i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  %131 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %131)
  br label %176

132:                                              ; preds = %58
  %133 = load i32, i32* @MAXDATELEN, align 4
  %134 = add nsw i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %19, align 8
  %137 = alloca i8, i64 %135, align 16
  store i64 %135, i64* %20, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @TIMESTAMPTZOID, align 4
  %140 = call i32 @JsonEncodeDateTime(i8* %137, i32 %138, i32 %139, i32* null)
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @appendStringInfo(i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %137)
  %143 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %143)
  br label %176

144:                                              ; preds = %58
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i8* @OidOutputFunctionCall(i32 %145, i32 %146)
  store i8* %147, i8** %13, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i8*, i8** %13, align 8
  %150 = call i32 @appendStringInfoString(i32 %148, i8* %149)
  %151 = load i8*, i8** %13, align 8
  %152 = call i32 @pfree(i8* %151)
  br label %176

153:                                              ; preds = %58
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @OidFunctionCall1(i32 %154, i32 %155)
  %157 = call i8* @DatumGetTextPP(i32 %156)
  store i8* %157, i8** %14, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = call i8* @text_to_cstring(i8* %158)
  store i8* %159, i8** %13, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @appendStringInfoString(i32 %160, i8* %161)
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @pfree(i8* %163)
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @pfree(i8* %165)
  br label %176

167:                                              ; preds = %58
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i8* @OidOutputFunctionCall(i32 %168, i32 %169)
  store i8* %170, i8** %13, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i8*, i8** %13, align 8
  %173 = call i32 @escape_json(i32 %171, i8* %172)
  %174 = load i8*, i8** %13, align 8
  %175 = call i32 @pfree(i8* %174)
  br label %176

176:                                              ; preds = %34, %167, %153, %144, %132, %120, %108, %105, %84, %64, %60
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @array_to_json_internal(i32, i32, i32) #1

declare dso_local i32 @composite_to_json(i32, i32, i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @escape_json(i32, i8*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @IsValidJsonNumber(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @JsonEncodeDateTime(i8*, i32, i32, i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @DatumGetTextPP(i32) #1

declare dso_local i32 @OidFunctionCall1(i32, i32) #1

declare dso_local i8* @text_to_cstring(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
