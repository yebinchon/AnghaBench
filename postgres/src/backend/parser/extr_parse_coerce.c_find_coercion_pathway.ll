; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_find_coercion_pathway.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_find_coercion_pathway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@COERCION_PATH_NONE = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@COERCION_PATH_RELABELTYPE = common dso_local global i64 0, align 8
@CASTSOURCETARGET = common dso_local global i32 0, align 4
@COERCION_IMPLICIT = common dso_local global i64 0, align 8
@COERCION_ASSIGNMENT = common dso_local global i64 0, align 8
@COERCION_EXPLICIT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized castcontext: %d\00", align 1
@COERCION_PATH_FUNC = common dso_local global i64 0, align 8
@COERCION_PATH_COERCEVIAIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unrecognized castmethod: %d\00", align 1
@OIDVECTOROID = common dso_local global i64 0, align 8
@INT2VECTOROID = common dso_local global i64 0, align 8
@COERCION_PATH_ARRAYCOERCE = common dso_local global i64 0, align 8
@TYPCATEGORY_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_coercion_pathway(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load i64, i64* @COERCION_PATH_NONE, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* @InvalidOid, align 8
  %20 = load i64*, i64** %9, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @OidIsValid(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @getBaseType(i64 %25)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @OidIsValid(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @getBaseType(i64 %32)
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @COERCION_PATH_RELABELTYPE, align 8
  store i64 %39, i64* %5, align 8
  br label %159

40:                                               ; preds = %34
  %41 = load i32, i32* @CASTSOURCETARGET, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ObjectIdGetDatum(i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ObjectIdGetDatum(i64 %44)
  %46 = call i32 @SearchSysCache2(i32 %41, i32 %43, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @HeapTupleIsValid(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %98

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @GETSTRUCT(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %12, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %64 [
    i32 131, label %58
    i32 133, label %60
    i32 132, label %62
  ]

58:                                               ; preds = %50
  %59 = load i64, i64* @COERCION_IMPLICIT, align 8
  store i64 %59, i64* %13, align 8
  br label %70

60:                                               ; preds = %50
  %61 = load i64, i64* @COERCION_ASSIGNMENT, align 8
  store i64 %61, i64* %13, align 8
  br label %70

62:                                               ; preds = %50
  %63 = load i64, i64* @COERCION_EXPLICIT, align 8
  store i64 %63, i64* %13, align 8
  br label %70

64:                                               ; preds = %50
  %65 = load i32, i32* @ERROR, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @elog(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %64, %62, %60, %58
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %88 [
    i32 129, label %78
    i32 128, label %84
    i32 130, label %86
  ]

78:                                               ; preds = %74
  %79 = load i64, i64* @COERCION_PATH_FUNC, align 8
  store i64 %79, i64* %10, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  br label %94

84:                                               ; preds = %74
  %85 = load i64, i64* @COERCION_PATH_COERCEVIAIO, align 8
  store i64 %85, i64* %10, align 8
  br label %94

86:                                               ; preds = %74
  %87 = load i64, i64* @COERCION_PATH_RELABELTYPE, align 8
  store i64 %87, i64* %10, align 8
  br label %94

88:                                               ; preds = %74
  %89 = load i32, i32* @ERROR, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @elog(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %86, %84, %78
  br label %95

95:                                               ; preds = %94, %70
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @ReleaseSysCache(i32 %96)
  br label %157

98:                                               ; preds = %40
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @OIDVECTOROID, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @INT2VECTOROID, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @get_element_type(i64 %107)
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* @InvalidOid, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @get_element_type(i64 %112)
  store i64 %113, i64* %15, align 8
  %114 = load i64, i64* @InvalidOid, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @find_coercion_pathway(i64 %117, i64 %118, i64 %119, i64* %17)
  store i64 %120, i64* %16, align 8
  %121 = load i64, i64* %16, align 8
  %122 = load i64, i64* @COERCION_PATH_NONE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i64, i64* @COERCION_PATH_ARRAYCOERCE, align 8
  store i64 %125, i64* %10, align 8
  br label %126

126:                                              ; preds = %124, %116
  br label %127

127:                                              ; preds = %126, %111, %106
  br label %128

128:                                              ; preds = %127, %102, %98
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @COERCION_PATH_NONE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %128
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @COERCION_ASSIGNMENT, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i64, i64* %6, align 8
  %138 = call i64 @TypeCategory(i64 %137)
  %139 = load i64, i64* @TYPCATEGORY_STRING, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i64, i64* @COERCION_PATH_COERCEVIAIO, align 8
  store i64 %142, i64* %10, align 8
  br label %155

143:                                              ; preds = %136, %132
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* @COERCION_EXPLICIT, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i64, i64* %7, align 8
  %149 = call i64 @TypeCategory(i64 %148)
  %150 = load i64, i64* @TYPCATEGORY_STRING, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i64, i64* @COERCION_PATH_COERCEVIAIO, align 8
  store i64 %153, i64* %10, align 8
  br label %154

154:                                              ; preds = %152, %147, %143
  br label %155

155:                                              ; preds = %154, %141
  br label %156

156:                                              ; preds = %155, %128
  br label %157

157:                                              ; preds = %156, %95
  %158 = load i64, i64* %10, align 8
  store i64 %158, i64* %5, align 8
  br label %159

159:                                              ; preds = %157, %38
  %160 = load i64, i64* %5, align 8
  ret i64 %160
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @getBaseType(i64) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @get_element_type(i64) #1

declare dso_local i64 @TypeCategory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
