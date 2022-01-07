; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_hello_file.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_hello_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: bad index\0A\00", align 1
@CONF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"[FAILED] could not read hello file\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"hello-string[%u]\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_hello_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_hello_file(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16384 x i8], align 16
  %12 = alloca [16384 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [64 x i8], align 16
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %17 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @ARRAY(i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp uge i32 %24, 65536
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @CONF_ERR, align 4
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @fopen_s(i32** %9, i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @perror(i8* %38)
  %40 = load i32, i32* @CONF_ERR, align 4
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %31
  %42 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i64 0, i64 0
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @fread(i8* %42, i32 1, i32 16384, i32* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @perror(i8* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load i32, i32* @CONF_ERR, align 4
  store i32 %53, i32* %4, align 4
  br label %71

54:                                               ; preds = %41
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = getelementptr inbounds [16384 x i8], [16384 x i8]* %12, i64 0, i64 0
  %58 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i64 0, i64 0
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @base64_encode(i8* %57, i32 16383, i8* %58, i64 %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds [16384 x i8], [16384 x i8]* %12, i64 0, i64 %61
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @sprintf_s(i8* %63, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %68 = getelementptr inbounds [16384 x i8], [16384 x i8]* %12, i64 0, i64 0
  %69 = call i32 @masscan_set_parameter(%struct.Masscan* %66, i8* %67, i8* %68)
  %70 = load i32, i32* @CONF_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %54, %47, %36, %26, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ARRAY(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fopen_s(i32**, i8*, i8*) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @base64_encode(i8*, i32, i8*, i64) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32) #1

declare dso_local i32 @masscan_set_parameter(%struct.Masscan*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
