; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_load.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_config = type { i32 }
%struct.config_pair = type { i32, i8*, i32 }
%struct.config_option = type { i64, i32, i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"config_load() failed to open file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"error on line %d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"unrecognized option '%s' on line %d: %s\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TYPE_INT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"expected a number on line %d: %s=\22%s\22\0A\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"overflow on line %d: %s=\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap_config*, i8*)* @config_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_load(%struct.idmap_config* %0, i8* %1) #0 {
  %3 = alloca %struct.idmap_config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.config_pair, align 8
  %9 = alloca %struct.config_option*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.idmap_config* %0, %struct.idmap_config** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @NO_ERROR, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %128

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %124, %48, %20
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @fgets(i8* %22, i32 1024, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %125

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %35, %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %30

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  br label %21

49:                                               ; preds = %43
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %51 = call i32 @config_parse_pair(i8* %50, %struct.config_pair* %8)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %57 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %55, i8* %56)
  br label %125

58:                                               ; preds = %49
  %59 = call i32 @config_find_option(%struct.config_pair* %8, %struct.config_option** %9)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %67 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i8* %66)
  %68 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %68, i32* %11, align 4
  br label %125

69:                                               ; preds = %58
  %70 = load %struct.config_option*, %struct.config_option** %9, align 8
  %71 = getelementptr inbounds %struct.config_option, %struct.config_option* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TYPE_INT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.idmap_config*, %struct.idmap_config** %3, align 8
  %79 = bitcast %struct.idmap_config* %78 to i8*
  %80 = load %struct.config_option*, %struct.config_option** %9, align 8
  %81 = getelementptr inbounds %struct.config_option, %struct.config_option* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = bitcast i8* %84 to i32*
  %86 = call i32 @parse_uint(i8* %77, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %92, i8* %94)
  br label %125

96:                                               ; preds = %75
  br label %124

97:                                               ; preds = %69
  %98 = load %struct.idmap_config*, %struct.idmap_config** %3, align 8
  %99 = bitcast %struct.idmap_config* %98 to i8*
  %100 = load %struct.config_option*, %struct.config_option** %9, align 8
  %101 = getelementptr inbounds %struct.config_option, %struct.config_option* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load %struct.config_option*, %struct.config_option** %9, align 8
  %106 = getelementptr inbounds %struct.config_option, %struct.config_option* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @StringCchCopyNA(i8* %104, i32 %107, i8* %109, i32 %111)
  %113 = call i64 @FAILED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %97
  %116 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %8, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %119, i8* %121)
  br label %125

123:                                              ; preds = %97
  br label %124

124:                                              ; preds = %123, %96
  br label %21

125:                                              ; preds = %115, %88, %62, %54, %21
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @fclose(i32* %126)
  br label %128

128:                                              ; preds = %125, %17
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @config_parse_pair(i8*, %struct.config_pair*) #1

declare dso_local i32 @config_find_option(%struct.config_pair*, %struct.config_option**) #1

declare dso_local i32 @parse_uint(i8*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @StringCchCopyNA(i8*, i32, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
