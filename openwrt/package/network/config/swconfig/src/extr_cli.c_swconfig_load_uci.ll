; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_swconfig_load_uci.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_swconfig_load_uci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i8* }
%struct.uci_context = type { i32 }
%struct.uci_package = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load config file: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to apply configuration for switch '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*, i8*)* @swconfig_load_uci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swconfig_load_uci(%struct.switch_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uci_context*, align 8
  %6 = alloca %struct.uci_package*, align 8
  %7 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.uci_package* null, %struct.uci_package** %6, align 8
  store i32 -1, i32* %7, align 4
  %8 = call %struct.uci_context* (...) @uci_alloc_context()
  store %struct.uci_context* %8, %struct.uci_context** %5, align 8
  %9 = load %struct.uci_context*, %struct.uci_context** %5, align 8
  %10 = icmp ne %struct.uci_context* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  ret void

12:                                               ; preds = %2
  %13 = load %struct.uci_context*, %struct.uci_context** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @uci_load(%struct.uci_context* %13, i8* %14, %struct.uci_package** %6)
  %16 = load %struct.uci_package*, %struct.uci_package** %6, align 8
  %17 = icmp ne %struct.uci_package* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.uci_context*, %struct.uci_context** %5, align 8
  %20 = call i32 @uci_perror(%struct.uci_context* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %34

21:                                               ; preds = %12
  %22 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %23 = load %struct.uci_package*, %struct.uci_package** %6, align 8
  %24 = call i32 @swlib_apply_from_uci(%struct.switch_dev* %22, %struct.uci_package* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %30 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.uci_context*, %struct.uci_context** %5, align 8
  %36 = call i32 @uci_free_context(%struct.uci_context* %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable
}

declare dso_local %struct.uci_context* @uci_alloc_context(...) #1

declare dso_local i32 @uci_load(%struct.uci_context*, i8*, %struct.uci_package**) #1

declare dso_local i32 @uci_perror(%struct.uci_context*, i8*) #1

declare dso_local i32 @swlib_apply_from_uci(%struct.switch_dev*, %struct.uci_package*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uci_free_context(%struct.uci_context*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
