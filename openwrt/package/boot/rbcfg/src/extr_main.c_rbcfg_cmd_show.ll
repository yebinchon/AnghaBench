; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_cmd_show.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_cmd_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_env = type { i8* }

@RB_ERR_INVALID = common dso_local global i32 0, align 4
@rbcfg_envs = common dso_local global %struct.rbcfg_env* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @rbcfg_cmd_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_cmd_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rbcfg_env*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (...) @usage()
  %13 = load i32, i32* @RB_ERR_INVALID, align 4
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_envs, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.rbcfg_env* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_envs, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %21, i64 %23
  store %struct.rbcfg_env* %24, %struct.rbcfg_env** %7, align 8
  %25 = load %struct.rbcfg_env*, %struct.rbcfg_env** %7, align 8
  %26 = call i8* @rbcfg_env_get(%struct.rbcfg_env* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* @stdout, align 4
  %31 = load %struct.rbcfg_env*, %struct.rbcfg_env** %7, align 8
  %32 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %29, %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %15

40:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rbcfg_env*) #1

declare dso_local i8* @rbcfg_env_get(%struct.rbcfg_env*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
