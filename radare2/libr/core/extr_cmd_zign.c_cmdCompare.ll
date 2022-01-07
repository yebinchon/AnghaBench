; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmdCompare.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmdCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"zign.diff.bthresh\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"zign.diff.gthresh\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"usage: zc other_space\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"usage: zcn other_space\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"usage: zcn! other_space\0A\00", align 1
@help_msg_zc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"usage: zc[?n!] other_space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmdCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdCompare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @r_config_get(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @r_config_get(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32* @r_sign_options_new(i8* %20, i8* %21)
  store i32* %22, i32** %9, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %89 [
    i32 32, label %26
    i32 110, label %41
    i32 63, label %85
  ]

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %91

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @r_sign_diff(i32 %36, i32* %37, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %91

41:                                               ; preds = %2
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %82 [
    i32 32, label %46
    i32 33, label %61
  ]

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

53:                                               ; preds = %46
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = call i32 @r_sign_diff_by_name(i32 %56, i32* %57, i8* %59, i32 0)
  store i32 %60, i32* %5, align 4
  br label %84

61:                                               ; preds = %41
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67, %61
  %73 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

74:                                               ; preds = %67
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = call i32 @r_sign_diff_by_name(i32 %77, i32* %78, i8* %80, i32 1)
  store i32 %81, i32* %5, align 4
  br label %84

82:                                               ; preds = %41
  %83 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %74, %72, %53, %51
  br label %91

85:                                               ; preds = %2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = load i32, i32* @help_msg_zc, align 4
  %88 = call i32 @r_core_cmd_help(%struct.TYPE_3__* %86, i32 %87)
  br label %91

89:                                               ; preds = %2
  %90 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %85, %84, %33, %31
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @r_sign_options_free(i32* %92)
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32* @r_sign_options_new(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_sign_diff(i32, i32*, i8*) #1

declare dso_local i32 @r_sign_diff_by_name(i32, i32*, i8*, i32) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @r_sign_options_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
