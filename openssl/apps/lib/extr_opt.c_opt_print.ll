; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_print.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8, i64* }

@.str = private unnamed_addr constant [21 x i8] c"(No additional info)\00", align 1
@OPT_HELP_STR = common dso_local global i64* null, align 8
@prog = common dso_local global i32 0, align 4
@OPT_SECTION_STR = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OPT_MORE_STR = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@MAX_OPT_HELP_WIDTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opt_print(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [81 x i8], align 16
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i8* [ %15, %12 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %16 ]
  store i8* %18, i8** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i64*, i64** @OPT_HELP_STR, align 8
  %23 = icmp eq i64* %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @prog, align 4
  %27 = call i32 (i8*, ...) @opt_printf_stderr(i8* %25, i32 %26)
  br label %120

28:                                               ; preds = %17
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i64*, i64** @OPT_SECTION_STR, align 8
  %33 = icmp eq i64* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @prog, align 4
  %38 = call i32 (i8*, ...) @opt_printf_stderr(i8* %36, i32 %37)
  br label %120

39:                                               ; preds = %28
  %40 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i8 signext 32, i32 80)
  %42 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 80
  store i8 0, i8* %42, align 16
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64*, i64** @OPT_MORE_STR, align 8
  %47 = icmp eq i64* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 0
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %53)
  br label %120

55:                                               ; preds = %39
  %56 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 0
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 32, i8* %57, align 1
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  store i8 45, i8* %59, align 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = call i32 @strcpy(i8* %68, i64* %71)
  %73 = call i32 @strlen(i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  br label %80

77:                                               ; preds = %55
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  store i8 42, i8* %78, align 1
  br label %80

80:                                               ; preds = %77, %67
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i8, i8* %82, align 8
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 45
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  store i8 32, i8* %87, align 1
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = call i64* @valtype2param(%struct.TYPE_4__* %90)
  %92 = call i32 @strcpy(i8* %89, i64* %91)
  %93 = call i32 @strlen(i32 %92)
  %94 = load i8*, i8** %7, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %7, align 8
  br label %97

97:                                               ; preds = %86, %80
  %98 = load i8*, i8** %7, align 8
  store i8 32, i8* %98, align 1
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 0
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @MAX_OPT_HELP_WIDTH, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load i8*, i8** %7, align 8
  store i8 0, i8* %108, align 1
  %109 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 0
  %110 = call i32 (i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  %111 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 0
  %112 = call i32 @memset(i8* %111, i8 signext 32, i32 81)
  br label %113

113:                                              ; preds = %107, %97
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 %115
  store i8 0, i8* %116, align 1
  %117 = getelementptr inbounds [81 x i8], [81 x i8]* %6, i64 0, i64 0
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 (i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %113, %48, %34, %24
  ret void
}

declare dso_local i32 @opt_printf_stderr(i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i64*) #1

declare dso_local i64* @valtype2param(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
