; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_verify_option_list_length.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_verify_option_list_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"the number of %s (%d) must be 1 or the same as the number of %s (%d)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"line %d of configuration file \22%s\22\00", align 1
@HbaFileName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i8*, i32)* @verify_option_list_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_option_list_length(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @list_length(i32* %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @list_length(i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @list_length(i32* %20)
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @list_length(i32* %22)
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %15, %5
  store i32 1, i32* %6, align 4
  br label %41

26:                                               ; preds = %19
  %27 = load i32, i32* @LOG, align 4
  %28 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @list_length(i32* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @list_length(i32* %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %32, i8* %33, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @HbaFileName, align 4
  %39 = call i32 @errcontext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = call i32 @ereport(i32 %27, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %26, %25
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @errcontext(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
