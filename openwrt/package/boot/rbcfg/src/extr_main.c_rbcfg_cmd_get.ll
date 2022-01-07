; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_cmd_get.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_env = type { i32 }

@RB_ERR_NOTFOUND = common dso_local global i32 0, align 4
@RB_ERR_INVALID = common dso_local global i32 0, align 4
@rbcfg_envs = common dso_local global %struct.rbcfg_env* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @rbcfg_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_cmd_get(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rbcfg_env*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @RB_ERR_NOTFOUND, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (...) @usage()
  %15 = load i32, i32* @RB_ERR_INVALID, align 4
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_envs, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.rbcfg_env* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_envs, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %23, i64 %25
  store %struct.rbcfg_env* %26, %struct.rbcfg_env** %8, align 8
  %27 = load %struct.rbcfg_env*, %struct.rbcfg_env** %8, align 8
  %28 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i32 %29, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %46

36:                                               ; preds = %22
  %37 = load %struct.rbcfg_env*, %struct.rbcfg_env** %8, align 8
  %38 = call i8* @rbcfg_env_get(%struct.rbcfg_env* %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @stdout, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %17

49:                                               ; preds = %45, %17
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rbcfg_env*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @rbcfg_env_get(%struct.rbcfg_env*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
