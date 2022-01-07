; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_grepable_out_banner.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_grepable_out_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Host: %u.%u.%u.%u ()\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09Port: %u\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09Service: %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09Banner: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i32, i32, i32, i32, i32, i32, i8*, i32)* @grepable_out_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grepable_out_banner(%struct.Output* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9) #0 {
  %11 = alloca %struct.Output*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [4096 x i8], align 16
  store %struct.Output* %0, %struct.Output** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load i32, i32* %18, align 4
  %23 = call i32 @UNUSEDPARM(i32 %22)
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @UNUSEDPARM(i32 %24)
  %26 = load %struct.Output*, %struct.Output** %11, align 8
  %27 = ptrtoint %struct.Output* %26 to i32
  %28 = call i32 @UNUSEDPARM(i32 %27)
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @UNUSEDPARM(i32 %29)
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %14, align 4
  %33 = lshr i32 %32, 24
  %34 = trunc i32 %33 to i8
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %14, align 4
  %37 = lshr i32 %36, 16
  %38 = trunc i32 %37 to i8
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %14, align 4
  %41 = lshr i32 %40, 8
  %42 = trunc i32 %41 to i8
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %14, align 4
  %45 = lshr i32 %44, 0
  %46 = trunc i32 %45 to i8
  %47 = zext i8 %46 to i32
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %43, i32 %47)
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i8* @masscan_app_to_string(i32 %53)
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** %19, align 8
  %57 = load i32, i32* %20, align 4
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %59 = call i32 @normalize_string(i8* %56, i32 %57, i8* %58, i32 4096)
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @masscan_app_to_string(i32) #1

declare dso_local i32 @normalize_string(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
