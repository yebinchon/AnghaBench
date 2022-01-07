; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_list_attributes.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_list_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: %s(%s), ports: %d (cpu @ %d), vlans: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"     --switch\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"     --vlan\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"     --port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*)* @list_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_attributes(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %3 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %4 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %7 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %10 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %13 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %16 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %19 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %5, i8* %8, i8* %11, i32 %14, i32 %17, i32 %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %24 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @print_attrs(i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %29 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @print_attrs(i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %34 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @print_attrs(i32 %35)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_attrs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
