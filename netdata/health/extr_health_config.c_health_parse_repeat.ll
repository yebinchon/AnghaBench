; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_repeat.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*, i64*, i64*)* @health_parse_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @health_parse_repeat(i64 %0, i8* %1, i8* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %135, %5
  %17 = load i8*, i8** %12, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %136

20:                                               ; preds = %16
  %21 = load i8*, i8** %12, align 8
  store i8* %21, i8** %13, align 8
  br label %22

22:                                               ; preds = %35, %20
  %23 = load i8*, i8** %12, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isspace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ false, %22 ], [ %32, %27 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %12, align 8
  br label %22

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isspace(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %12, align 8
  store i8 0, i8* %52, align 1
  br label %39

54:                                               ; preds = %49
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %136

59:                                               ; preds = %54
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %14, align 8
  br label %61

61:                                               ; preds = %74, %59
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @isspace(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i1 [ false, %61 ], [ %71, %66 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %12, align 8
  br label %61

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i8*, i8** %12, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** %12, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isspace(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ false, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %12, align 8
  store i8 0, i8* %91, align 1
  br label %78

93:                                               ; preds = %88
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @strcasecmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i64*, i64** %10, align 8
  store i64 0, i64* %98, align 8
  %99 = load i64*, i64** %11, align 8
  store i64 0, i64* %99, align 8
  store i32 1, i32* %6, align 4
  br label %137

100:                                              ; preds = %93
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @strcasecmp(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %14, align 8
  %106 = load i64*, i64** %10, align 8
  %107 = bitcast i64* %106 to i32*
  %108 = call i32 @config_parse_duration(i8* %105, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load i64, i64* %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = call i32 @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %111, i8* %112, i8* %113, i8* %114)
  br label %116

116:                                              ; preds = %110, %104
  br label %135

117:                                              ; preds = %100
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @strcasecmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %14, align 8
  %123 = load i64*, i64** %11, align 8
  %124 = bitcast i64* %123 to i32*
  %125 = call i32 @config_parse_duration(i8* %122, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %7, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %128, i8* %129, i8* %130, i8* %131)
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134, %116
  br label %16

136:                                              ; preds = %58, %16
  store i32 1, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %97
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @config_parse_duration(i8*, i32*) #1

declare dso_local i32 @error(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
