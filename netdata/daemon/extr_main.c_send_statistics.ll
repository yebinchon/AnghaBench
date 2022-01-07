; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_send_statistics.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_send_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@send_statistics.as_script = internal global i8* null, align 8
@netdata_anonymous_statistics_enabled = common dso_local global i32 0, align 4
@netdata_configured_user_config_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c".opt-out-from-anonymous-statistics\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@R_OK = common dso_local global i32 0, align 4
@netdata_configured_primary_plugins_dir = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"anonymous-statistics.sh\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Anonymous statistics script %s not found.\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s '%s' '%s' '%s'\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_statistics(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [101 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @netdata_anonymous_statistics_enabled, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %65

14:                                               ; preds = %3
  %15 = load i8*, i8** @netdata_configured_user_config_dir, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @strlen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = mul i64 1, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @mallocz(i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** @netdata_configured_user_config_dir, align 8
  %26 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @R_OK, align 4
  %29 = call i64 @access(i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %14
  %35 = load i8*, i8** @netdata_configured_primary_plugins_dir, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = mul i64 1, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @mallocz(i32 %42)
  store i8* %43, i8** @send_statistics.as_script, align 8
  %44 = load i8*, i8** @send_statistics.as_script, align 8
  %45 = load i8*, i8** @netdata_configured_primary_plugins_dir, align 8
  %46 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** @send_statistics.as_script, align 8
  %48 = load i32, i32* @R_OK, align 4
  %49 = call i64 @access(i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %34
  store i32 0, i32* @netdata_anonymous_statistics_enabled, align 4
  %55 = load i8*, i8** @send_statistics.as_script, align 8
  %56 = call i32 @info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** @send_statistics.as_script, align 8
  %58 = call i32 @freez(i8* %57)
  br label %60

59:                                               ; preds = %34
  store i32 1, i32* @netdata_anonymous_statistics_enabled, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %62

61:                                               ; preds = %14
  store i32 0, i32* @netdata_anonymous_statistics_enabled, align 4
  store i8* null, i8** @send_statistics.as_script, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @freez(i8* %63)
  br label %65

65:                                               ; preds = %62, %3
  %66 = load i32, i32* @netdata_anonymous_statistics_enabled, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %124

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %124

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = add nsw i32 %83, %85
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = add nsw i32 %86, %88
  %90 = load i8*, i8** @send_statistics.as_script, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = add nsw i32 %89, %91
  %93 = add nsw i32 %92, 10
  %94 = sext i32 %93 to i64
  %95 = mul i64 1, %94
  %96 = trunc i64 %95 to i32
  %97 = call i8* @mallocz(i32 %96)
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** @send_statistics.as_script, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %99, i8* %100, i8* %101, i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %8, align 8
  %107 = call i32* @mypopen(i8* %106, i32* %9)
  store i32* %107, i32** %10, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %81
  br label %111

111:                                              ; preds = %116, %110
  %112 = getelementptr inbounds [101 x i8], [101 x i8]* %11, i64 0, i64 0
  %113 = load i32*, i32** %10, align 8
  %114 = call i32* @fgets(i8* %112, i32 100, i32* %113)
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %111

117:                                              ; preds = %111
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @mypclose(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %81
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @freez(i8* %122)
  br label %124

124:                                              ; preds = %121, %72, %68
  ret void
}

declare dso_local i8* @mallocz(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32* @mypopen(i8*, i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @mypclose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
