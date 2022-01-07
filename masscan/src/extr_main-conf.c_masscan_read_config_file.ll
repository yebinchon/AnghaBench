; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_read_config_file.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_read_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cwd = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @masscan_read_config_file(%struct.Masscan* %0, i8* %1) #0 {
  %3 = alloca %struct.Masscan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [65536 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @fopen_s(i32** %5, i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @perror(i8* %16)
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %19 = call i32 @getcwd(i8* %18, i32 512)
  %20 = load i32, i32* @stderr, align 4
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %67

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %52, %51, %44, %23
  %25 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @fgets(i8* %25, i32 65536, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %31 = call i32 @trim(i8* %30, i32 65536)
  %32 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = call i64 @ispunct(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %29
  br label %24

45:                                               ; preds = %39
  %46 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  store i8* %46, i8** %9, align 8
  %47 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %48 = call i8* @strchr(i8* %47, i8 signext 61)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %24

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @trim(i8* %56, i32 65536)
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @trim(i8* %58, i32 65536)
  %60 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @masscan_set_parameter(%struct.Masscan* %60, i8* %61, i8* %62)
  br label %24

64:                                               ; preds = %24
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @fclose(i32* %65)
  br label %67

67:                                               ; preds = %64, %15
  ret void
}

declare dso_local i64 @fopen_s(i32**, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @getcwd(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @trim(i8*, i32) #1

declare dso_local i64 @ispunct(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @masscan_set_parameter(%struct.Masscan*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
