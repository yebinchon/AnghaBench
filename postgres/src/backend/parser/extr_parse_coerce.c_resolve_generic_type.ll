; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_resolve_generic_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_resolve_generic_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANYARRAYOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"argument declared %s is not an array but type %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"anyarray\00", align 1
@ANYELEMENTOID = common dso_local global i64 0, align 8
@ANYNONARRAYOID = common dso_local global i64 0, align 8
@ANYENUMOID = common dso_local global i64 0, align 8
@ANYRANGEOID = common dso_local global i64 0, align 8
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"could not find array type for data type %s\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"argument declared %s is not a range type but type %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"anyrange\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"could not determine polymorphic type because context isn't polymorphic\00", align 1
@InvalidOid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @resolve_generic_type(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ANYARRAYOID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ANYARRAYOID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @getBaseType(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @get_element_type(i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @OidIsValid(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @format_type_be(i64 %34)
  %36 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @ereport(i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %160

40:                                               ; preds = %18
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @ANYELEMENTOID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @ANYNONARRAYOID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @ANYENUMOID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @ANYRANGEOID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52, %48, %44, %40
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @get_array_type(i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @OidIsValid(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @format_type_be(i64 %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = call i32 @ereport(i32 %63, i32 %70)
  br label %72

72:                                               ; preds = %62, %56
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %4, align 8
  br label %160

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74
  br label %156

76:                                               ; preds = %3
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @ANYELEMENTOID, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* @ANYNONARRAYOID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @ANYENUMOID, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @ANYRANGEOID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %153

92:                                               ; preds = %88, %84, %80, %76
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @ANYARRAYOID, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @getBaseType(i64 %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i64 @get_element_type(i64 %99)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @OidIsValid(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @format_type_be(i64 %108)
  %110 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = call i32 @ereport(i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %104, %96
  %113 = load i64, i64* %12, align 8
  store i64 %113, i64* %4, align 8
  br label %160

114:                                              ; preds = %92
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @ANYRANGEOID, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %114
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @getBaseType(i64 %119)
  store i64 %120, i64* %13, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i64 @get_range_subtype(i64 %121)
  store i64 %122, i64* %14, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @OidIsValid(i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* @ERROR, align 4
  %128 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %129 = call i32 @errcode(i32 %128)
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @format_type_be(i64 %130)
  %132 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = call i32 @ereport(i32 %127, i32 %132)
  br label %134

134:                                              ; preds = %126, %118
  %135 = load i64, i64* %14, align 8
  store i64 %135, i64* %4, align 8
  br label %160

136:                                              ; preds = %114
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @ANYELEMENTOID, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @ANYNONARRAYOID, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @ANYENUMOID, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144, %140, %136
  %149 = load i64, i64* %6, align 8
  store i64 %149, i64* %4, align 8
  br label %160

150:                                              ; preds = %144
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  br label %155

153:                                              ; preds = %88
  %154 = load i64, i64* %5, align 8
  store i64 %154, i64* %4, align 8
  br label %160

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %75
  %157 = load i32, i32* @ERROR, align 4
  %158 = call i32 @elog(i32 %157, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %159 = load i64, i64* @InvalidOid, align 8
  store i64 %159, i64* %4, align 8
  br label %160

160:                                              ; preds = %156, %153, %148, %134, %112, %72, %38
  %161 = load i64, i64* %4, align 8
  ret i64 %161
}

declare dso_local i64 @getBaseType(i64) #1

declare dso_local i64 @get_element_type(i64) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i64 @get_array_type(i64) #1

declare dso_local i64 @get_range_subtype(i64) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
