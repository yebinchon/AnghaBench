; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_aclcheck_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_aclcheck_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"permission denied for aggregate %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"permission denied for collation %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"permission denied for column %s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"permission denied for conversion %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"permission denied for database %s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"permission denied for domain %s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"permission denied for event trigger %s\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"permission denied for extension %s\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"permission denied for foreign-data wrapper %s\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"permission denied for foreign server %s\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"permission denied for foreign table %s\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"permission denied for function %s\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"permission denied for index %s\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"permission denied for language %s\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"permission denied for large object %s\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"permission denied for materialized view %s\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"permission denied for operator class %s\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"permission denied for operator %s\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"permission denied for operator family %s\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"permission denied for policy %s\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"permission denied for procedure %s\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"permission denied for publication %s\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"permission denied for routine %s\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"permission denied for schema %s\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"permission denied for sequence %s\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"permission denied for statistics object %s\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"permission denied for subscription %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"permission denied for table %s\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"permission denied for tablespace %s\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"permission denied for text search configuration %s\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"permission denied for text search dictionary %s\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"permission denied for type %s\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"permission denied for view %s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [27 x i8] c"unsupported object type %d\00", align 1
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [30 x i8] c"must be owner of aggregate %s\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"must be owner of collation %s\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"must be owner of conversion %s\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"must be owner of database %s\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"must be owner of domain %s\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"must be owner of event trigger %s\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"must be owner of extension %s\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"must be owner of foreign-data wrapper %s\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"must be owner of foreign server %s\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"must be owner of foreign table %s\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"must be owner of function %s\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"must be owner of index %s\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"must be owner of language %s\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"must be owner of large object %s\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"must be owner of materialized view %s\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"must be owner of operator class %s\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"must be owner of operator %s\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"must be owner of operator family %s\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"must be owner of procedure %s\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"must be owner of publication %s\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"must be owner of routine %s\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"must be owner of sequence %s\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"must be owner of subscription %s\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"must be owner of table %s\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"must be owner of type %s\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"must be owner of view %s\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"must be owner of schema %s\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"must be owner of statistics object %s\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"must be owner of tablespace %s\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"must be owner of text search configuration %s\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"must be owner of text search dictionary %s\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"must be owner of relation %s\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"unrecognized AclResult: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aclcheck_error(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %169 [
    i32 178, label %10
    i32 179, label %11
    i32 180, label %91
  ]

10:                                               ; preds = %3
  br label %173

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %83 [
    i32 176, label %13
    i32 171, label %15
    i32 170, label %17
    i32 169, label %19
    i32 168, label %21
    i32 165, label %23
    i32 163, label %25
    i32 162, label %27
    i32 161, label %29
    i32 160, label %31
    i32 159, label %33
    i32 158, label %35
    i32 157, label %37
    i32 156, label %39
    i32 155, label %41
    i32 154, label %43
    i32 153, label %45
    i32 152, label %47
    i32 151, label %49
    i32 150, label %51
    i32 149, label %53
    i32 148, label %55
    i32 145, label %57
    i32 143, label %59
    i32 142, label %61
    i32 141, label %63
    i32 140, label %65
    i32 138, label %67
    i32 137, label %69
    i32 134, label %71
    i32 133, label %73
    i32 130, label %75
    i32 128, label %77
    i32 177, label %79
    i32 175, label %79
    i32 174, label %79
    i32 173, label %79
    i32 172, label %79
    i32 166, label %79
    i32 167, label %79
    i32 164, label %79
    i32 147, label %79
    i32 146, label %79
    i32 144, label %79
    i32 139, label %79
    i32 136, label %79
    i32 135, label %79
    i32 132, label %79
    i32 131, label %79
    i32 129, label %79
  ]

