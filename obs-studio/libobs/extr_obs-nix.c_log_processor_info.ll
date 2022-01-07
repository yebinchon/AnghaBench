; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_log_processor_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_log_processor_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"model name\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"physical id\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cpu MHz\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"CPU Name: %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"CPU Speed: %sMHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_processor_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_processor_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dstr, align 8
  %7 = alloca %struct.dstr, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %116

15:                                               ; preds = %0
  %16 = call i32 @dstr_init(%struct.dstr* %6)
  %17 = call i32 @dstr_init(%struct.dstr* %7)
  br label %18

18:                                               ; preds = %108, %80, %61, %37, %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @getline(i8** %3, i64* %4, i32* %19)
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %109

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %26
  br label %18

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @dstr_copy(%struct.dstr* %6, i8* %39)
  %41 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @dstr_resize(%struct.dstr* %6, i64 %43)
  %45 = call i32 @dstr_depad(%struct.dstr* %6)
  br label %46

46:                                               ; preds = %38, %22
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %3, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 58)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %50
  br label %18

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @atoi(i8* %63)
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %62, %46
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 58)
  store i8* %71, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %69
  br label %18

81:                                               ; preds = %74
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @dstr_copy(%struct.dstr* %7, i8* %82)
  %84 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  %87 = call i32 @dstr_resize(%struct.dstr* %7, i64 %86)
  %88 = call i32 @dstr_depad(%struct.dstr* %7)
  br label %89

89:                                               ; preds = %81, %65
  %90 = load i8*, i8** %3, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* %2, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %1, align 4
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* @LOG_INFO, align 4
  %101 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @blog(i32 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @LOG_INFO, align 4
  %105 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @blog(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %98, %94, %89
  br label %18

109:                                              ; preds = %18
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @fclose(i32* %110)
  %112 = call i32 @dstr_free(%struct.dstr* %6)
  %113 = call i32 @dstr_free(%struct.dstr* %7)
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @free(i8* %114)
  br label %116

116:                                              ; preds = %109, %14
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_resize(%struct.dstr*, i64) #1

declare dso_local i32 @dstr_depad(%struct.dstr*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
