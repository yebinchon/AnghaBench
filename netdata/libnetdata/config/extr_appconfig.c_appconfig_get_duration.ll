; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_get_duration.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_get_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"config option '[%s].%s = %s' is configured with an valid duration\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"INTERNAL ERROR: default duration supplied for option '[%s].%s = %s' is not a valid duration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appconfig_get_duration(%struct.config* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.config* %0, %struct.config** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.config*, %struct.config** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i8* @appconfig_get(%struct.config* %12, i8* %13, i8* %14, i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %31

20:                                               ; preds = %4
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @config_parse_duration(i8* %21, i32* %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i8* %27)
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %42

31:                                               ; preds = %24, %19
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @config_parse_duration(i8* %32, i32* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i8* @appconfig_get(%struct.config*, i8*, i8*, i8*) #1

declare dso_local i32 @config_parse_duration(i8*, i32*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
