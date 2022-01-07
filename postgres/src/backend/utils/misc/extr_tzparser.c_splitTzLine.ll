; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_splitTzLine.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_splitTzLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32*, i8* }

@WHITESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"missing time zone abbreviation in time zone file \22%s\22, line %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"missing time zone offset in time zone file \22%s\22, line %d\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"invalid number for time zone offset in time zone file \22%s\22, line %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"invalid syntax in time zone file \22%s\22, line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.TYPE_3__*)* @splitTzLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitTzLine(i8* %0, i32 %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @WHITESPACE, align 4
  %23 = call i8* @strtok(i8* %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  store i32 0, i32* %5, align 4
  br label %123

30:                                               ; preds = %4
  %31 = load i8*, i8** %10, align 8
  %32 = call i8* @pstrdup(i8* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @WHITESPACE, align 4
  %36 = call i8* @strtok(i8* null, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  store i32 0, i32* %5, align 4
  br label %123

43:                                               ; preds = %30
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %58, label %96

58:                                               ; preds = %53, %48, %43
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strtol(i8* %61, i8** %12, i32 10)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = load i8*, i8** %12, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68, %58
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %74, i32 %75)
  store i32 0, i32* %5, align 4
  br label %123

77:                                               ; preds = %68
  %78 = load i32, i32* @WHITESPACE, align 4
  %79 = call i8* @strtok(i8* null, i32 %78)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i8*, i8** %14, align 8
  %84 = call i64 @pg_strcasecmp(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* @WHITESPACE, align 4
  %90 = call i8* @strtok(i8* null, i32 %89)
  store i8* %90, i8** %13, align 8
  br label %95

91:                                               ; preds = %82, %77
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load i8*, i8** %14, align 8
  store i8* %94, i8** %13, align 8
  br label %95

95:                                               ; preds = %91, %86
  br label %108

96:                                               ; preds = %53
  %97 = load i8*, i8** %11, align 8
  %98 = call i8* @pstrdup(i8* %97)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load i32, i32* @WHITESPACE, align 4
  %107 = call i8* @strtok(i8* null, i32 %106)
  store i8* %107, i8** %13, align 8
  br label %108

108:                                              ; preds = %96, %95
  %109 = load i8*, i8** %13, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  br label %123

112:                                              ; preds = %108
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 35
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i8*, i8** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %119, i32 %120)
  store i32 0, i32* %5, align 4
  br label %123

122:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %118, %111, %73, %39, %26
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @GUC_check_errmsg(i8*, i8*, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
