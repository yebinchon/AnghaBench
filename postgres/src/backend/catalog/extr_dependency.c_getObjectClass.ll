; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_getObjectClass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_getObjectClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"invalid non-zero objectSubId for object class %u\00", align 1
@OCLASS_CLASS = common dso_local global i32 0, align 4
@OCLASS_PROC = common dso_local global i32 0, align 4
@OCLASS_TYPE = common dso_local global i32 0, align 4
@OCLASS_CAST = common dso_local global i32 0, align 4
@OCLASS_COLLATION = common dso_local global i32 0, align 4
@OCLASS_CONSTRAINT = common dso_local global i32 0, align 4
@OCLASS_CONVERSION = common dso_local global i32 0, align 4
@OCLASS_DEFAULT = common dso_local global i32 0, align 4
@OCLASS_LANGUAGE = common dso_local global i32 0, align 4
@OCLASS_LARGEOBJECT = common dso_local global i32 0, align 4
@OCLASS_OPERATOR = common dso_local global i32 0, align 4
@OCLASS_OPCLASS = common dso_local global i32 0, align 4
@OCLASS_OPFAMILY = common dso_local global i32 0, align 4
@OCLASS_AM = common dso_local global i32 0, align 4
@OCLASS_AMOP = common dso_local global i32 0, align 4
@OCLASS_AMPROC = common dso_local global i32 0, align 4
@OCLASS_REWRITE = common dso_local global i32 0, align 4
@OCLASS_TRIGGER = common dso_local global i32 0, align 4
@OCLASS_SCHEMA = common dso_local global i32 0, align 4
@OCLASS_STATISTIC_EXT = common dso_local global i32 0, align 4
@OCLASS_TSPARSER = common dso_local global i32 0, align 4
@OCLASS_TSDICT = common dso_local global i32 0, align 4
@OCLASS_TSTEMPLATE = common dso_local global i32 0, align 4
@OCLASS_TSCONFIG = common dso_local global i32 0, align 4
@OCLASS_ROLE = common dso_local global i32 0, align 4
@OCLASS_DATABASE = common dso_local global i32 0, align 4
@OCLASS_TBLSPACE = common dso_local global i32 0, align 4
@OCLASS_FDW = common dso_local global i32 0, align 4
@OCLASS_FOREIGN_SERVER = common dso_local global i32 0, align 4
@OCLASS_USER_MAPPING = common dso_local global i32 0, align 4
@OCLASS_DEFACL = common dso_local global i32 0, align 4
@OCLASS_EXTENSION = common dso_local global i32 0, align 4
@OCLASS_EVENT_TRIGGER = common dso_local global i32 0, align 4
@OCLASS_POLICY = common dso_local global i32 0, align 4
@OCLASS_PUBLICATION = common dso_local global i32 0, align 4
@OCLASS_PUBLICATION_REL = common dso_local global i32 0, align 4
@OCLASS_SUBSCRIPTION = common dso_local global i32 0, align 4
@OCLASS_TRANSFORM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unrecognized object class: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getObjectClass(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 140
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32, i32* @ERROR, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %8, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %99 [
    i32 140, label %23
    i32 143, label %25
    i32 129, label %27
    i32 160, label %29
    i32 159, label %31
    i32 158, label %33
    i32 157, label %35
    i32 162, label %37
    i32 150, label %39
    i32 149, label %41
    i32 145, label %43
    i32 147, label %45
    i32 146, label %47
    i32 163, label %49
    i32 165, label %51
    i32 164, label %53
    i32 139, label %55
    i32 130, label %57
    i32 148, label %59
    i32 138, label %61
    i32 134, label %63
    i32 135, label %65
    i32 133, label %67
    i32 136, label %69
    i32 161, label %71
    i32 156, label %73
    i32 132, label %75
    i32 152, label %77
    i32 151, label %79
    i32 128, label %81
    i32 155, label %83
    i32 153, label %85
    i32 154, label %87
    i32 144, label %89
    i32 141, label %91
    i32 142, label %93
    i32 137, label %95
    i32 131, label %97
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @OCLASS_CLASS, align 4
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %19
  %26 = load i32, i32* @OCLASS_PROC, align 4
  store i32 %26, i32* %2, align 4
  br label %106

27:                                               ; preds = %19
  %28 = load i32, i32* @OCLASS_TYPE, align 4
  store i32 %28, i32* %2, align 4
  br label %106

29:                                               ; preds = %19
  %30 = load i32, i32* @OCLASS_CAST, align 4
  store i32 %30, i32* %2, align 4
  br label %106

31:                                               ; preds = %19
  %32 = load i32, i32* @OCLASS_COLLATION, align 4
  store i32 %32, i32* %2, align 4
  br label %106

33:                                               ; preds = %19
  %34 = load i32, i32* @OCLASS_CONSTRAINT, align 4
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %19
  %36 = load i32, i32* @OCLASS_CONVERSION, align 4
  store i32 %36, i32* %2, align 4
  br label %106

37:                                               ; preds = %19
  %38 = load i32, i32* @OCLASS_DEFAULT, align 4
  store i32 %38, i32* %2, align 4
  br label %106

39:                                               ; preds = %19
  %40 = load i32, i32* @OCLASS_LANGUAGE, align 4
  store i32 %40, i32* %2, align 4
  br label %106

41:                                               ; preds = %19
  %42 = load i32, i32* @OCLASS_LARGEOBJECT, align 4
  store i32 %42, i32* %2, align 4
  br label %106

43:                                               ; preds = %19
  %44 = load i32, i32* @OCLASS_OPERATOR, align 4
  store i32 %44, i32* %2, align 4
  br label %106

45:                                               ; preds = %19
  %46 = load i32, i32* @OCLASS_OPCLASS, align 4
  store i32 %46, i32* %2, align 4
  br label %106

47:                                               ; preds = %19
  %48 = load i32, i32* @OCLASS_OPFAMILY, align 4
  store i32 %48, i32* %2, align 4
  br label %106

49:                                               ; preds = %19
  %50 = load i32, i32* @OCLASS_AM, align 4
  store i32 %50, i32* %2, align 4
  br label %106

51:                                               ; preds = %19
  %52 = load i32, i32* @OCLASS_AMOP, align 4
  store i32 %52, i32* %2, align 4
  br label %106

53:                                               ; preds = %19
  %54 = load i32, i32* @OCLASS_AMPROC, align 4
  store i32 %54, i32* %2, align 4
  br label %106

55:                                               ; preds = %19
  %56 = load i32, i32* @OCLASS_REWRITE, align 4
  store i32 %56, i32* %2, align 4
  br label %106

57:                                               ; preds = %19
  %58 = load i32, i32* @OCLASS_TRIGGER, align 4
  store i32 %58, i32* %2, align 4
  br label %106

59:                                               ; preds = %19
  %60 = load i32, i32* @OCLASS_SCHEMA, align 4
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %19
  %62 = load i32, i32* @OCLASS_STATISTIC_EXT, align 4
  store i32 %62, i32* %2, align 4
  br label %106

63:                                               ; preds = %19
  %64 = load i32, i32* @OCLASS_TSPARSER, align 4
  store i32 %64, i32* %2, align 4
  br label %106

65:                                               ; preds = %19
  %66 = load i32, i32* @OCLASS_TSDICT, align 4
  store i32 %66, i32* %2, align 4
  br label %106

67:                                               ; preds = %19
  %68 = load i32, i32* @OCLASS_TSTEMPLATE, align 4
  store i32 %68, i32* %2, align 4
  br label %106

69:                                               ; preds = %19
  %70 = load i32, i32* @OCLASS_TSCONFIG, align 4
  store i32 %70, i32* %2, align 4
  br label %106

71:                                               ; preds = %19
  %72 = load i32, i32* @OCLASS_ROLE, align 4
  store i32 %72, i32* %2, align 4
  br label %106

73:                                               ; preds = %19
  %74 = load i32, i32* @OCLASS_DATABASE, align 4
  store i32 %74, i32* %2, align 4
  br label %106

75:                                               ; preds = %19
  %76 = load i32, i32* @OCLASS_TBLSPACE, align 4
  store i32 %76, i32* %2, align 4
  br label %106

77:                                               ; preds = %19
  %78 = load i32, i32* @OCLASS_FDW, align 4
  store i32 %78, i32* %2, align 4
  br label %106

79:                                               ; preds = %19
  %80 = load i32, i32* @OCLASS_FOREIGN_SERVER, align 4
  store i32 %80, i32* %2, align 4
  br label %106

81:                                               ; preds = %19
  %82 = load i32, i32* @OCLASS_USER_MAPPING, align 4
  store i32 %82, i32* %2, align 4
  br label %106

83:                                               ; preds = %19
  %84 = load i32, i32* @OCLASS_DEFACL, align 4
  store i32 %84, i32* %2, align 4
  br label %106

85:                                               ; preds = %19
  %86 = load i32, i32* @OCLASS_EXTENSION, align 4
  store i32 %86, i32* %2, align 4
  br label %106

87:                                               ; preds = %19
  %88 = load i32, i32* @OCLASS_EVENT_TRIGGER, align 4
  store i32 %88, i32* %2, align 4
  br label %106

89:                                               ; preds = %19
  %90 = load i32, i32* @OCLASS_POLICY, align 4
  store i32 %90, i32* %2, align 4
  br label %106

91:                                               ; preds = %19
  %92 = load i32, i32* @OCLASS_PUBLICATION, align 4
  store i32 %92, i32* %2, align 4
  br label %106

93:                                               ; preds = %19
  %94 = load i32, i32* @OCLASS_PUBLICATION_REL, align 4
  store i32 %94, i32* %2, align 4
  br label %106

95:                                               ; preds = %19
  %96 = load i32, i32* @OCLASS_SUBSCRIPTION, align 4
  store i32 %96, i32* %2, align 4
  br label %106

97:                                               ; preds = %19
  %98 = load i32, i32* @OCLASS_TRANSFORM, align 4
  store i32 %98, i32* %2, align 4
  br label %106

99:                                               ; preds = %19
  %100 = load i32, i32* @ERROR, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @elog(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @OCLASS_CLASS, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
