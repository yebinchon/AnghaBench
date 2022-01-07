; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/extr_charts2json.c_get_release_channel.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/extr_charts2json.c_get_release_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_release_channel.use_stable = internal global i32 -1, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s/.environment\00", align 1
@netdata_configured_user_config_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"'\22\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"RELEASE_CHANNEL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stable\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nightly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_release_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_release_channel() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @get_release_channel.use_stable, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %68

7:                                                ; preds = %0
  %8 = load i32, i32* @FILENAME_MAX, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @FILENAME_MAX, align 4
  %14 = load i32, i32* @netdata_configured_user_config_dir, align 4
  %15 = call i32 @snprintfz(i8* %12, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %17 = call i32* @procfile_open(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  store i32 1, i32* @get_release_channel.use_stable, align 4
  br label %66

21:                                               ; preds = %7
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @procfile_set_quotes(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @procfile_readall(i32* %24)
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 1, i32* @get_release_channel.use_stable, align 4
  br label %65

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @procfile_lines(i32* %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @procfile_linewords(i32* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %55

41:                                               ; preds = %35
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @procfile_lineword(i32* %42, i32 %43, i32 0)
  %45 = call i32 @strcmp(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @procfile_lineword(i32* %48, i32 %49, i32 1)
  %51 = call i32 @strcmp(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 1, i32* @get_release_channel.use_stable, align 4
  br label %58

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %30

58:                                               ; preds = %53, %30
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @procfile_close(i32* %59)
  %61 = load i32, i32* @get_release_channel.use_stable, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* @get_release_channel.use_stable, align 4
  br label %64

64:                                               ; preds = %63, %58
  br label %65

65:                                               ; preds = %64, %28
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %68

68:                                               ; preds = %66, %0
  %69 = load i32, i32* @get_release_channel.use_stable, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  ret i8* %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #2

declare dso_local i32* @procfile_open(i8*, i8*, i32) #2

declare dso_local i32 @procfile_set_quotes(i32*, i8*) #2

declare dso_local i32* @procfile_readall(i32*) #2

declare dso_local i32 @procfile_lines(i32*) #2

declare dso_local i32 @procfile_linewords(i32*, i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #2

declare dso_local i32 @procfile_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
