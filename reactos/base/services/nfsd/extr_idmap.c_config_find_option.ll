; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_find_option.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_option = type { i32 }
%struct.config_pair = type { i32 }

@g_options = common dso_local global %struct.config_option* null, align 8
@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_pair*, %struct.config_option**)* @config_find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_find_option(%struct.config_pair* %0, %struct.config_option** %1) #0 {
  %3 = alloca %struct.config_pair*, align 8
  %4 = alloca %struct.config_option**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.config_pair* %0, %struct.config_pair** %3, align 8
  store %struct.config_option** %1, %struct.config_option*** %4, align 8
  %8 = load %struct.config_option*, %struct.config_option** @g_options, align 8
  %9 = call i32 @ARRAYSIZE(%struct.config_option* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @ERROR_NOT_FOUND, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.config_pair*, %struct.config_pair** %3, align 8
  %17 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.config_option*, %struct.config_option** @g_options, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.config_option, %struct.config_option* %19, i64 %21
  %23 = getelementptr inbounds %struct.config_option, %struct.config_option* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @stricmp(i32 %18, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %struct.config_option*, %struct.config_option** @g_options, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.config_option, %struct.config_option* %28, i64 %30
  %32 = load %struct.config_option**, %struct.config_option*** %4, align 8
  store %struct.config_option* %31, %struct.config_option** %32, align 8
  %33 = load i32, i32* @NO_ERROR, align 4
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %11

38:                                               ; preds = %27, %11
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @ARRAYSIZE(%struct.config_option*) #1

declare dso_local i64 @stricmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
