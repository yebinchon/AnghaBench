; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_help.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8 }

@OPT_HELP_STR = common dso_local global i64 0, align 8
@OPT_MORE_STR = common dso_local global i64 0, align 8
@MAX_OPT_HELP_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@OPT_SECTION_STR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opt_help(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [81 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 5, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OPT_HELP_STR, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  br label %16

16:                                               ; preds = %64, %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OPT_MORE_STR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %64

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @strlen(i64 %31)
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 2, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 45
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = call i64 @valtype2param(%struct.TYPE_5__* %41)
  %43 = call i64 @strlen(i64 %42)
  %44 = add nsw i64 1, %43
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %40, %28
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MAX_OPT_HELP_WIDTH, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %53, %49
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 81
  %62 = zext i1 %61 to i32
  %63 = call i32 @OPENSSL_assert(i32 %62)
  br label %64

64:                                               ; preds = %59, %27
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 1
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %3, align 8
  br label %16

67:                                               ; preds = %16
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32, i32* @prog, align 4
  %72 = call i32 @opt_printf_stderr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OPT_SECTION_STR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @prog, align 4
  %81 = call i32 @opt_printf_stderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %70
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %3, align 8
  br label %85

85:                                               ; preds = %94, %83
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @opt_print(%struct.TYPE_5__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 1
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %3, align 8
  br label %85

97:                                               ; preds = %85
  ret void
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @valtype2param(%struct.TYPE_5__*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @opt_printf_stderr(i8*, i32) #1

declare dso_local i32 @opt_print(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