13:                                               ; preds = %11
  %14 = call i8* @gettext_noop(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  br label %83

15:                                               ; preds = %11
  %16 = call i8* @gettext_noop(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  br label %83

17:                                               ; preds = %11
  %18 = call i8* @gettext_noop(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i8* %18, i8** %7, align 8
  br label %83

19:                                               ; preds = %11
  %20 = call i8* @gettext_noop(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  br label %83

21:                                               ; preds = %11
  %22 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  br label %83

23:                                               ; preds = %11
  %24 = call i8* @gettext_noop(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  br label %83

25:                                               ; preds = %11
  %26 = call i8* @gettext_noop(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  br label %83

27:                                               ; preds = %11
  %28 = call i8* @gettext_noop(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i8* %28, i8** %7, align 8
  br label %83

29:                                               ; preds = %11
  %30 = call i8* @gettext_noop(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i8* %30, i8** %7, align 8
  br label %83

31:                                               ; preds = %11
  %32 = call i8* @gettext_noop(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  store i8* %32, i8** %7, align 8
  br label %83

33:                                               ; preds = %11
  %34 = call i8* @gettext_noop(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  store i8* %34, i8** %7, align 8
  br label %83

35:                                               ; preds = %11
  %36 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  br label %83

37:                                               ; preds = %11
  %38 = call i8* @gettext_noop(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  store i8* %38, i8** %7, align 8
  br label %83

39:                                               ; preds = %11
  %40 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  br label %83

41:                                               ; preds = %11
  %42 = call i8* @gettext_noop(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  store i8* %42, i8** %7, align 8
  br label %83

43:                                               ; preds = %11
  %44 = call i8* @gettext_noop(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  store i8* %44, i8** %7, align 8
  br label %83

45:                                               ; preds = %11
  %46 = call i8* @gettext_noop(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  store i8* %46, i8** %7, align 8
  br label %83

47:                                               ; preds = %11
  %48 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  store i8* %48, i8** %7, align 8
  br label %83

49:                                               ; preds = %11
  %50 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  store i8* %50, i8** %7, align 8
  br label %83

51:                                               ; preds = %11
  %52 = call i8* @gettext_noop(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  store i8* %52, i8** %7, align 8
  br label %83

53:                                               ; preds = %11
  %54 = call i8* @gettext_noop(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  store i8* %54, i8** %7, align 8
  br label %83

55:                                               ; preds = %11
  %56 = call i8* @gettext_noop(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  store i8* %56, i8** %7, align 8
  br label %83

57:                                               ; preds = %11
  %58 = call i8* @gettext_noop(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  store i8* %58, i8** %7, align 8
  br label %83

59:                                               ; preds = %11
  %60 = call i8* @gettext_noop(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  store i8* %60, i8** %7, align 8
  br label %83

61:                                               ; preds = %11
  %62 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  store i8* %62, i8** %7, align 8
  br label %83

63:                                               ; preds = %11
  %64 = call i8* @gettext_noop(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0))
  store i8* %64, i8** %7, align 8
  br label %83

65:                                               ; preds = %11
  %66 = call i8* @gettext_noop(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
  store i8* %66, i8** %7, align 8
  br label %83

67:                                               ; preds = %11
  %68 = call i8* @gettext_noop(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0))
  store i8* %68, i8** %7, align 8
  br label %83

69:                                               ; preds = %11
  %70 = call i8* @gettext_noop(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0))
  store i8* %70, i8** %7, align 8
  br label %83

71:                                               ; preds = %11
  %72 = call i8* @gettext_noop(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0))
  store i8* %72, i8** %7, align 8
  br label %83

73:                                               ; preds = %11
  %74 = call i8* @gettext_noop(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0))
  store i8* %74, i8** %7, align 8
  br label %83

75:                                               ; preds = %11
  %76 = call i8* @gettext_noop(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  store i8* %76, i8** %7, align 8
  br label %83

77:                                               ; preds = %11
  %78 = call i8* @gettext_noop(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0))
  store i8* %78, i8** %7, align 8
  br label %83

79:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %11, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %86 = call i32 @errcode(i32 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @errmsg(i8* %87, i8* %88)
  %90 = call i32 @ereport(i32 %84, i32 %89)
  br label %173

91:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %92 = load i32, i32* %5, align 4
  switch i32 %92, label %161 [
    i32 176, label %93
    i32 171, label %95
    i32 169, label %97
    i32 168, label %99
    i32 165, label %101
    i32 163, label %103
    i32 162, label %105
    i32 161, label %107
    i32 160, label %109
    i32 159, label %111
    i32 158, label %113
    i32 157, label %115
    i32 156, label %117
    i32 155, label %119
    i32 154, label %121
    i32 153, label %123
    i32 152, label %125
    i32 151, label %127
    i32 149, label %129
    i32 148, label %131
    i32 145, label %133
    i32 142, label %135
    i32 140, label %137
    i32 138, label %139
    i32 130, label %141
    i32 128, label %143
    i32 143, label %145
    i32 141, label %147
    i32 137, label %149
    i32 134, label %151
    i32 133, label %153
    i32 170, label %155
    i32 150, label %155
    i32 144, label %155
    i32 139, label %155
    i32 135, label %155
    i32 177, label %157
    i32 175, label %157
    i32 174, label %157
    i32 173, label %157
    i32 172, label %157
    i32 166, label %157
    i32 167, label %157
    i32 164, label %157
    i32 147, label %157
    i32 146, label %157
    i32 136, label %157
    i32 132, label %157
    i32 131, label %157
    i32 129, label %157
  ]

93:                                               ; preds = %91
  %94 = call i8* @gettext_noop(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  store i8* %94, i8** %8, align 8
  br label %161

95:                                               ; preds = %91
  %96 = call i8* @gettext_noop(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  store i8* %96, i8** %8, align 8
  br label %161

97:                                               ; preds = %91
  %98 = call i8* @gettext_noop(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0))
  store i8* %98, i8** %8, align 8
  br label %161

99:                                               ; preds = %91
  %100 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0))
  store i8* %100, i8** %8, align 8
  br label %161

101:                                              ; preds = %91
  %102 = call i8* @gettext_noop(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0))
  store i8* %102, i8** %8, align 8
  br label %161

103:                                              ; preds = %91
  %104 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0))
  store i8* %104, i8** %8, align 8
  br label %161

105:                                              ; preds = %91
  %106 = call i8* @gettext_noop(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0))
  store i8* %106, i8** %8, align 8
  br label %161

107:                                              ; preds = %91
  %108 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0))
  store i8* %108, i8** %8, align 8
  br label %161

109:                                              ; preds = %91
  %110 = call i8* @gettext_noop(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0))
  store i8* %110, i8** %8, align 8
  br label %161

111:                                              ; preds = %91
  %112 = call i8* @gettext_noop(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i64 0, i64 0))
  store i8* %112, i8** %8, align 8
  br label %161

113:                                              ; preds = %91
  %114 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i64 0, i64 0))
  store i8* %114, i8** %8, align 8
  br label %161

115:                                              ; preds = %91
  %116 = call i8* @gettext_noop(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0))
  store i8* %116, i8** %8, align 8
  br label %161

117:                                              ; preds = %91
  %118 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0))
  store i8* %118, i8** %8, align 8
  br label %161

119:                                              ; preds = %91
  %120 = call i8* @gettext_noop(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0))
  store i8* %120, i8** %8, align 8
  br label %161

121:                                              ; preds = %91
  %122 = call i8* @gettext_noop(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i64 0, i64 0))
  store i8* %122, i8** %8, align 8
  br label %161

