; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_ResolveOpClass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_ResolveOpClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"network_ops\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"timespan_ops\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"datetime_ops\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"lztext_ops\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"timestamp_ops\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"bigbox_ops\00", align 1
@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [66 x i8] c"data type %s has no default operator class for access method \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"You must specify an operator class for the index or define a default operator class for the data type.\00", align 1
@CLAAMNAMENSP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"operator class \22%s\22 does not exist for access method \22%s\22\00", align 1
@CLAOID = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"operator class \22%s\22 does not accept data type %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ResolveOpClass(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @list_length(i32* %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %51

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @linitial(i32* %22)
  %24 = call i8* @strVal(i32 %23)
  store i8* %24, i8** %16, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %16, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %16, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %16, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %16, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40, %36, %32, %28, %21
  %49 = load i32*, i32** @NIL, align 8
  store i32* %49, i32** %6, align 8
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** @NIL, align 8
  %54 = icmp eq i32* %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @GetDefaultOpClass(i32 %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @OidIsValid(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @format_type_be(i32 %66)
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i8* %67, i8* %68)
  %70 = call i32 @errhint(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0))
  %71 = call i32 @ereport(i32 %63, i32 %70)
  br label %72

72:                                               ; preds = %62, %55
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %151

74:                                               ; preds = %51
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @DeconstructQualifiedName(i32* %75, i8** %10, i8** %11)
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @LookupExplicitNamespace(i8* %80, i32 0)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* @CLAAMNAMENSP, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @ObjectIdGetDatum(i32 %83)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @PointerGetDatum(i8* %85)
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @ObjectIdGetDatum(i32 %87)
  %89 = call i32 @SearchSysCache3(i32 %82, i32 %84, i32 %86, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %110

90:                                               ; preds = %74
  %91 = load i32, i32* %9, align 4
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @OpclassnameGetOpcid(i32 %91, i8* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @OidIsValid(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %100 = call i32 @errcode(i32 %99)
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* %101, i8* %102)
  %104 = call i32 @ereport(i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %97, %90
  %106 = load i32, i32* @CLAOID, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @ObjectIdGetDatum(i32 %107)
  %109 = call i32 @SearchSysCache1(i32 %106, i32 %108)
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %105, %79
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @HeapTupleIsValid(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = load i32*, i32** %6, align 8
  %119 = call i8* @NameListToString(i32* %118)
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* %119, i8* %120)
  %122 = call i32 @ereport(i32 %115, i32 %121)
  br label %123

123:                                              ; preds = %114, %110
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @GETSTRUCT(i32 %124)
  %126 = inttoptr i64 %125 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %126, %struct.TYPE_2__** %13, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @IsBinaryCoercible(i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %123
  %138 = load i32, i32* @ERROR, align 4
  %139 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %140 = call i32 @errcode(i32 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = call i8* @NameListToString(i32* %141)
  %143 = load i32, i32* %7, align 4
  %144 = call i8* @format_type_be(i32 %143)
  %145 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i8* %142, i8* %144)
  %146 = call i32 @ereport(i32 %138, i32 %145)
  br label %147

147:                                              ; preds = %137, %123
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @ReleaseSysCache(i32 %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %72
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @GetDefaultOpClass(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i8* @format_type_be(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @DeconstructQualifiedName(i32*, i8**, i8**) #1

declare dso_local i32 @LookupExplicitNamespace(i8*, i32) #1

declare dso_local i32 @SearchSysCache3(i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @OpclassnameGetOpcid(i32, i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i8* @NameListToString(i32*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @IsBinaryCoercible(i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
