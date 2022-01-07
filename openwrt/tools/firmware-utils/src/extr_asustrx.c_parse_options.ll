; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_asustrx.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_asustrx.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"i:o:p:v:\00", align 1
@optarg = common dso_local global i8* null, align 8
@in_path = common dso_local global i8* null, align 8
@out_path = common dso_local global i8* null, align 8
@productid = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%hu.%hu.%hu.%hu\00", align 1
@version = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Version %s doesn't match suppored 4-digits format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %37

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %36 [
    i32 105, label %13
    i32 111, label %15
    i32 112, label %17
    i32 118, label %19
  ]

13:                                               ; preds = %11
  %14 = load i8*, i8** @optarg, align 8
  store i8* %14, i8** @in_path, align 8
  br label %36

15:                                               ; preds = %11
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @out_path, align 8
  br label %36

17:                                               ; preds = %11
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @productid, align 8
  br label %36

19:                                               ; preds = %11
  %20 = load i8*, i8** @optarg, align 8
  %21 = load i32*, i32** @version, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32*, i32** @version, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32*, i32** @version, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32*, i32** @version, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32* %24, i32* %26, i32* %28)
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %19
  br label %36

36:                                               ; preds = %11, %35, %17, %15, %13
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