123:                                              ; preds = %91
  %124 = call i8* @gettext_noop(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i64 0, i64 0))
  store i8* %124, i8** %8, align 8
  br label %161

125:                                              ; preds = %91
  %126 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0))
  store i8* %126, i8** %8, align 8
  br label %161

127:                                              ; preds = %91
  %128 = call i8* @gettext_noop(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0))
  store i8* %128, i8** %8, align 8
  br label %161

129:                                              ; preds = %91
  %130 = call i8* @gettext_noop(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i64 0, i64 0))
  store i8* %130, i8** %8, align 8
  br label %161

131:                                              ; preds = %91
  %132 = call i8* @gettext_noop(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i64 0, i64 0))
  store i8* %132, i8** %8, align 8
  br label %161

133:                                              ; preds = %91
  %134 = call i8* @gettext_noop(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0))
  store i8* %134, i8** %8, align 8
  br label %161

135:                                              ; preds = %91
  %136 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0))
  store i8* %136, i8** %8, align 8
  br label %161

137:                                              ; preds = %91
  %138 = call i8* @gettext_noop(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0))
  store i8* %138, i8** %8, align 8
  br label %161

139:                                              ; preds = %91
  %140 = call i8* @gettext_noop(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i64 0, i64 0))
  store i8* %140, i8** %8, align 8
  br label %161

141:                                              ; preds = %91
  %142 = call i8* @gettext_noop(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i64 0, i64 0))
  store i8* %142, i8** %8, align 8
  br label %161

143:                                              ; preds = %91
  %144 = call i8* @gettext_noop(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0))
  store i8* %144, i8** %8, align 8
  br label %161

145:                                              ; preds = %91
  %146 = call i8* @gettext_noop(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i64 0, i64 0))
  store i8* %146, i8** %8, align 8
  br label %161

147:                                              ; preds = %91
  %148 = call i8* @gettext_noop(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.62, i64 0, i64 0))
  store i8* %148, i8** %8, align 8
  br label %161

149:                                              ; preds = %91
  %150 = call i8* @gettext_noop(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i64 0, i64 0))
  store i8* %150, i8** %8, align 8
  br label %161

151:                                              ; preds = %91
  %152 = call i8* @gettext_noop(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0))
  store i8* %152, i8** %8, align 8
  br label %161

153:                                              ; preds = %91
  %154 = call i8* @gettext_noop(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i64 0, i64 0))
  store i8* %154, i8** %8, align 8
  br label %161

155:                                              ; preds = %91, %91, %91, %91, %91
  %156 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0))
  store i8* %156, i8** %8, align 8
  br label %161

157:                                              ; preds = %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91
  %158 = load i32, i32* @ERROR, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @elog(i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %157, %91, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93
  %162 = load i32, i32* @ERROR, align 4
  %163 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %164 = call i32 @errcode(i32 %163)
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 @errmsg(i8* %165, i8* %166)
  %168 = call i32 @ereport(i32 %162, i32 %167)
  br label %173

169:                                              ; preds = %3
  %170 = load i32, i32* @ERROR, align 4
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @elog(i32 %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %169, %161, %83, %10
  ret void
}

declare dso_local i8* @gettext_noop(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
