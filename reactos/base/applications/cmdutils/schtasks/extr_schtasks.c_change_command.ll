; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_change_command.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_change_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@tn_optW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Missing /tn value\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Duplicated /tn argument\0A\00", align 1
@enable_optW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@tr_optW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing /tr value\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unsupported /tr option %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unsupported arguments %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Missing /tn option\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Missing change options\0A\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"put_Enabled failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @change_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_command(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %7, align 8
  store i32* null, i32** %8, align 8
  br label %13

13:                                               ; preds = %86, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  %17 = load i32**, i32*** %5, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @tn_optW, align 4
  %21 = call i32 @strcmpiW(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %122

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %122

33:                                               ; preds = %28
  %34 = load i32**, i32*** %5, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 2
  store i32 %38, i32* %4, align 4
  %39 = load i32**, i32*** %5, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 2
  store i32** %40, i32*** %5, align 8
  br label %86

41:                                               ; preds = %16
  %42 = load i32**, i32*** %5, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @enable_optW, align 4
  %46 = call i32 @strcmpiW(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* @TRUE, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %6, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = load i32**, i32*** %5, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i32 1
  store i32** %54, i32*** %5, align 8
  br label %85

55:                                               ; preds = %41
  %56 = load i32**, i32*** %5, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @tr_optW, align 4
  %60 = call i32 @strcmpiW(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %122

67:                                               ; preds = %62
  %68 = load i32**, i32*** %5, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @debugstr_w(i32* %70)
  %72 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %6, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %74, 2
  store i32 %75, i32* %4, align 4
  %76 = load i32**, i32*** %5, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 2
  store i32** %77, i32*** %5, align 8
  br label %84

78:                                               ; preds = %55
  %79 = load i32**, i32*** %5, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @debugstr_w(i32* %81)
  %83 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  store i32 1, i32* %3, align 4
  br label %122

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %48
  br label %86

86:                                               ; preds = %85, %33
  br label %13

87:                                               ; preds = %13
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %122

92:                                               ; preds = %87
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %122

97:                                               ; preds = %92
  %98 = load i32*, i32** %8, align 8
  %99 = call i32* @get_registered_task(i32* %98)
  store i32* %99, i32** %9, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %122

103:                                              ; preds = %97
  %104 = load i64, i64* %7, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* @VARIANT_TRUE, align 4
  %109 = call i32 @IRegisteredTask_put_Enabled(i32* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @IRegisteredTask_Release(i32* %114)
  %116 = load i32, i32* %10, align 4
  %117 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  store i32 1, i32* %3, align 4
  br label %122

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %103
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @IRegisteredTask_Release(i32* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %113, %102, %95, %90, %78, %65, %31, %26
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @strcmpiW(i32*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32* @get_registered_task(i32*) #1

declare dso_local i32 @IRegisteredTask_put_Enabled(i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IRegisteredTask_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
