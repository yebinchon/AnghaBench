; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_input_arg_names.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_input_arg_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXTOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"proargnames is not a 1-D text array\00", align 1
@CHAROID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"proargmodes is not a 1-D char array\00", align 1
@PROARGMODE_IN = common dso_local global i8 0, align 1
@PROARGMODE_INOUT = common dso_local global i8 0, align 1
@PROARGMODE_VARIADIC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_func_input_arg_names(i64 %0, i64 %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8*** %2, i8**** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @PointerGetDatum(i32* null)
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %20, align 8
  store i32 0, i32* %4, align 4
  br label %159

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @DatumGetArrayTypeP(i64 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @ARR_NDIM(i32* %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @ARR_HASNULL(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @ARR_ELEMTYPE(i32* %32)
  %34 = load i64, i64* @TEXTOID, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %27, %21
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* @TEXTOID, align 8
  %42 = call i32 @deconstruct_array(i32* %40, i64 %41, i32 -1, i32 0, i8 signext 105, i64** %10, i32* null, i32* %9)
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @PointerGetDatum(i32* null)
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = call i32* @DatumGetArrayTypeP(i64 %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @ARR_NDIM(i32* %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %68, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %8, align 8
  %54 = call i32* @ARR_DIMS(i32* %53)
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @ARR_HASNULL(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = call i64 @ARR_ELEMTYPE(i32* %64)
  %66 = load i64, i64* @CHAROID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %59, %52, %46
  %69 = load i32, i32* @ERROR, align 4
  %70 = call i32 @elog(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @ARR_DATA_PTR(i32* %72)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %11, align 8
  br label %76

75:                                               ; preds = %39
  store i8* null, i8** %11, align 8
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %9, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %80, align 8
  store i32 0, i32* %4, align 4
  br label %159

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @palloc(i32 %85)
  %87 = inttoptr i64 %86 to i8**
  store i8** %87, i8*** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %152, %81
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %155

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %125, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @PROARGMODE_IN, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %125, label %105

105:                                              ; preds = %95
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* @PROARGMODE_INOUT, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %105
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* @PROARGMODE_VARIADIC, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %115, %105, %95, %92
  %126 = load i64*, i64** %10, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @TextDatumGetCString(i64 %130)
  store i8* %131, i8** %15, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %125
  %138 = load i8*, i8** %15, align 8
  %139 = load i8**, i8*** %12, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %138, i8** %142, align 8
  br label %148

143:                                              ; preds = %125
  %144 = load i8**, i8*** %12, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* null, i8** %147, align 8
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %148, %115
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %88

155:                                              ; preds = %88
  %156 = load i8**, i8*** %12, align 8
  %157 = load i8***, i8**** %7, align 8
  store i8** %156, i8*** %157, align 8
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %79, %19
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @PointerGetDatum(i32*) #1

declare dso_local i32* @DatumGetArrayTypeP(i64) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i8 signext, i64**, i32*, i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @TextDatumGetCString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
