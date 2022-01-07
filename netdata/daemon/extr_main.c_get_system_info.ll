; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_get_system_info.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_get_system_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdhost_system_info = type { i32 }

@netdata_configured_primary_plugins_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"system-info.sh\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"System info script %s not found.\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Executing %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unexpected environment variable %s=%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_system_info(%struct.rrdhost_system_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rrdhost_system_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [201 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [51 x i8], align 16
  %12 = alloca [101 x i8], align 16
  store %struct.rrdhost_system_info* %0, %struct.rrdhost_system_info** %3, align 8
  %13 = load i8*, i8** @netdata_configured_primary_plugins_dir, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = mul i64 1, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8* @mallocz(i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** @netdata_configured_primary_plugins_dir, align 8
  %24 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @R_OK, align 4
  %27 = call i64 @access(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @freez(i8* %35)
  store i32 1, i32* %2, align 4
  br label %121

37:                                               ; preds = %1
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call i32* @mypopen(i8* %40, i32* %5)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %118

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %113, %44
  %46 = getelementptr inbounds [201 x i8], [201 x i8]* %7, i64 0, i64 0
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @fgets(i8* %46, i32 200, i32* %47)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %114

50:                                               ; preds = %45
  %51 = getelementptr inbounds [201 x i8], [201 x i8]* %7, i64 0, i64 0
  store i8* %51, i8** %8, align 8
  %52 = getelementptr inbounds [201 x i8], [201 x i8]* %7, i64 0, i64 0
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %65, %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 61
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  br label %53

68:                                               ; preds = %63
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 61
  br i1 %72, label %73, label %113

73:                                               ; preds = %68
  %74 = load i8*, i8** %9, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %80, %73
  %89 = getelementptr inbounds [51 x i8], [51 x i8]* %11, i64 0, i64 0
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @snprintfz(i8* %89, i32 50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds [101 x i8], [101 x i8]* %12, i64 0, i64 0
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @snprintfz(i8* %92, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %3, align 8
  %96 = getelementptr inbounds [51 x i8], [51 x i8]* %11, i64 0, i64 0
  %97 = getelementptr inbounds [101 x i8], [101 x i8]* %12, i64 0, i64 0
  %98 = call i32 @rrdhost_set_system_info_variable(%struct.rrdhost_system_info* %95, i8* %96, i8* %97)
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %88
  %102 = getelementptr inbounds [51 x i8], [51 x i8]* %11, i64 0, i64 0
  %103 = getelementptr inbounds [101 x i8], [101 x i8]* %12, i64 0, i64 0
  %104 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %102, i8* %103)
  br label %112

105:                                              ; preds = %88
  %106 = getelementptr inbounds [51 x i8], [51 x i8]* %11, i64 0, i64 0
  %107 = getelementptr inbounds [101 x i8], [101 x i8]* %12, i64 0, i64 0
  %108 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %106, i8* %107)
  %109 = getelementptr inbounds [51 x i8], [51 x i8]* %11, i64 0, i64 0
  %110 = getelementptr inbounds [101 x i8], [101 x i8]* %12, i64 0, i64 0
  %111 = call i32 @setenv(i8* %109, i8* %110, i32 1)
  br label %112

112:                                              ; preds = %105, %101
  br label %113

113:                                              ; preds = %112, %68
  br label %45

114:                                              ; preds = %45
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @mypclose(i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %37
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @freez(i8* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %32
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i8* @mallocz(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @info(i8*, i8*, ...) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32* @mypopen(i8*, i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #1

declare dso_local i32 @rrdhost_set_system_info_variable(%struct.rrdhost_system_info*, i8*, i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @mypclose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
