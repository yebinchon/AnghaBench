; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_format_error.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_format_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@OPT_FMT_PEMDER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: Bad format \22%s\22; must be pem or der\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Bad format \22%s\22; must be one of:\0A\00", align 1
@formats = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_format_error(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @OPT_FMT_PEMDER, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @prog, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, i64, ...) @opt_printf_stderr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %11, i8* %12)
  br label %42

14:                                               ; preds = %2
  %15 = load i32, i32* @prog, align 4
  %16 = sext i32 %15 to i64
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (i8*, i64, ...) @opt_printf_stderr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %16, i8* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %5, align 8
  br label %20

20:                                               ; preds = %38, %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %26, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, i64, ...) @opt_printf_stderr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 1
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %5, align 8
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %9
  ret i32 0
}

declare dso_local i32 @opt_printf_stderr(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
